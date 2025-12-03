@interface MUExternalActionPair
- (MUExternalActionPair)initWithAction:(id)action actionController:(id)controller;
@end

@implementation MUExternalActionPair

- (MUExternalActionPair)initWithAction:(id)action actionController:(id)controller
{
  actionCopy = action;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = MUExternalActionPair;
  v9 = [(MUExternalActionPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModels, action);
    objc_storeStrong(&v10->_actionController, controller);
  }

  return v10;
}

@end