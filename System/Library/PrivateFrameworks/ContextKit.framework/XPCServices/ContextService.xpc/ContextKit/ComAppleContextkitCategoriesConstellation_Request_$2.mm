@interface ComAppleContextkitCategoriesConstellation_Request_$2
- (ComAppleContextkitCategoriesConstellation_Request_$2)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withInt:(int)withInt withJavaUtilConcurrentAtomicAtomicBoolean:(id)boolean withJavaUtilConcurrentAtomicAtomicInteger:(id)integer;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$2

- (ComAppleContextkitCategoriesConstellation_Request_$2)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withInt:(int)withInt withJavaUtilConcurrentAtomicAtomicBoolean:(id)boolean withJavaUtilConcurrentAtomicAtomicInteger:(id)integer
{
  JreStrongAssign(&self->this$0_, request);
  self->val$count_ = int;
  self->val$weight_ = withInt;
  JreStrongAssign(&self->val$hasModifications_, boolean);
  JreStrongAssign(&self->val$numNonZeroesTouched_, integer);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__2;
  [(ComAppleContextkitCategoriesConstellation_Request_$2 *)&v3 dealloc];
}

@end