@interface JavaUtilTreeMap_EntrySet_$1
- (JavaUtilTreeMap_EntrySet_$1)initWithJavaUtilTreeMap_EntrySet:(id)a3 withJavaUtilTreeMap_Node:(id)a4;
@end

@implementation JavaUtilTreeMap_EntrySet_$1

- (JavaUtilTreeMap_EntrySet_$1)initWithJavaUtilTreeMap_EntrySet:(id)a3 withJavaUtilTreeMap_Node:(id)a4
{
  Weak = objc_loadWeak(a3 + 1);
  JreStrongAssign(&self->super.this$0_, Weak);
  self->super.expectedModCount_ = Weak[11];
  JreStrongAssign(&self->super.next_, a4);
  return self;
}

@end