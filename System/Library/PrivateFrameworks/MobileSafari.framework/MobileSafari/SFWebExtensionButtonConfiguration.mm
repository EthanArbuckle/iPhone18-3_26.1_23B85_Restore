@interface SFWebExtensionButtonConfiguration
- (BOOL)isEqual:(id)equal;
- (SFWebExtensionButtonConfiguration)initWithActiveExtensionCount:(unint64_t)count alwaysShowMultipleExtensionsButton:(BOOL)button buttons:(id)buttons extensionsController:(id)controller;
@end

@implementation SFWebExtensionButtonConfiguration

- (SFWebExtensionButtonConfiguration)initWithActiveExtensionCount:(unint64_t)count alwaysShowMultipleExtensionsButton:(BOOL)button buttons:(id)buttons extensionsController:(id)controller
{
  buttonsCopy = buttons;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = SFWebExtensionButtonConfiguration;
  v13 = [(SFWebExtensionButtonConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_activeExtensionCount = count;
    v13->_alwaysShowMultipleExtensionsButton = button;
    objc_storeStrong(&v13->_buttons, buttons);
    objc_storeStrong(&v14->_webExtensionsController, controller);
    v15 = v14;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_activeExtensionCount == v5->_activeExtensionCount && self->_alwaysShowMultipleExtensionsButton == v5->_alwaysShowMultipleExtensionsButton)
      {
        v7 = WBSIsEqual();
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end