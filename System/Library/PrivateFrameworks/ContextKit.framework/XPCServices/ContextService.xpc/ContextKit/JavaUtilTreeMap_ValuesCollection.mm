@interface JavaUtilTreeMap_ValuesCollection
- (JavaUtilTreeMap_ValuesCollection)initWithJavaUtilTreeMap:(id)map;
- (id)iterator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)__javaClone;
@end

@implementation JavaUtilTreeMap_ValuesCollection

- (id)iterator
{
  v3 = *(objc_loadWeak(&self->this$0_) + 4);
  if (v3)
  {
    first = [v3 first];
  }

  else
  {
    first = 0;
  }

  v5 = [JavaUtilTreeMap_ValuesCollection__1 alloc];
  Weak = objc_loadWeak(&self->this$0_);
  JreStrongAssign(&v5->super.this$0_, Weak);
  v5->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&v5->super.next_, first);

  return v5;
}

- (JavaUtilTreeMap_ValuesCollection)initWithJavaUtilTreeMap:(id)map
{
  objc_storeWeak(&self->this$0_, map);
  JavaUtilAbstractCollection_init(self, v4);
  return self;
}

- (void)__javaClone
{
  v3.receiver = self;
  v3.super_class = JavaUtilTreeMap_ValuesCollection;
  [(JavaUtilTreeMap_ValuesCollection *)&v3 __javaClone];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  Weak = objc_loadWeak(&self->this$0_);
  if (!state->var0)
  {
    v10 = Weak;
    state->var3[1] = [Weak firstNode];
    state->var3[2] = [v10 lastNode];
  }

  v11 = objc_loadWeak(&self->this$0_);

  return sub_1001DE830(v11, state, objects, count, 2, 1);
}

@end