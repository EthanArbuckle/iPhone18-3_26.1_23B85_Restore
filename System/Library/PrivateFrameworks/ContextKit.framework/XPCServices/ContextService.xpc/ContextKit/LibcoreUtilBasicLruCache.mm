@interface LibcoreUtilBasicLruCache
- (id)getWithId:(id)a3;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)snapshot;
- (void)dealloc;
- (void)evictAll;
@end

@implementation LibcoreUtilBasicLruCache

- (id)getWithId:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    v8 = new_JavaLangNullPointerException_initWithNSString_(@"key == null");
    objc_exception_throw(v8);
  }

  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  v6 = [(JavaUtilLinkedHashMap *)map getWithId:a3];
  if (!v6)
  {
    v6 = [(LibcoreUtilBasicLruCache *)self createWithId:a3];
    if (v6)
    {
      [(JavaUtilHashMap *)self->map_ putWithId:a3 withId:v6];
      sub_1001483A0(&self->super.isa, self->maxSize_);
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (id)putWithId:(id)a3 withId:(id)a4
{
  objc_sync_enter(self);
  if (!a3)
  {
    v10 = @"key == null";
    goto LABEL_8;
  }

  if (!a4)
  {
    v10 = @"value == null";
LABEL_8:
    v11 = new_JavaLangNullPointerException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  v8 = [(JavaUtilHashMap *)map putWithId:a3 withId:a4];
  sub_1001483A0(&self->super.isa, self->maxSize_);
  objc_sync_exit(self);
  return v8;
}

- (id)snapshot
{
  objc_sync_enter(self);
  v3 = new_JavaUtilLinkedHashMap_initWithJavaUtilMap_(self->map_);
  objc_sync_exit(self);
  return v3;
}

- (void)evictAll
{
  objc_sync_enter(self);
  sub_1001483A0(&self->super.isa, 0);

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreUtilBasicLruCache;
  [(LibcoreUtilBasicLruCache *)&v3 dealloc];
}

@end