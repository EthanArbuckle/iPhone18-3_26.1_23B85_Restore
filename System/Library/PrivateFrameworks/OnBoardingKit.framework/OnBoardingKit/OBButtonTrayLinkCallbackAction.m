@interface OBButtonTrayLinkCallbackAction
- (OBButtonTrayLinkCallbackAction)initWithCallback:(id)a3;
- (void)performButtonTrayLinkAction;
@end

@implementation OBButtonTrayLinkCallbackAction

- (OBButtonTrayLinkCallbackAction)initWithCallback:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OBButtonTrayLinkCallbackAction;
  v5 = [(OBButtonTrayLinkCallbackAction *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1B8C83960](v4);
    action = v5->_action;
    v5->_action = v6;
  }

  return v5;
}

- (void)performButtonTrayLinkAction
{
  v3 = [(OBButtonTrayLinkCallbackAction *)self action];

  if (v3)
  {
    v4 = [(OBButtonTrayLinkCallbackAction *)self action];
    v4[2]();
  }
}

@end