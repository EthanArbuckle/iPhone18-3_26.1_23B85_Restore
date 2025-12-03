@interface SUUIMediaQueryNetworkTypeFeature
- (BOOL)evaluateWithValues:(id)values;
- (SUUIMediaQueryNetworkTypeFeature)initWithFeatureName:(id)name value:(id)value;
- (id)description;
- (id)notificationNames;
- (id)requiredKeys;
@end

@implementation SUUIMediaQueryNetworkTypeFeature

- (SUUIMediaQueryNetworkTypeFeature)initWithFeatureName:(id)name value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = SUUIMediaQueryNetworkTypeFeature;
  v7 = [(SUUIMediaQueryFeature *)&v11 initWithFeatureName:name value:valueCopy];
  if (v7)
  {
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;
  }

  return v7;
}

- (BOOL)evaluateWithValues:(id)values
{
  v4 = [values objectForKey:0x286AFFE40];
  LOBYTE(self) = [v4 isEqualToString:self->_value];

  return self;
}

- (id)notificationNames
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277D7FCC0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)requiredKeys
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0x286AFFE40;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SUUIMediaQueryNetworkTypeFeature;
  v4 = [(SUUIMediaQueryNetworkTypeFeature *)&v8 description];
  featureName = [(SUUIMediaQueryFeature *)self featureName];
  v6 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, featureName, self->_value];

  return v6;
}

@end