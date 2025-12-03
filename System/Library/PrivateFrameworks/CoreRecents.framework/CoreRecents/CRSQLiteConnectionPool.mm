@interface CRSQLiteConnectionPool
- (CRSQLiteConnectionPool)initWithDelegate:(id)delegate maxConcurrentReaders:(unint64_t)readers;
- (unint64_t)cacheSize;
- (void)checkInConnection:(id)connection;
- (void)dealloc;
- (void)flush;
- (void)setCacheSize:(unint64_t)size;
@end

@implementation CRSQLiteConnectionPool

- (CRSQLiteConnectionPool)initWithDelegate:(id)delegate maxConcurrentReaders:(unint64_t)readers
{
  v9.receiver = self;
  v9.super_class = CRSQLiteConnectionPool;
  v6 = [(CRSQLiteConnectionPool *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (!readers)
    {
      sub_100018EE8();
    }

    v6->_delegate = delegate;
    v6->_cacheLock = objc_alloc_init(NSLock);
    v7->_checkoutLock = objc_alloc_init(NSLock);
    v7->_checkoutMap = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v7->_maxConcurrentReaders = readers;
    v7->_maxConcurrentWriters = 1;
    v7->_writerSemaphore = dispatch_semaphore_create(1);
    v7->_readerSemaphore = dispatch_semaphore_create(v7->_maxConcurrentReaders);
  }

  return v7;
}

- (void)dealloc
{
  [(CRSQLiteConnectionPool *)self setCacheSize:0];

  CFRelease(self->_checkoutMap);
  dispatch_release(self->_readerSemaphore);
  dispatch_release(self->_writerSemaphore);
  v3.receiver = self;
  v3.super_class = CRSQLiteConnectionPool;
  [(CRSQLiteConnectionPool *)&v3 dealloc];
}

- (void)checkInConnection:(id)connection
{
  value = 0;
  [(NSLock *)self->_checkoutLock lock];
  if (CFDictionaryGetValueIfPresent(self->_checkoutMap, connection, &value))
  {
    v5 = value;
    CFDictionaryRemoveValue(self->_checkoutMap, connection);
  }

  [(NSLock *)self->_checkoutLock unlock];
  if (!value)
  {
    sub_100018F14();
  }

  isWriter = [value isWriter];
  [connection flush];
  [(NSLock *)self->_cacheLock lock];
  if (-[NSMutableSet count](self->_cache, "count") < self->_cacheSize && [value generation] == self->_cacheGeneration)
  {
    [(NSMutableSet *)self->_cache addObject:value];
    [(NSLock *)self->_cacheLock unlock];
    v7 = 80;
    if (isWriter)
    {
      v7 = 96;
    }

    dispatch_semaphore_signal(*(&self->super.isa + v7));
  }

  else
  {
    [(NSLock *)self->_cacheLock unlock];
    v8 = 80;
    if (isWriter)
    {
      v8 = 96;
    }

    dispatch_semaphore_signal(*(&self->super.isa + v8));
    [connection close];
  }
}

- (void)flush
{
  [(NSLock *)self->_cacheLock lock];
  if ([(NSMutableSet *)self->_cache count])
  {
    cache = self->_cache;
    self->_cache = objc_alloc_init(NSMutableSet);
  }

  else
  {
    cache = 0;
  }

  ++self->_cacheGeneration;
  [(NSLock *)self->_cacheLock unlock];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v4 = [(NSMutableSet *)cache countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(cache);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v7) "connection")];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)cache countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setCacheSize:(unint64_t)size
{
  v5 = objc_alloc_init(NSMutableSet);
  [(NSLock *)self->_cacheLock lock];
  while ([(NSMutableSet *)self->_cache count]> size)
  {
    anyObject = [(NSMutableSet *)self->_cache anyObject];
    [v5 addObject:anyObject];
    [(NSMutableSet *)self->_cache removeObject:anyObject];
  }

  if (size && !self->_cache)
  {
    self->_cache = objc_alloc_init(NSMutableSet);
  }

  self->_cacheSize = size;
  [(NSLock *)self->_cacheLock unlock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [objc_msgSend(*(*(&v11 + 1) + 8 * v10) "connection")];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)cacheSize
{
  [(NSLock *)self->_cacheLock lock];
  cacheSize = self->_cacheSize;
  [(NSLock *)self->_cacheLock unlock];
  return cacheSize;
}

@end