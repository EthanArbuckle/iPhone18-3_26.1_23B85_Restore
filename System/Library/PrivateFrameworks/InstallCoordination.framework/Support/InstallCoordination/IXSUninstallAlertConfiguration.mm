@interface IXSUninstallAlertConfiguration
- (IXSUninstallAlertConfiguration)initWithTitle:(id)title message:(id)message;
- (NSDictionary)alertParameters;
- (id)actionForButtonAtIndex:(unint64_t)index;
- (unint64_t)numButtons;
- (void)addButtonDefinition:(id)definition forAction:(id)action;
@end

@implementation IXSUninstallAlertConfiguration

- (IXSUninstallAlertConfiguration)initWithTitle:(id)title message:(id)message
{
  titleCopy = title;
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = IXSUninstallAlertConfiguration;
  v8 = [(IXSUninstallAlertConfiguration *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    [(IXSUninstallAlertConfiguration *)v8 setButtonDefinitions:v9];

    v10 = objc_opt_new();
    [(IXSUninstallAlertConfiguration *)v8 setActionDefinitions:v10];

    [(IXSUninstallAlertConfiguration *)v8 setTitle:titleCopy];
    [(IXSUninstallAlertConfiguration *)v8 setMessage:messageCopy];
  }

  return v8;
}

- (void)addButtonDefinition:(id)definition forAction:(id)action
{
  actionCopy = action;
  definitionCopy = definition;
  [definitionCopy buttonType];
  buttonDefinitions = [(IXSUninstallAlertConfiguration *)self buttonDefinitions];
  [buttonDefinitions addObject:definitionCopy];

  actionDefinitions = [(IXSUninstallAlertConfiguration *)self actionDefinitions];
  v9 = objc_retainBlock(actionCopy);

  [actionDefinitions addObject:v9];
}

- (id)actionForButtonAtIndex:(unint64_t)index
{
  actionDefinitions = [(IXSUninstallAlertConfiguration *)self actionDefinitions];
  v5 = [actionDefinitions objectAtIndexedSubscript:index];

  return v5;
}

- (unint64_t)numButtons
{
  buttonDefinitions = [(IXSUninstallAlertConfiguration *)self buttonDefinitions];
  v3 = [buttonDefinitions count];

  return v3;
}

- (NSDictionary)alertParameters
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  buttonDefinitions = [(IXSUninstallAlertConfiguration *)self buttonDefinitions];
  v5 = [buttonDefinitions countByEnumeratingWithState:&v15 objects:v21 count:16];
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
          objc_enumerationMutation(buttonDefinitions);
        }

        buttonDefinitionForSB = [*(*(&v15 + 1) + 8 * i) buttonDefinitionForSB];
        [v3 addObject:buttonDefinitionForSB];
      }

      v6 = [buttonDefinitions countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v19[0] = kCFUserNotificationAlertHeaderKey;
  title = [(IXSUninstallAlertConfiguration *)self title];
  v20[0] = title;
  v19[1] = kCFUserNotificationAlertMessageKey;
  message = [(IXSUninstallAlertConfiguration *)self message];
  v20[1] = message;
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