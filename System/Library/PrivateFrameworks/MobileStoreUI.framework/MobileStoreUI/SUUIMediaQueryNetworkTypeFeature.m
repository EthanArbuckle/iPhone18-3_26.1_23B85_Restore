@interface SUUIMediaQueryNetworkTypeFeature
- (BOOL)evaluateWithValues:(id)a3;
- (SUUIMediaQueryNetworkTypeFeature)initWithFeatureName:(id)a3 value:(id)a4;
- (id)description;
- (id)notificationNames;
- (id)requiredKeys;
@end

@implementation SUUIMediaQueryNetworkTypeFeature

- (SUUIMediaQueryNetworkTypeFeature)initWithFeatureName:(id)a3 value:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SUUIMediaQueryNetworkTypeFeature;
  v7 = [(SUUIMediaQueryFeature *)&v11 initWithFeatureName:a3 value:v6];
  if (v7)
  {
    v8 = [v6 copy];
    value = v7->_value;
    v7->_value = v8;
  }

  return v7;
}

- (BOOL)evaluateWithValues:(id)a3
{
  v4 = [a3 objectForKey:0x286AFFE40];
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
  v5 = [(SUUIMediaQueryFeature *)self featureName];
  v6 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, v5, self->_value];

  return v6;
}

@end