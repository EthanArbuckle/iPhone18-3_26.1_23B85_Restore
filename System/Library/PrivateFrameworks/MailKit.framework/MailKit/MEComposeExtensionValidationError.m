@interface MEComposeExtensionValidationError
- (MEComposeExtensionValidationError)initWithExtensionName:(id)a3 icon:(id)a4 error:(id)a5;
@end

@implementation MEComposeExtensionValidationError

- (MEComposeExtensionValidationError)initWithExtensionName:(id)a3 icon:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MEComposeExtensionValidationError;
  v12 = [(MEComposeExtensionValidationError *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extensionDisplayName, a3);
    objc_storeStrong(&v13->_icon, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

@end