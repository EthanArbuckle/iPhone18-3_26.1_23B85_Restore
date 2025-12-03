@interface DAAdditionalConfigurationData
- (DAAdditionalConfigurationData)initWithCoder:(id)coder;
- (DAAdditionalConfigurationData)initWithKeyRole:(id)role;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAAdditionalConfigurationData

- (DAAdditionalConfigurationData)initWithKeyRole:(id)role
{
  roleCopy = role;
  v9.receiver = self;
  v9.super_class = DAAdditionalConfigurationData;
  v6 = [(DAAdditionalConfigurationData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyRole, role);
  }

  return v7;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"AdditionalConfigurationData:\n"];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"\tKey Role          : 0x%04X\n", -[NSNumber unsignedShortValue](self->_keyRole, "unsignedShortValue")];
  [string appendString:v5];

  return string;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[DAAdditionalConfigurationData allocWithZone:](DAAdditionalConfigurationData init];
  if (v5)
  {
    v6 = [(NSNumber *)self->_keyRole copyWithZone:zone];
    keyRole = v5->_keyRole;
    v5->_keyRole = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  keyRole = self->_keyRole;
  coderCopy = coder;
  [coderCopy encodeInteger:-[NSNumber unsignedShortValue](keyRole forKey:{"unsignedShortValue"), @"keyRole"}];
}

- (DAAdditionalConfigurationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DAAdditionalConfigurationData;
  v5 = [(DAAdditionalConfigurationData *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"keyRole"}];
    keyRole = v5->_keyRole;
    v5->_keyRole = v6;
  }

  return v5;
}

@end