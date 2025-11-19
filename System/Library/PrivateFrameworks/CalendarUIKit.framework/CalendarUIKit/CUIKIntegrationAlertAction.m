@interface CUIKIntegrationAlertAction
- (CUIKIntegrationAlertAction)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
@end

@implementation CUIKIntegrationAlertAction

- (CUIKIntegrationAlertAction)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = CUIKIntegrationAlertAction;
  v11 = [(CUIKIntegrationAlertAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a3);
    v12->_style = a4;
    v13 = _Block_copy(v10);
    handler = v12->_handler;
    v12->_handler = v13;
  }

  return v12;
}

@end