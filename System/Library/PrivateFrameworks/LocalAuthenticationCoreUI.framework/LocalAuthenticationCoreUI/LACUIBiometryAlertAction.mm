@interface LACUIBiometryAlertAction
+ (id)actionWithType:(int64_t)type title:(id)title handler:(id)handler;
- (LACUIBiometryAlertAction)initWithType:(int64_t)type title:(id)title shouldDismissAlert:(BOOL)alert handler:(id)handler;
- (NSString)axIdentifier;
@end

@implementation LACUIBiometryAlertAction

+ (id)actionWithType:(int64_t)type title:(id)title handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v9 = [objc_opt_class() actionWithType:type title:titleCopy shouldDismissAlert:1 handler:handlerCopy];

  return v9;
}

- (LACUIBiometryAlertAction)initWithType:(int64_t)type title:(id)title shouldDismissAlert:(BOOL)alert handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = LACUIBiometryAlertAction;
  v13 = [(LACUIBiometryAlertAction *)&v17 init];
  if (v13)
  {
    v14 = _Block_copy(handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;

    v13->_shouldDismissAlert = alert;
    objc_storeStrong(&v13->_title, title);
    v13->_type = type;
  }

  return v13;
}

- (NSString)axIdentifier
{
  type = [(LACUIBiometryAlertAction *)self type];
  if (type <= 4)
  {
    v3 = *off_27981E718[type];
  }

  return v3;
}

@end