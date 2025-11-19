@interface CKDTransactionState
- (CKDTransactionState)init;
@end

@implementation CKDTransactionState

- (CKDTransactionState)init
{
  v8.receiver = self;
  v8.super_class = CKDTransactionState;
  v2 = [(CKDTransactionState *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    itemsByAssetId = v2->_itemsByAssetId;
    v2->_itemsByAssetId = v3;

    v5 = objc_opt_new();
    itemsByAssetIdIgnoreRefSignature = v2->_itemsByAssetIdIgnoreRefSignature;
    v2->_itemsByAssetIdIgnoreRefSignature = v5;
  }

  return v2;
}

@end