@interface MSPurchaseBatch
- (id)copyContinuationsForPurchases:(id)purchases;
@end

@implementation MSPurchaseBatch

- (id)copyContinuationsForPurchases:(id)purchases
{
  if ([purchases count] != 1)
  {
    return 0;
  }

  v5 = [purchases objectAtIndex:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = [[MSTonePurchaseContinuation alloc] initWithPurchase:v5];
  [(SUPurchaseContinuation *)v6 setPurchaseManager:[(SUPurchaseBatch *)self purchaseManager]];
  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v6, 0}];

  return v7;
}

@end