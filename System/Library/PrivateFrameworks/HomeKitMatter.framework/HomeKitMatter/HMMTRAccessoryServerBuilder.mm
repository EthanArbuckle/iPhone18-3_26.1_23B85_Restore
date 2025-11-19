@interface HMMTRAccessoryServerBuilder
- (HMMTRAccessoryServerBuilder)initWithKeystore:(id)a3 browser:(id)a4;
- (id)addService:(id)a3;
- (id)identifier:(id)a3;
- (id)manufacturer:(id)a3;
- (id)model:(id)a3;
- (id)name:(id)a3;
- (id)serialNumber:(id)a3;
@end

@implementation HMMTRAccessoryServerBuilder

- (id)addService:(id)a3
{
  accessoryServer = self->_accessoryServer;
  v5 = a3;
  v6 = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [v5 setAccessory:v6];

  v7 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  v8 = [v7 services];

  v9 = [MEMORY[0x277CBEB18] arrayWithObject:v5];

  [v9 addObjectsFromArray:v8];
  v10 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [v10 setServices:v9];

  return self;
}

- (id)serialNumber:(id)a3
{
  accessoryServer = self->_accessoryServer;
  v5 = a3;
  v6 = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [v6 setSerialNumber:v5];

  return self;
}

- (id)model:(id)a3
{
  accessoryServer = self->_accessoryServer;
  v5 = a3;
  v6 = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [v6 setModel:v5];

  return self;
}

- (id)manufacturer:(id)a3
{
  accessoryServer = self->_accessoryServer;
  v5 = a3;
  v6 = [(HMMTRAccessoryServer *)accessoryServer primaryAccessory];
  [v6 setManufacturer:v5];

  return self;
}

- (id)identifier:(id)a3
{
  accessoryServer = self->_accessoryServer;
  v5 = a3;
  [(HAPAccessoryServer *)accessoryServer setIdentifier:v5];
  v6 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [v6 setIdentifier:v5];

  v7 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [v7 setServerIdentifier:v5];

  return self;
}

- (id)name:(id)a3
{
  accessoryServer = self->_accessoryServer;
  v5 = a3;
  [(HAPAccessoryServer *)accessoryServer setName:v5];
  v6 = [(HMMTRAccessoryServer *)self->_accessoryServer primaryAccessory];
  [v6 setName:v5];

  return self;
}

- (HMMTRAccessoryServerBuilder)initWithKeystore:(id)a3 browser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = HMMTRAccessoryServerBuilder;
  v8 = [(HMMTRAccessoryServerBuilder *)&v16 init];
  if (v8)
  {
    v9 = [[HMMTRAccessoryServer alloc] initWithKeystore:v6 browser:v7];
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