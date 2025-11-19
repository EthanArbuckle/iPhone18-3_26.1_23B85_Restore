@interface IXSUninstallButtonConfiguration
- (IXSUninstallButtonConfiguration)initWithTitle:(id)a3 buttonType:(int)a4;
- (NSDictionary)buttonDefinitionForSB;
@end

@implementation IXSUninstallButtonConfiguration

- (IXSUninstallButtonConfiguration)initWithTitle:(id)a3 buttonType:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IXSUninstallButtonConfiguration;
  v8 = [(IXSUninstallButtonConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_title, a3);
    v9->_buttonType = a4;
  }

  return v9;
}

- (NSDictionary)buttonDefinitionForSB
{
  v3 = [SBSMutableUserNotificationButtonDefinition alloc];
  v4 = [(IXSUninstallButtonConfiguration *)self title];
  v5 = [v3 initWithTitle:v4];

  if ([(IXSUninstallButtonConfiguration *)self presentationStyle]== 1)
  {
    v6 = 1;
  }

  else
  {
    if ([(IXSUninstallButtonConfiguration *)self presentationStyle]!= 2)
    {
      goto LABEL_6;
    }

    v6 = 2;
  }

  [v5 setPresentationStyle:v6];
LABEL_6:
  [v5 setIsPreferredButton:{-[IXSUninstallButtonConfiguration isPreferredButton](self, "isPreferredButton")}];
  v7 = [v5 build];

  return v7;
}

@end