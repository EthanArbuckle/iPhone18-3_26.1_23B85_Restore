@interface CPSSystemAuthenticationRequest
- (CPSSystemAuthenticationRequest)initWithCoder:(id)a3;
- (CPSSystemAuthenticationRequest)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (int64_t)authType;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CPSSystemAuthenticationRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = self->_service - 1;
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", self->_service];
  }

  else
  {
    v5 = off_278DF17D8[v4];
  }

  [v3 appendString:v5 withName:@"service"];

  options = self->_options;
  v7 = CUPrintFlags64();
  [v3 appendString:v7 withName:@"options"];

  v8 = [v3 appendObject:self->_appleAccountAltDSID withName:@"appleAccountAltDSID"];
  v9 = [v3 build];

  return v9;
}

- (int64_t)authType
{
  v2 = *(self + 16) - 2;
  if (v2 < 3)
  {
    return qword_243D57510[v2];
  }

  __break(1u);
  return self;
}

- (CPSSystemAuthenticationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPSSystemAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v5->_service = [v4 decodeIntegerForKey:@"service"];
    v5->_options = [v4 decodeIntegerForKey:@"options"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"appleAccountAltDSID"];
    appleAccountAltDSID = v5->_appleAccountAltDSID;
    v5->_appleAccountAltDSID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSSystemAuthenticationRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_service forKey:{@"service", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_options forKey:@"options"];
  [v4 encodeObject:self->_appleAccountAltDSID forKey:@"appleAccountAltDSID"];
}

- (CPSSystemAuthenticationRequest)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSSystemAuthenticationRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:v4];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(CPSAuthenticationRequest *)v5 setIdentifier:v7];

    v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
    v5->_service = [v8 integerValue];

    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"options"];
    v5->_options = [v9 integerValue];

    v10 = [v6 decodeStringForKey:@"appleAccountAltDSID"];
    appleAccountAltDSID = v5->_appleAccountAltDSID;
    v5->_appleAccountAltDSID = v10;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v7 = [MEMORY[0x277CF0D20] coderWithMessage:a3];
  v4 = [(CPSAuthenticationRequest *)self identifier];
  [v7 encodeObject:v4 forKey:@"identifier"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_service];
  [v7 encodeObject:v5 forKey:@"service"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_options];
  [v7 encodeObject:v6 forKey:@"options"];

  [v7 encodeObject:self->_appleAccountAltDSID forKey:@"appleAccountAltDSID"];
}

@end