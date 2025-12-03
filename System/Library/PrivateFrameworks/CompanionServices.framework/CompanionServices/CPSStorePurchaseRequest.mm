@interface CPSStorePurchaseRequest
- (CPSStorePurchaseRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSStorePurchaseRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_purchaseRequest withName:@"purchaseRequest"];
  v5 = [v3 appendObject:self->_account withName:@"account"];
  v6 = [v3 appendObject:self->_deviceName withName:@"deviceName"];
  build = [v3 build];

  return build;
}

- (CPSStorePurchaseRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPSStorePurchaseRequest;
  v5 = [(CPSAuthenticationRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:getAMSDelegatePurchaseRequestClass() forKey:@"purchaseRequest"];
    purchaseRequest = v5->_purchaseRequest;
    v5->_purchaseRequest = v6;

    v8 = objc_opt_self();
    v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"account"];
    account = v5->_account;
    v5->_account = v9;

    v11 = objc_opt_self();
    v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSStorePurchaseRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_purchaseRequest forKey:{@"purchaseRequest", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_account forKey:@"account"];
  [coderCopy encodeObject:self->_deviceName forKey:@"deviceName"];
}

@end