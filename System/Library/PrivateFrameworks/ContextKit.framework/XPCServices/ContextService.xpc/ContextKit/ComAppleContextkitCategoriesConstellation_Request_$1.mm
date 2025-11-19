@interface ComAppleContextkitCategoriesConstellation_Request_$1
- (ComAppleContextkitCategoriesConstellation_Request_$1)initWithComAppleContextkitCategoriesConstellation_Request:(id)a3 withInt:(int)a4 withJavaUtilSet:(id)a5;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$1

- (ComAppleContextkitCategoriesConstellation_Request_$1)initWithComAppleContextkitCategoriesConstellation_Request:(id)a3 withInt:(int)a4 withJavaUtilSet:(id)a5
{
  JreStrongAssign(&self->this$0_, a3);
  self->val$weight_ = a4;
  JreStrongAssign(&self->val$seen_, a5);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__1;
  [(ComAppleContextkitCategoriesConstellation_Request_$1 *)&v3 dealloc];
}

@end