@interface FCPurchaseReceiptProvider
- (id)purchaseReceiptWithBundleID:(id)d;
@end

@implementation FCPurchaseReceiptProvider

- (id)purchaseReceiptWithBundleID:(id)d
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  appStoreReceiptURL = [mainBundle appStoreReceiptURL];
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:appStoreReceiptURL];
  v6 = [v5 base64EncodedStringWithOptions:0];

  return v6;
}

@end