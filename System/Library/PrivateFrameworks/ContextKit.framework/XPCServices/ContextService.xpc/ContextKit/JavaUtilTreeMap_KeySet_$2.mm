@interface JavaUtilTreeMap_KeySet_$2
- (JavaUtilTreeMap_KeySet_$2)initWithJavaUtilTreeMap_KeySet:(id)set withJavaUtilTreeMap_Node:(id)node;
- (id)next;
@end

@implementation JavaUtilTreeMap_KeySet_$2

- (id)next
{
  stepBackward = [(JavaUtilTreeMap_MapIterator *)self stepBackward];
  if (!stepBackward)
  {
    JreThrowNullPointerException();
  }

  return stepBackward[4];
}

- (JavaUtilTreeMap_KeySet_$2)initWithJavaUtilTreeMap_KeySet:(id)set withJavaUtilTreeMap_Node:(id)node
{
  Weak = objc_loadWeak(set + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, node);
  return self;
}

@end