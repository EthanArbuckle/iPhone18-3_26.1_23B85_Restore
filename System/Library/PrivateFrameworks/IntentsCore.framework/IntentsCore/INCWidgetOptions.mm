@interface INCWidgetOptions
- (INCWidgetOptions)initWithExtensionBundleIdentifier:(id)identifier intentType:(id)type;
@end

@implementation INCWidgetOptions

- (INCWidgetOptions)initWithExtensionBundleIdentifier:(id)identifier intentType:(id)type
{
  identifierCopy = identifier;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = INCWidgetOptions;
  v8 = [(INCWidgetOptions *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    extensionBundleIdentifier = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v9;

    v11 = [typeCopy copy];
    intentType = v8->_intentType;
    v8->_intentType = v11;
  }

  return v8;
}

@end