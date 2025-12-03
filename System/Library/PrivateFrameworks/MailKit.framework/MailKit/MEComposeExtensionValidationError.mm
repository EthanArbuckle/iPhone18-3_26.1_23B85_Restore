@interface MEComposeExtensionValidationError
- (MEComposeExtensionValidationError)initWithExtensionName:(id)name icon:(id)icon error:(id)error;
@end

@implementation MEComposeExtensionValidationError

- (MEComposeExtensionValidationError)initWithExtensionName:(id)name icon:(id)icon error:(id)error
{
  nameCopy = name;
  iconCopy = icon;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = MEComposeExtensionValidationError;
  v12 = [(MEComposeExtensionValidationError *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_extensionDisplayName, name);
    objc_storeStrong(&v13->_icon, icon);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

@end