@interface LNUIPluginModel
- (LNUIPluginModel)initWithCoder:(id)a3;
- (LNUIPluginModel)initWithPluginModelData:(id)a3 bundleIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNUIPluginModel

- (LNUIPluginModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pluginModelData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];

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
    v8 = 0;
  }

  else
  {
    self = [(LNUIPluginModel *)self initWithPluginModelData:v5 bundleIdentifier:v6];
    v8 = self;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNUIPluginModel *)self pluginModelData];
  [v4 encodeObject:v5 forKey:@"pluginModelData"];

  v6 = [(LNUIPluginModel *)self bundleIdentifier];
  [v4 encodeObject:v6 forKey:@"bundleIdentifier"];
}

- (LNUIPluginModel)initWithPluginModelData:(id)a3 bundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = LNUIPluginModel;
  v9 = [(LNUIPluginModel *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_pluginModelData, a3);
    objc_storeStrong(&v10->_bundleIdentifier, a4);
    v11 = v10;
  }

  return v10;
}

@end