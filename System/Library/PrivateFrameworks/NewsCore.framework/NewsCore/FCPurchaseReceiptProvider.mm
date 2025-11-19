@interface FCPurchaseReceiptProvider
- (id)purchaseReceiptWithBundleID:(id)a3;
@end

@implementation FCPurchaseReceiptProvider

- (id)purchaseReceiptWithBundleID:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 appStoreReceiptURL];
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

@end