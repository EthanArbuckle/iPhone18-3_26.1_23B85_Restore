@interface HFSymbolIconConfiguration
- (HFSymbolIconConfiguration)initWithSystemImageName:(id)name;
- (HFSymbolIconConfiguration)initWithSystemImageName:(id)name configuration:(id)configuration;
@end

@implementation HFSymbolIconConfiguration

- (HFSymbolIconConfiguration)initWithSystemImageName:(id)name
{
  v4 = MEMORY[0x277D755D0];
  nameCopy = name;
  configurationPreferringMulticolor = [v4 configurationPreferringMulticolor];
  v7 = [(HFSymbolIconConfiguration *)self initWithSystemImageName:nameCopy configuration:configurationPreferringMulticolor];

  return v7;
}

- (HFSymbolIconConfiguration)initWithSystemImageName:(id)name configuration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = HFSymbolIconConfiguration;
  v9 = [(HFSymbolIconConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemImageName, name);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

@end