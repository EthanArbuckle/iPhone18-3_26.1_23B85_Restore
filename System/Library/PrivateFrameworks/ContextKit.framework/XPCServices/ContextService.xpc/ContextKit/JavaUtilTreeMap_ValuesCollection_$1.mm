@interface JavaUtilTreeMap_ValuesCollection_$1
- (JavaUtilTreeMap_ValuesCollection_$1)initWithJavaUtilTreeMap_ValuesCollection:(id)collection withJavaUtilTreeMap_Node:(id)node;
- (id)next;
@end

@implementation JavaUtilTreeMap_ValuesCollection_$1

- (id)next
{
  stepForward = [(JavaUtilTreeMap_MapIterator *)self stepForward];
  if (!stepForward)
  {
    JreThrowNullPointerException();
  }

  return stepForward[5];
}

- (JavaUtilTreeMap_ValuesCollection_$1)initWithJavaUtilTreeMap_ValuesCollection:(id)collection withJavaUtilTreeMap_Node:(id)node
{
  Weak = objc_loadWeak(collection + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, node);
  return self;
}

@end