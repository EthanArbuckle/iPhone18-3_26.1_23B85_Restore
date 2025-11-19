@interface CKAlertControllerActionHelper
+ (void)reportJunkWithConversation:(id)a3;
- (CKAlertControllerActionHelper)init;
@end

@implementation CKAlertControllerActionHelper

+ (void)reportJunkWithConversation:(id)a3
{
  v3 = a3;
  sub_190BC714C(v3);
}

- (CKAlertControllerActionHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AlertControllerActionHelper();
  return [(CKAlertControllerActionHelper *)&v3 init];
}

@end