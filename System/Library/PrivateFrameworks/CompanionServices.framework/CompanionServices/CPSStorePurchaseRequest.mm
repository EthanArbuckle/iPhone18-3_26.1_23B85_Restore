@interface CPSStorePurchaseRequest
- (CPSStorePurchaseRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSStorePurchaseRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_purchaseRequest withName:@"purchaseRequest"];
  v5 = [v3 appendObject:self->_account withName:@"account"];
  v6 = [v3 appendObject:self->_deviceName withName:@"deviceName"];
  v7 = [v3 build];

  return v7;
}

- (CPSStorePurchaseRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPSStorePurchaseRequest;
  v5 = [(CPSAuthenticationRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:getAMSDelegatePurchaseRequestClass() forKey:@"purchaseRequest"];
    purchaseRequest = v5->_purchaseRequest;
    v5->_purchaseRequest = v6;

    v8 = objc_opt_self();
    v9 = [v4 decodeObjectOfClass:v8 forKey:@"account"];
    account = v5->_account;
    v5->_account = v9;

    v11 = objc_opt_self();
    v12 = [v4 decodeObjectOfClass:v11 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSStorePurchaseRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_purchaseRequest forKey:{@"purchaseRequest", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_account forKey:@"account"];
  [v4 encodeObject:self->_deviceName forKey:@"deviceName"];
}

@end