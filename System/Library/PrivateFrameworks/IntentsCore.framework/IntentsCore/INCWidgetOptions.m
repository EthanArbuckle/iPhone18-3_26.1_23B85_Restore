@interface INCWidgetOptions
- (INCWidgetOptions)initWithExtensionBundleIdentifier:(id)a3 intentType:(id)a4;
@end

@implementation INCWidgetOptions

- (INCWidgetOptions)initWithExtensionBundleIdentifier:(id)a3 intentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = INCWidgetOptions;
  v8 = [(INCWidgetOptions *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    extensionBundleIdentifier = v8->_extensionBundleIdentifier;
    v8->_extensionBundleIdentifier = v9;

    v11 = [v7 copy];
    intentType = v8->_intentType;
    v8->_intentType = v11;
  }

  return v8;
}

@end