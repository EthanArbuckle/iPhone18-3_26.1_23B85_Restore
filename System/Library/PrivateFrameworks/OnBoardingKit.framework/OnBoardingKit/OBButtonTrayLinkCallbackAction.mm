@interface OBButtonTrayLinkCallbackAction
- (OBButtonTrayLinkCallbackAction)initWithCallback:(id)callback;
- (void)performButtonTrayLinkAction;
@end

@implementation OBButtonTrayLinkCallbackAction

- (OBButtonTrayLinkCallbackAction)initWithCallback:(id)callback
{
  callbackCopy = callback;
  v9.receiver = self;
  v9.super_class = OBButtonTrayLinkCallbackAction;
  v5 = [(OBButtonTrayLinkCallbackAction *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1B8C83960](callbackCopy);
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

- (void)performButtonTrayLinkAction
{
  action = [(OBButtonTrayLinkCallbackAction *)self action];

  if (action)
  {
    action2 = [(OBButtonTrayLinkCallbackAction *)self action];
    action2[2]();
  }
}

@end