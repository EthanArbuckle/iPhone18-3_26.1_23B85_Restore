@interface AndroidUtilLruCache
- (id)description;
- (id)getWithId:(id)a3;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)snapshot;
- (int)createCount;
- (int)evictionCount;
- (int)hitCount;
- (int)maxSize;
- (int)missCount;
- (int)putCount;
- (int)size;
- (void)dealloc;
- (void)trimToSizeWithInt:(int)a3;
@end

@implementation AndroidUtilLruCache

- (id)getWithId:(id)a3
{
  if (!a3)
  {
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"key == null");
    objc_exception_throw(v10);
  }

  objc_sync_enter(self);
  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilLinkedHashMap *)map getWithId:a3];
  if (v6)
  {
    ++self->hitCount_;
    objc_sync_exit(self);
  }

  else
  {
    ++self->missCount_;
    objc_sync_exit(self);
    v8 = [(AndroidUtilLruCache *)self createWithId:a3];
    if (v8)
    {
      v9 = v8;
      objc_sync_enter(self);
      ++self->createCount_;
      v6 = [(JavaUtilHashMap *)self->map_ putWithId:a3 withId:v9];
      if (v6)
      {
        [(JavaUtilHashMap *)self->map_ putWithId:a3 withId:v6];
        objc_sync_exit(self);
        [(AndroidUtilLruCache *)self entryRemovedWithBoolean:0 withId:a3 withId:v9 withId:v6];
      }

      else
      {
        self->size_ += sub_10020F2A8(self, a3, v9);
        objc_sync_exit(self);
        [(AndroidUtilLruCache *)self trimToSizeWithInt:self->maxSize_];
        return v9;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  if (!a3 || !a4)
  {
    v10 = new_JavaLangNullPointerException_initWithNSString_(@"key == null || value == null");
    objc_exception_throw(v10);
  }

  objc_sync_enter(self);
  ++self->putCount_;
  self->size_ += sub_10020F2A8(self, a3, a4);
  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilHashMap *)map putWithId:a3 withId:a4];
  if (v8)
  {
    self->size_ -= sub_10020F2A8(self, a3, v8);
    objc_sync_exit(self);
    [(AndroidUtilLruCache *)self entryRemovedWithBoolean:0 withId:a3 withId:v8 withId:a4];
  }

  else
  {
    objc_sync_exit(self);
  }

  [(AndroidUtilLruCache *)self trimToSizeWithInt:self->maxSize_];
  return v8;
}

- (void)trimToSizeWithInt:(int)a3
{
  for (i = self; ; self = i)
  {
    objc_sync_enter(self);
    if (i->size_ < 0)
    {
      goto LABEL_17;
    }

    map = i->map_;
    if (!map)
    {
      JreThrowNullPointerException();
    }

    v6 = [(JavaUtilHashMap *)map isEmpty];
    size = i->size_;
    v8 = size ? v6 : 0;
    if (v8 == 1)
    {
LABEL_17:
      v14 = [-[AndroidUtilLruCache getClass](i "getClass")];
      v22 = JreStrcat("$$", v15, v16, v17, v18, v19, v20, v21, v14);
      v23 = new_JavaLangIllegalStateException_initWithNSString_(v22);
      objc_exception_throw(v23);
    }

    if (size <= a3)
    {
      break;
    }

    v9 = i->map_;
    if (!v9)
    {
      JreThrowNullPointerException();
    }

    v10 = [(JavaUtilLinkedHashMap *)v9 eldest];
    v11 = v10;
    if (!v10)
    {
      break;
    }

    v12 = [v10 getKey];
    v13 = [v11 getValue];
    [(JavaUtilHashMap *)i->map_ removeWithId:v12];
    i->size_ -= sub_10020F2A8(i, v12, v13);
    ++i->evictionCount_;
    objc_sync_exit(i);
    [(AndroidUtilLruCache *)i entryRemovedWithBoolean:1 withId:v12 withId:v13 withId:0];
  }

  objc_sync_exit(i);
}

- (id)removeWithId:(id)a3
{
  if (!a3)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"key == null");
    objc_exception_throw(v8);
  }

  objc_sync_enter(self);
  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilHashMap *)map removeWithId:a3];
  if (v6)
  {
    self->size_ -= sub_10020F2A8(self, a3, v6);
    objc_sync_exit(self);
    [(AndroidUtilLruCache *)self entryRemovedWithBoolean:0 withId:a3 withId:v6 withId:0];
  }

  else
  {
    objc_sync_exit(self);
  }

  return v6;
}

- (int)size
{
  objc_sync_enter(self);
  size = self->size_;
  objc_sync_exit(self);
  return size;
}

- (int)maxSize
{
  objc_sync_enter(self);
  maxSize = self->maxSize_;
  objc_sync_exit(self);
  return maxSize;
}

- (int)hitCount
{
  objc_sync_enter(self);
  hitCount = self->hitCount_;
  objc_sync_exit(self);
  return hitCount;
}

- (int)missCount
{
  objc_sync_enter(self);
  missCount = self->missCount_;
  objc_sync_exit(self);
  return missCount;
}

- (int)createCount
{
  objc_sync_enter(self);
  createCount = self->createCount_;
  objc_sync_exit(self);
  return createCount;
}

- (int)putCount
{
  objc_sync_enter(self);
  putCount = self->putCount_;
  objc_sync_exit(self);
  return putCount;
}

- (int)evictionCount
{
  objc_sync_enter(self);
  evictionCount = self->evictionCount_;
  objc_sync_exit(self);
  return evictionCount;
}

- (id)snapshot
{
  objc_sync_enter(self);
  v3 = new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(self->map_);
  objc_sync_exit(self);
  return v3;
}

- (id)description
{
  objc_sync_enter(self);
  v3 = 100 * self->hitCount_ / (self->missCount_ + self->hitCount_);
  v7[0] = JavaLangInteger_valueOfWithInt_(self->maxSize_);
  v7[1] = JavaLangInteger_valueOfWithInt_(self->hitCount_);
  v7[2] = JavaLangInteger_valueOfWithInt_(self->missCount_);
  v7[3] = JavaLangInteger_valueOfWithInt_(v3);
  v4 = [IOSObjectArray arrayWithObjects:v7 count:4 type:NSObject_class_()];
  v5 = NSString_formatWithNSString_withNSObjectArray_(@"LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", v4);
  objc_sync_exit(self);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AndroidUtilLruCache;
  [(AndroidUtilLruCache *)&v3 dealloc];
}

@end