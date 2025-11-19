@interface IXSUninstallAlertConfiguration
- (IXSUninstallAlertConfiguration)initWithTitle:(id)a3 message:(id)a4;
- (NSDictionary)alertParameters;
- (id)actionForButtonAtIndex:(unint64_t)a3;
- (unint64_t)numButtons;
- (void)addButtonDefinition:(id)a3 forAction:(id)a4;
@end

@implementation IXSUninstallAlertConfiguration

- (IXSUninstallAlertConfiguration)initWithTitle:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = IXSUninstallAlertConfiguration;
  v8 = [(IXSUninstallAlertConfiguration *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [(IXSUninstallAlertConfiguration *)v8 setButtonDefinitions:v9];

    v10 = objc_opt_new();
    [(IXSUninstallAlertConfiguration *)v8 setActionDefinitions:v10];

    [(IXSUninstallAlertConfiguration *)v8 setTitle:v6];
    [(IXSUninstallAlertConfiguration *)v8 setMessage:v7];
  }

  return v8;
}

- (void)addButtonDefinition:(id)a3 forAction:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 buttonType];
  v8 = [(IXSUninstallAlertConfiguration *)self buttonDefinitions];
  [v8 addObject:v7];

  v10 = [(IXSUninstallAlertConfiguration *)self actionDefinitions];
  v9 = objc_retainBlock(v6);

  [v10 addObject:v9];
}

- (id)actionForButtonAtIndex:(unint64_t)a3
{
  v4 = [(IXSUninstallAlertConfiguration *)self actionDefinitions];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (unint64_t)numButtons
{
  v2 = [(IXSUninstallAlertConfiguration *)self buttonDefinitions];
  v3 = [v2 count];

  return v3;
}

- (NSDictionary)alertParameters
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(IXSUninstallAlertConfiguration *)self buttonDefinitions];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) buttonDefinitionForSB];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19[0] = kCFUserNotificationAlertHeaderKey;
  v10 = [(IXSUninstallAlertConfiguration *)self title];
  v20[0] = v10;
  v19[1] = kCFUserNotificationAlertMessageKey;
  v11 = [(IXSUninstallAlertConfiguration *)self message];
  v20[1] = v11;
  v20[2] = &__kCFBooleanTrue;
  v19[2] = SBUserNotificationAllowMenuButtonDismissal;
  v19[3] = SBUserNotificationDismissOnLock;
  v20[3] = &__kCFBooleanTrue;
  v19[4] = SBSUserNotificationButtonDefinitionsKey;
  v12 = [v3 copy];
  v20[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:5];

  return v13;
}

@end