@interface DAAdditionalConfigurationData
- (DAAdditionalConfigurationData)initWithCoder:(id)a3;
- (DAAdditionalConfigurationData)initWithKeyRole:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAAdditionalConfigurationData

- (DAAdditionalConfigurationData)initWithKeyRole:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAAdditionalConfigurationData;
  v6 = [(DAAdditionalConfigurationData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyRole, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"AdditionalConfigurationData:\n"];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tKey Role          : 0x%04X\n", -[NSNumber unsignedShortValue](self->_keyRole, "unsignedShortValue")];
  [v3 appendString:v5];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[DAAdditionalConfigurationData allocWithZone:](DAAdditionalConfigurationData init];
  if (v5)
  {
    v6 = [(NSNumber *)self->_keyRole copyWithZone:a3];
    keyRole = v5->_keyRole;
    v5->_keyRole = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  keyRole = self->_keyRole;
  v4 = a3;
  [v4 encodeInteger:-[NSNumber unsignedShortValue](keyRole forKey:{"unsignedShortValue"), @"keyRole"}];
}

- (DAAdditionalConfigurationData)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAAdditionalConfigurationData;
  v5 = [(DAAdditionalConfigurationData *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "decodeIntegerForKey:", @"keyRole"}];
    keyRole = v5->_keyRole;
    v5->_keyRole = v6;
  }

  return v5;
}

@end