@interface CPSStorePurchaseResponse
- (CPSStorePurchaseResponse)initWithCoder:(id)coder;
- (CPSStorePurchaseResponse)initWithPurchaseResult:(id)result;
- (id)description;
@end

@implementation CPSStorePurchaseResponse

- (CPSStorePurchaseResponse)initWithPurchaseResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = CPSStorePurchaseResponse;
  v6 = [(CPSStorePurchaseResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_purchaseResult, result);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_purchaseResult withName:@"purchaseResult"];
  build = [v3 build];

  return build;
}

- (CPSStorePurchaseResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPSStorePurchaseResponse;
  v5 = [(CPSStorePurchaseResponse *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:getAMSDelegatePurchaseResultClass() forKey:@"purchaseResult"];
    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v6;
  }

  return v5;
}

@end