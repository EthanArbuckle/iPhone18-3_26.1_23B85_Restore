@interface XRRecentArray
- (BOOL)containsEntry:(id)a3;
- (XRRecentArray)initWithMaximumRecentCount:(unint64_t)a3;
- (id)entries;
- (id)entryAtIndex:(unint64_t)a3;
- (unint64_t)maximumRecentCount;
- (void)addEntry:(id)a3;
- (void)removeEntry:(id)a3;
- (void)removeEntryAtIndex:(unint64_t)a3;
- (void)setMaximumRecentCount:(unint64_t)a3;
@end

@implementation XRRecentArray

- (XRRecentArray)initWithMaximumRecentCount:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = XRRecentArray;
  v4 = [(XRRecentArray *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maximumRecentCount = a3;
    v6 = objc_opt_new();
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = dispatch_semaphore_create(1);
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

- (void)setMaximumRecentCount:(unint64_t)a3
{
  dispatch_semaphore_wait(self->_lock, 0xFFFFFFFFFFFFFFFFLL);
  self->_maximumRecentCount = a3;
  v9 = objc_msgSend_count(self->_entries, v5, v6, v7, v8);
  maximumRecentCount = self->_maximumRecentCount;
  if (v9 > maximumRecentCount)
  {
    entries = self->_entries;
    v16 = objc_msgSend_count(entries, v10, v11, v12, v13);
    objc_msgSend_removeObjectsInRange_(entries, v17, maximumRecentCount, v16 - self->_maximumRecentCount, v18);
  }

  lock = self->_lock;

  dispatch_semaphore_signal(lock);
}

- (unint64_t)maximumRecentCount
{
  dispatch_semaphore_wait(self->_lock, 0xFFFFFFFFFFFFFFFFLL);
  maximumRecentCount = self->_maximumRecentCount;
  dispatch_semaphore_signal(self->_lock);
  return maximumRecentCount;
}

- (void)addEntry:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_removeObject_(self->_entries, v6, v5, v7, v8);
  objc_msgSend_insertObject_atIndex_(self->_entries, v9, v5, 0, v10);

  if (objc_msgSend_count(self->_entries, v11, v12, v13, v14) > self->_maximumRecentCount)
  {
    objc_msgSend_removeLastObject(self->_entries, v15, v16, v17, v18);
  }

  v19 = self->_lock;

  dispatch_semaphore_signal(v19);
}

- (void)removeEntry:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_removeObject_(self->_entries, v6, v5, v7, v8);

  v9 = self->_lock;

  dispatch_semaphore_signal(v9);
}

- (void)removeEntryAtIndex:(unint64_t)a3
{
  dispatch_semaphore_wait(self->_lock, 0xFFFFFFFFFFFFFFFFLL);
  if (objc_msgSend_count(self->_entries, v5, v6, v7, v8) > a3)
  {
    objc_msgSend_removeObjectAtIndex_(self->_entries, v9, a3, v10, v11);
  }

  lock = self->_lock;

  dispatch_semaphore_signal(lock);
}

- (id)entries
{
  dispatch_semaphore_wait(self->_lock, 0xFFFFFFFFFFFFFFFFLL);
  v7 = objc_msgSend_copy(self->_entries, v3, v4, v5, v6);
  dispatch_semaphore_signal(self->_lock);

  return v7;
}

- (id)entryAtIndex:(unint64_t)a3
{
  dispatch_semaphore_wait(self->_lock, 0xFFFFFFFFFFFFFFFFLL);
  if (objc_msgSend_count(self->_entries, v5, v6, v7, v8) <= a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_entries, v9, a3, v10, v11);
  }

  dispatch_semaphore_signal(self->_lock);

  return v12;
}

- (BOOL)containsEntry:(id)a3
{
  lock = self->_lock;
  v5 = a3;
  dispatch_semaphore_wait(lock, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(lock) = objc_msgSend_containsObject_(self->_entries, v6, v5, v7, v8);

  dispatch_semaphore_signal(self->_lock);
  return lock;
}

@end