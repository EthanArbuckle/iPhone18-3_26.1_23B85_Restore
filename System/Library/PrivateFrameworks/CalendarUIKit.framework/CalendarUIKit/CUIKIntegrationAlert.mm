@interface CUIKIntegrationAlert
- (CUIKIntegrationAlert)initWithTitle:(id)title message:(id)message actions:(id)actions cancelBlock:(id)block;
@end

@implementation CUIKIntegrationAlert

- (CUIKIntegrationAlert)initWithTitle:(id)title message:(id)message actions:(id)actions cancelBlock:(id)block
{
  titleCopy = title;
  messageCopy = message;
  actionsCopy = actions;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = CUIKIntegrationAlert;
  v15 = [(CUIKIntegrationAlert *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_title, title);
    objc_storeStrong(&v16->_message, message);
    objc_storeStrong(&v16->_actions, actions);
    v17 = _Block_copy(blockCopy);
    cancelBlock = v16->_cancelBlock;
    v16->_cancelBlock = v17;
  }

  return v16;
}

@end