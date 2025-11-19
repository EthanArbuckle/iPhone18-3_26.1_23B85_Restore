@interface OITSULRUCache
- (OITSULRUCache)initWithMaxSize:(unint64_t)a3;
- (id)description;
- (id)objectForKey:(id)a3;
- (void)dealloc;
- (void)p_removeOldestObject;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setEvictionCallbackTarget:(id)a3 selector:(SEL)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation OITSULRUCache

- (OITSULRUCache)initWithMaxSize:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = OITSULRUCache;
  v4 = [(OITSULRUCache *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mMax = a3;
    v4->mData = [[OITSUNoCopyDictionary alloc] initWithCapacity:a3];
    v5->mOrderedKeys = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  }

  return v5;
}

- (void)dealloc
{
  if (self->mCallbackTarget || self->mCallback)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSULRUCache dealloc]"];
    +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v3, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSULRUCache.m"], 49, 0, "cache callback target and selector must be clear before cache is deallocated");
    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v4.receiver = self;
  v4.super_class = OITSULRUCache;
  [(OITSULRUCache *)&v4 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = OITSULRUCache;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ ordered keys: %@, data: %@>", -[OITSULRUCache description](&v3, sel_description), self->mOrderedKeys, self->mData];
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(NSMutableArray *)self->mOrderedKeys count]>= self->mMax)
  {
    [(OITSULRUCache *)self p_removeOldestObject];
  }

  v8 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:a4];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v8];
  }

  [(OITSUNoCopyDictionary *)self->mData setObject:a3 forKey:a4];
  [(NSMutableArray *)self->mOrderedKeys addObject:a4];
}

- (void)removeObjectForKey:(id)a3
{
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [(OITSUNoCopyDictionary *)self->mData removeObjectForKey:a3];
    mOrderedKeys = self->mOrderedKeys;

    [(NSMutableArray *)mOrderedKeys removeObjectAtIndex:v6];
  }
}

- (void)removeAllObjects
{
  [(NSMutableArray *)self->mOrderedKeys removeAllObjects];
  mData = self->mData;

  [(OITSUNoCopyDictionary *)mData removeAllObjects];
}

- (id)objectForKey:(id)a3
{
  v5 = [(NSMutableArray *)self->mOrderedKeys indexOfObject:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v5;
  v8 = [(OITSUNoCopyDictionary *)self->mData objectForKey:a3];
  v9 = a3;
  [(NSMutableArray *)self->mOrderedKeys addObject:a3];
  [(NSMutableArray *)self->mOrderedKeys removeObjectAtIndex:v7];

  return v8;
}

- (void)setEvictionCallbackTarget:(id)a3 selector:(SEL)a4
{
  self->mCallbackTarget = a3;
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = 0;
  }

  self->mCallback = v4;
}

- (void)p_removeOldestObject
{
  v3 = [(NSMutableArray *)self->mOrderedKeys objectAtIndex:0];
  if (self->mCallbackTarget)
  {
    if (!self->mCallback)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OITSULRUCache p_removeOldestObject]"];
      +[OITSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](OITSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/shared/utility/TSULRUCache.m"], 148, 0, "invalid nil value for '%{public}s'", "mCallback");
      +[OITSUAssertionHandler logBacktraceThrottled];
    }

    v5 = [(OITSUNoCopyDictionary *)self->mData objectForKey:v3];
    if (self->mCallback)
    {
      mCallback = self->mCallback;
    }

    else
    {
      mCallback = 0;
    }

    [self->mCallbackTarget performSelector:mCallback withObject:v5 withObject:v3];
  }

  [(OITSUNoCopyDictionary *)self->mData removeObjectForKey:v3];
  mOrderedKeys = self->mOrderedKeys;

  [(NSMutableArray *)mOrderedKeys removeObjectAtIndex:0];
}

@end