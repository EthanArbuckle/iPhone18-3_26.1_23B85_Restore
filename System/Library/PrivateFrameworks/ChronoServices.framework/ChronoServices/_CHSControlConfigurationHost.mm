@interface _CHSControlConfigurationHost
- (NSArray)controlConfigurations;
- (NSString)identifier;
- (_CHSControlConfigurationHost)initWithIdentifier:(id)identifier configurations:(id)configurations;
- (id)controlConfigurationsForApplicationContainerBundleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _CHSControlConfigurationHost

- (_CHSControlConfigurationHost)initWithIdentifier:(id)identifier configurations:(id)configurations
{
  identifierCopy = identifier;
  configurationsCopy = configurations;
  v14.receiver = self;
  v14.super_class = _CHSControlConfigurationHost;
  v8 = [(_CHSControlConfigurationHost *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [configurationsCopy copy];
    configurations = v8->_configurations;
    v8->_configurations = v11;
  }

  return v8;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (NSArray)controlConfigurations
{
  v2 = [(NSArray *)self->_configurations copy];

  return v2;
}

- (id)controlConfigurationsForApplicationContainerBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  configurations = self->_configurations;
  v6 = MEMORY[0x1E696AE18];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93___CHSControlConfigurationHost_controlConfigurationsForApplicationContainerBundleIdentifier___block_invoke;
  v11[3] = &unk_1E7453E00;
  v7 = identifierCopy;
  v12 = v7;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [(NSArray *)configurations filteredArrayUsingPredicate:v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_CHSControlConfigurationHost alloc];
  identifier = self->_identifier;
  configurations = self->_configurations;

  return [(_CHSControlConfigurationHost *)v4 initWithIdentifier:identifier configurations:configurations];
}

@end