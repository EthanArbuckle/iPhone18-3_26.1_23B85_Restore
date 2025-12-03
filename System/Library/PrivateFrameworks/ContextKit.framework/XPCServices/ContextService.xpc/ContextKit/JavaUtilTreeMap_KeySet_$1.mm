@interface JavaUtilTreeMap_KeySet_$1
- (JavaUtilTreeMap_KeySet_$1)initWithJavaUtilTreeMap_KeySet:(id)set withJavaUtilTreeMap_Node:(id)node;
- (id)next;
@end

@implementation JavaUtilTreeMap_KeySet_$1

- (id)next
{
  stepForward = [(JavaUtilTreeMap_MapIterator *)self stepForward];
  if (!stepForward)
  {
    JreThrowNullPointerException();
  }

  return stepForward[4];
}

- (JavaUtilTreeMap_KeySet_$1)initWithJavaUtilTreeMap_KeySet:(id)set withJavaUtilTreeMap_Node:(id)node
{
  Weak = objc_loadWeak(set + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, node);
  return self;
}

@end