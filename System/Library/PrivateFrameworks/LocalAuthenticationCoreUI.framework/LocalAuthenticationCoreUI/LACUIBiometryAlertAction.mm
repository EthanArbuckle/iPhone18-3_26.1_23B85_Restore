@interface LACUIBiometryAlertAction
+ (id)actionWithType:(int64_t)a3 title:(id)a4 handler:(id)a5;
- (LACUIBiometryAlertAction)initWithType:(int64_t)a3 title:(id)a4 shouldDismissAlert:(BOOL)a5 handler:(id)a6;
- (NSString)axIdentifier;
@end

@implementation LACUIBiometryAlertAction

+ (id)actionWithType:(int64_t)a3 title:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [objc_opt_class() actionWithType:a3 title:v8 shouldDismissAlert:1 handler:v7];

  return v9;
}

- (LACUIBiometryAlertAction)initWithType:(int64_t)a3 title:(id)a4 shouldDismissAlert:(BOOL)a5 handler:(id)a6
{
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = LACUIBiometryAlertAction;
  v13 = [(LACUIBiometryAlertAction *)&v17 init];
  if (v13)
  {
    v14 = _Block_copy(v12);
    handler = v13->_handler;
    v13->_handler = v14;

    v13->_shouldDismissAlert = a5;
    objc_storeStrong(&v13->_title, a4);
    v13->_type = a3;
  }

  return v13;
}

- (NSString)axIdentifier
{
  v2 = [(LACUIBiometryAlertAction *)self type];
  if (v2 <= 4)
  {
    v3 = *off_27981E718[v2];
  }

  return v3;
}

@end