@interface JavaUtilTreeMap_KeySet_$2
- (JavaUtilTreeMap_KeySet_$2)initWithJavaUtilTreeMap_KeySet:(id)a3 withJavaUtilTreeMap_Node:(id)a4;
- (id)next;
@end

@implementation JavaUtilTreeMap_KeySet_$2

- (id)next
{
  v2 = [(JavaUtilTreeMap_MapIterator *)self stepBackward];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[4];
}

- (JavaUtilTreeMap_KeySet_$2)initWithJavaUtilTreeMap_KeySet:(id)a3 withJavaUtilTreeMap_Node:(id)a4
{
  Weak = objc_loadWeak(a3 + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, a4);
  return self;
}

@end