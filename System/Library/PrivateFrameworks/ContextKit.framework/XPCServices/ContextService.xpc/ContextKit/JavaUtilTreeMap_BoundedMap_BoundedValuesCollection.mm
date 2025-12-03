@interface JavaUtilTreeMap_BoundedMap_BoundedValuesCollection
- (BOOL)isEmpty;
- (JavaUtilTreeMap_BoundedMap_BoundedValuesCollection)initWithJavaUtilTreeMap_BoundedMap:(id)map;
- (id)iterator;
- (int)size;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
@end

@implementation JavaUtilTreeMap_BoundedMap_BoundedValuesCollection

- (int)size
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak size];
}

- (BOOL)isEmpty
{
  Weak = objc_loadWeak(&self->this$0_);

  return [Weak isEmpty];
}

- (id)iterator
{
  Weak = objc_loadWeak(&self->this$0_);
  v4 = sub_1001DFD9C(Weak, 1);
  v5 = [JavaUtilTreeMap_BoundedMap_BoundedValuesCollection__1 alloc];
  sub_1001E3060(v5, &self->super.super.isa, v4);

  return v5;
}

- (JavaUtilTreeMap_BoundedMap_BoundedValuesCollection)initWithJavaUtilTreeMap_BoundedMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_BoundedMap_BoundedValuesCollection;
  [(JavaUtilTreeMap_BoundedMap_BoundedValuesCollection *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Weak = objc_loadWeak(&self->this$0_);
  if (!state->var0)
  {
    v10 = Weak;
    state->var3[1] = [Weak endpointWithBoolean:1];
    state->var3[2] = [v10 endpointWithBoolean:0];
  }

  v11 = *(objc_loadWeak(&self->this$0_) + 3);
  v12 = *(objc_loadWeak(&self->this$0_) + 32);

  return sub_1001DE830(v11, state, objects, count, 2, v12);
}

@end