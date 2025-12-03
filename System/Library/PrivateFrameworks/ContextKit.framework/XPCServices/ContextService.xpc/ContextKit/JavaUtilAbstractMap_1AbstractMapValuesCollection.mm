@interface JavaUtilAbstractMap_1AbstractMapValuesCollection
- (BOOL)containsWithId:(id)id;
- (JavaUtilAbstractMap_1AbstractMapValuesCollection)initWithJavaUtilAbstractMap:(id)map;
- (id)iterator;
- (int)size;
- (void)__javaClone;
@end

@implementation JavaUtilAbstractMap_1AbstractMapValuesCollection

- (int)size
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak size];
}

- (BOOL)containsWithId:(id)id
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak containsValueWithId:id];
}

- (id)iterator
{
  v3 = [JavaUtilAbstractMap_1AbstractMapValuesCollection__1 alloc];
  sub_100183F44(v3, self);

  return v3;
}

- (JavaUtilAbstractMap_1AbstractMapValuesCollection)initWithJavaUtilAbstractMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilAbstractMap_1AbstractMapValuesCollection;
  [(JavaUtilAbstractMap_1AbstractMapValuesCollection *)&v3 __javaClone];
}

@end