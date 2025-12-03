@interface LNUIPluginModel
- (LNUIPluginModel)initWithCoder:(id)coder;
- (LNUIPluginModel)initWithPluginModelData:(id)data bundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNUIPluginModel

- (LNUIPluginModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pluginModelData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LNUIPluginModel *)self initWithPluginModelData:v5 bundleIdentifier:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pluginModelData = [(LNUIPluginModel *)self pluginModelData];
  [coderCopy encodeObject:pluginModelData forKey:@"pluginModelData"];

  bundleIdentifier = [(LNUIPluginModel *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];
}

- (LNUIPluginModel)initWithPluginModelData:(id)data bundleIdentifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = LNUIPluginModel;
  v9 = [(LNUIPluginModel *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pluginModelData, data);
    objc_storeStrong(&v10->_bundleIdentifier, identifier);
    v11 = v10;
  }

  return v10;
}

@end