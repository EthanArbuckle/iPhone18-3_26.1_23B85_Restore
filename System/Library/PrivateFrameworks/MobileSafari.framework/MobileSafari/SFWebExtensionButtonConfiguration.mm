@interface SFWebExtensionButtonConfiguration
- (BOOL)isEqual:(id)a3;
- (SFWebExtensionButtonConfiguration)initWithActiveExtensionCount:(unint64_t)a3 alwaysShowMultipleExtensionsButton:(BOOL)a4 buttons:(id)a5 extensionsController:(id)a6;
@end

@implementation SFWebExtensionButtonConfiguration

- (SFWebExtensionButtonConfiguration)initWithActiveExtensionCount:(unint64_t)a3 alwaysShowMultipleExtensionsButton:(BOOL)a4 buttons:(id)a5 extensionsController:(id)a6
{
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = SFWebExtensionButtonConfiguration;
  v13 = [(SFWebExtensionButtonConfiguration *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_activeExtensionCount = a3;
    v13->_alwaysShowMultipleExtensionsButton = a4;
    objc_storeStrong(&v13->_buttons, a5);
    objc_storeStrong(&v14->_webExtensionsController, a6);
    v15 = v14;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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