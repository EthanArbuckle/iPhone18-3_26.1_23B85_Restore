@interface JavaUtilTreeMap_ValuesCollection_$1
- (JavaUtilTreeMap_ValuesCollection_$1)initWithJavaUtilTreeMap_ValuesCollection:(id)a3 withJavaUtilTreeMap_Node:(id)a4;
- (id)next;
@end

@implementation JavaUtilTreeMap_ValuesCollection_$1

- (id)next
{
  v2 = [(JavaUtilTreeMap_MapIterator *)self stepForward];
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return v2[5];
}

- (JavaUtilTreeMap_ValuesCollection_$1)initWithJavaUtilTreeMap_ValuesCollection:(id)a3 withJavaUtilTreeMap_Node:(id)a4
{
  Weak = objc_loadWeak(a3 + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, a4);
  return self;
}

@end