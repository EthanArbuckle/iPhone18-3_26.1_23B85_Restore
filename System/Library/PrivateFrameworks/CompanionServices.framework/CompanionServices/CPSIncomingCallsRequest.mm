@interface CPSIncomingCallsRequest
- (CPSIncomingCallsRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSIncomingCallsRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_appleAccountAltDSID withName:@"appleAccountAltDSID"];
  [v3 appendString:self->_deviceIdentifier withName:@"deviceIdentifier"];
  v5 = [v3 build];

  return v5;
}

- (CPSIncomingCallsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSIncomingCallsRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"appleAccountAltDSID"];
    appleAccountAltDSID = v5->_appleAccountAltDSID;
    v5->_appleAccountAltDSID = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSIncomingCallsRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_appleAccountAltDSID forKey:{@"appleAccountAltDSID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
}

@end