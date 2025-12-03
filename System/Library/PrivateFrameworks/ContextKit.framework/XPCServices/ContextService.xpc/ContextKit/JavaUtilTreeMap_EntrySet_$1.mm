@interface JavaUtilTreeMap_EntrySet_$1
- (JavaUtilTreeMap_EntrySet_$1)initWithJavaUtilTreeMap_EntrySet:(id)set withJavaUtilTreeMap_Node:(id)node;
@end

@implementation JavaUtilTreeMap_EntrySet_$1

- (JavaUtilTreeMap_EntrySet_$1)initWithJavaUtilTreeMap_EntrySet:(id)set withJavaUtilTreeMap_Node:(id)node
{
  Weak = objc_loadWeak(set + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, node);
  return self;
}

@end