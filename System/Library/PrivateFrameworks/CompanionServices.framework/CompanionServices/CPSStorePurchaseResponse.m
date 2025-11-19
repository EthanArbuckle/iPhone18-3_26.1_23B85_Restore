@interface CPSStorePurchaseResponse
- (CPSStorePurchaseResponse)initWithCoder:(id)a3;
- (CPSStorePurchaseResponse)initWithPurchaseResult:(id)a3;
- (id)description;
@end

@implementation CPSStorePurchaseResponse

- (CPSStorePurchaseResponse)initWithPurchaseResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPSStorePurchaseResponse;
  v6 = [(CPSStorePurchaseResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchaseResult, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_purchaseResult withName:@"purchaseResult"];
  v5 = [v3 build];

  return v5;
}

- (CPSStorePurchaseResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPSStorePurchaseResponse;
  v5 = [(CPSStorePurchaseResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:getAMSDelegatePurchaseResultClass() forKey:@"purchaseResult"];
    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v6;
  }

  return v5;
}

@end