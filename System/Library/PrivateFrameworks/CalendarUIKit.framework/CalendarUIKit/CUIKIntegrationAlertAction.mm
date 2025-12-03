@interface CUIKIntegrationAlertAction
- (CUIKIntegrationAlertAction)initWithTitle:(id)title style:(int64_t)style handler:(id)handler;
@end

@implementation CUIKIntegrationAlertAction

- (CUIKIntegrationAlertAction)initWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CUIKIntegrationAlertAction;
  v11 = [(CUIKIntegrationAlertAction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_style = style;
    v13 = _Block_copy(handlerCopy);
    handler = v12->_handler;
    v12->_handler = v13;
  }

  return v12;
}

@end