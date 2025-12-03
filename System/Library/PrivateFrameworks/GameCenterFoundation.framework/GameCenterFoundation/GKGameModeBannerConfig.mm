@interface GKGameModeBannerConfig
- (GKGameModeBannerConfig)initWithBundleIdentifier:(id)identifier enabled:(BOOL)enabled actionSymbols:(id)symbols;
- (GKGameModeBannerConfig)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKGameModeBannerConfig

- (GKGameModeBannerConfig)initWithBundleIdentifier:(id)identifier enabled:(BOOL)enabled actionSymbols:(id)symbols
{
  identifierCopy = identifier;
  symbolsCopy = symbols;
  v16.receiver = self;
  v16.super_class = GKGameModeBannerConfig;
  v10 = [(GKGameModeBannerConfig *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    bundleIdentifier = v10->_bundleIdentifier;
    v10->_bundleIdentifier = v11;

    v10->_enabled = enabled;
    v13 = [symbolsCopy copy];
    actionSymbols = v10->_actionSymbols;
    v10->_actionSymbols = v13;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  actionSymbols = self->_actionSymbols;
  if (actionSymbols)
  {
    [coderCopy encodeObject:actionSymbols forKey:@"actionSymbols"];
  }
}

- (GKGameModeBannerConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v5)
  {
    v6 = [coderCopy decodeBoolForKey:@"enabled"];
    v7 = MEMORY[0x277CBEB98];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"actionSymbols"];
    self = [(GKGameModeBannerConfig *)self initWithBundleIdentifier:v5 enabled:v6 actionSymbols:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end