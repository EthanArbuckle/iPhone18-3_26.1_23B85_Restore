@interface JavaUtilConcurrentConcurrentHashMap_BaseIterator
- (void)dealloc;
- (void)remove;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_BaseIterator

- (void)remove
{
  lastReturned = self->lastReturned_;
  if (!lastReturned)
  {
    v6 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v6);
  }

  JreStrongAssign(&self->lastReturned_, 0);
  map = self->map_;
  if (!map)
  {
    JreThrowNullPointerException();
  }

  key = lastReturned->key_;

  sub_1001B0470(map, key, 0, 0);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_BaseIterator;
  [(JavaUtilConcurrentConcurrentHashMap_Traverser *)&v3 dealloc];
}

@end