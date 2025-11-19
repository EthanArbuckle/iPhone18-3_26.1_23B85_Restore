@interface CUIKIntegrationAlert
- (CUIKIntegrationAlert)initWithTitle:(id)a3 message:(id)a4 actions:(id)a5 cancelBlock:(id)a6;
@end

@implementation CUIKIntegrationAlert

- (CUIKIntegrationAlert)initWithTitle:(id)a3 message:(id)a4 actions:(id)a5 cancelBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CUIKIntegrationAlert;
  v15 = [(CUIKIntegrationAlert *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, a3);
    objc_storeStrong(&v16->_message, a4);
    objc_storeStrong(&v16->_actions, a5);
    v17 = _Block_copy(v14);
    cancelBlock = v16->_cancelBlock;
    v16->_cancelBlock = v17;
  }

  return v16;
}

@end