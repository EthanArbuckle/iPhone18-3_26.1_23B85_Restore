@interface ComAppleContextkitCategoriesConstellation_Request_$1
- (ComAppleContextkitCategoriesConstellation_Request_$1)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withJavaUtilSet:(id)set;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request_$1

- (ComAppleContextkitCategoriesConstellation_Request_$1)initWithComAppleContextkitCategoriesConstellation_Request:(id)request withInt:(int)int withJavaUtilSet:(id)set
{
  JreStrongAssign(&self->this$0_, request);
  self->val$weight_ = int;
  JreStrongAssign(&self->val$seen_, set);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request__1;
  [(ComAppleContextkitCategoriesConstellation_Request_$1 *)&v3 dealloc];
}

@end