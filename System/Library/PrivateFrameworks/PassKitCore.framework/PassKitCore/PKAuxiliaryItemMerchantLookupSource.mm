@interface PKAuxiliaryItemMerchantLookupSource
- (PKAuxiliaryItemMerchantLookupSource)initWithAuxiliaryItem:(id)item;
@end

@implementation PKAuxiliaryItemMerchantLookupSource

- (PKAuxiliaryItemMerchantLookupSource)initWithAuxiliaryItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PKAuxiliaryItemMerchantLookupSource;
  v6 = [(PKAuxiliaryItemMerchantLookupSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

@end