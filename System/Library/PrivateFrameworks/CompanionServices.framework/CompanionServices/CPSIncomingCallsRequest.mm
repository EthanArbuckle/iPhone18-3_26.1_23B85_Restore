@interface CPSIncomingCallsRequest
- (CPSIncomingCallsRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSIncomingCallsRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_appleAccountAltDSID withName:@"appleAccountAltDSID"];
  [v3 appendString:self->_deviceIdentifier withName:@"deviceIdentifier"];
  build = [v3 build];

  return build;
}

- (CPSIncomingCallsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPSIncomingCallsRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"appleAccountAltDSID"];
    appleAccountAltDSID = v5->_appleAccountAltDSID;
    v5->_appleAccountAltDSID = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSIncomingCallsRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_appleAccountAltDSID forKey:{@"appleAccountAltDSID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
}

@end