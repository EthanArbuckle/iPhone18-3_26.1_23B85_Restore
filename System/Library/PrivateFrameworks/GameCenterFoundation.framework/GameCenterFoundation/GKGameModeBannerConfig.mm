@interface GKGameModeBannerConfig
- (GKGameModeBannerConfig)initWithBundleIdentifier:(id)a3 enabled:(BOOL)a4 actionSymbols:(id)a5;
- (GKGameModeBannerConfig)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKGameModeBannerConfig

- (GKGameModeBannerConfig)initWithBundleIdentifier:(id)a3 enabled:(BOOL)a4 actionSymbols:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = GKGameModeBannerConfig;
  v10 = [(GKGameModeBannerConfig *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v10->_enabled = a4;
    v13 = [v9 copy];
    actionSymbols = v10->_actionSymbols;
    v10->_actionSymbols = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v5 encodeBool:self->_enabled forKey:@"enabled"];
  actionSymbols = self->_actionSymbols;
  if (actionSymbols)
  {
    [v5 encodeObject:actionSymbols forKey:@"actionSymbols"];
  }
}

- (GKGameModeBannerConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeBoolForKey:@"enabled"];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"actionSymbols"];
    self = [(GKGameModeBannerConfig *)self initWithBundleIdentifier:v5 enabled:v6 actionSymbols:v10];

    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end