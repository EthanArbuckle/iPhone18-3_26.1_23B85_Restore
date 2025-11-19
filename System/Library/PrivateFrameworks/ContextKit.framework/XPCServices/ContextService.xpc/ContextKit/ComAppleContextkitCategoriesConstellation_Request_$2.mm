@interface ComAppleContextkitCategoriesConstellation_Request_$2
- (ComAppleContextkitCategoriesConstellation_Request_$2)initWithComAppleContextkitCategoriesConstellation_Request:(id)a3 withInt:(int)a4 withInt:(int)a5 withJavaUtilConcurrentAtomicAtomicBoolean:(id)a6 withJavaUtilConcurrentAtomicAtomicInteger:(id)a7;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$2

- (ComAppleContextkitCategoriesConstellation_Request_$2)initWithComAppleContextkitCategoriesConstellation_Request:(id)a3 withInt:(int)a4 withInt:(int)a5 withJavaUtilConcurrentAtomicAtomicBoolean:(id)a6 withJavaUtilConcurrentAtomicAtomicInteger:(id)a7
{
  JreStrongAssign(&self->this$0_, a3);
  self->val$count_ = a4;
  self->val$weight_ = a5;
  JreStrongAssign(&self->val$hasModifications_, a6);
  JreStrongAssign(&self->val$numNonZeroesTouched_, a7);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__2;
  [(ComAppleContextkitCategoriesConstellation_Request_$2 *)&v3 dealloc];
}

@end