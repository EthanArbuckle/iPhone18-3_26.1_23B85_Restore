@interface HMMTRAccessoryServerBuilder
- (HMMTRAccessoryServerBuilder)initWithKeystore:(id)keystore browser:(id)browser;
- (id)addService:(id)service;
- (id)identifier:(id)identifier;
- (id)manufacturer:(id)manufacturer;
- (id)model:(id)model;
- (id)name:(id)name;
- (id)serialNumber:(id)number;
@end

@implementation HMMTRAccessoryServerBuilder

- (id)addService:(id)service
{
  accessoryServer = self->_accessoryServer;
  serviceCopy = service;
  primaryAccessory = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [serviceCopy setAccessory:primaryAccessory];

  primaryAccessory2 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  services = [primaryAccessory2 services];

  v9 = [MEMORY[0x277CBEB18] arrayWithObject:serviceCopy];

  [v9 addObjectsFromArray:services];
  primaryAccessory3 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [primaryAccessory3 setServices:v9];

  return self;
}

- (id)serialNumber:(id)number
{
  accessoryServer = self->_accessoryServer;
  numberCopy = number;
  primaryAccessory = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [primaryAccessory setSerialNumber:numberCopy];

  return self;
}

- (id)model:(id)model
{
  accessoryServer = self->_accessoryServer;
  modelCopy = model;
  primaryAccessory = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [primaryAccessory setModel:modelCopy];

  return self;
}

- (id)manufacturer:(id)manufacturer
{
  accessoryServer = self->_accessoryServer;
  manufacturerCopy = manufacturer;
  primaryAccessory = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [primaryAccessory setManufacturer:manufacturerCopy];

  return self;
}

- (id)identifier:(id)identifier
{
  accessoryServer = self->_accessoryServer;
  identifierCopy = identifier;
  [(HAPAccessoryServer *)accessoryServer setIdentifier:identifierCopy];
  primaryAccessory = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [primaryAccessory setIdentifier:identifierCopy];

  primaryAccessory2 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [primaryAccessory2 setServerIdentifier:identifierCopy];

  return self;
}

- (id)name:(id)name
{
  accessoryServer = self->_accessoryServer;
  nameCopy = name;
  [(HAPAccessoryServer *)accessoryServer setName:nameCopy];
  primaryAccessory = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [primaryAccessory setName:nameCopy];

  return self;
}

- (HMMTRAccessoryServerBuilder)initWithKeystore:(id)keystore browser:(id)browser
{
  keystoreCopy = keystore;
  browserCopy = browser;
  v16.receiver = self;
  v16.super_class = HMMTRAccessoryServerBuilder;
  v8 = [(HMMTRAccessoryServerBuilder *)&v16 init];
  if (v8)
  {
    v9 = [[HMMTRAccessoryServer alloc] initWithKeystore:keystoreCopy browser:browserCopy];
    accessoryServer = v8->_accessoryServer;
    v8->_accessoryServer = v9;

    v11 = objc_alloc(MEMORY[0x277CFE9F8]);
    v12 = v8->_accessoryServer;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277CFED10]];
    v14 = [v11 initWithServer:v12 instanceID:v13];
    [(HMMTRAccessoryServer *)v8->_accessoryServer setPrimaryAccessory:v14];
  }

  return v8;
}

@end