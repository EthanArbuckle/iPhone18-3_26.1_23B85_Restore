@interface HFSymbolIconConfiguration
- (HFSymbolIconConfiguration)initWithSystemImageName:(id)a3;
- (HFSymbolIconConfiguration)initWithSystemImageName:(id)a3 configuration:(id)a4;
@end

@implementation HFSymbolIconConfiguration

- (HFSymbolIconConfiguration)initWithSystemImageName:(id)a3
{
  v4 = MEMORY[0x277D755D0];
  v5 = a3;
  v6 = [v4 configurationPreferringMulticolor];
  v7 = [(HFSymbolIconConfiguration *)self initWithSystemImageName:v5 configuration:v6];

  return v7;
}

- (HFSymbolIconConfiguration)initWithSystemImageName:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFSymbolIconConfiguration;
  v9 = [(HFSymbolIconConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemImageName, a3);
    objc_storeStrong(&v10->_configuration, a4);
  }

  return v10;
}

@end