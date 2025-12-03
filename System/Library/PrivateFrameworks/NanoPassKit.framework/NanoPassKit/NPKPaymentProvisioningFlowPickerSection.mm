@interface NPKPaymentProvisioningFlowPickerSection
+ (id)sectionWithTitle:(id)title footer:(id)footer productType:(id)type;
+ (id)sectionWithTitle:(id)title footer:(id)footer productType:(id)type items:(id)items;
+ (id)sectionWithTitle:(id)title productType:(id)type;
- (BOOL)isAppleBalanceSection;
- (BOOL)isEMoneySection;
- (BOOL)isPaymentSection;
- (BOOL)isTransitSection;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowPickerSection

+ (id)sectionWithTitle:(id)title productType:(id)type
{
  v6 = MEMORY[0x277CBEA60];
  typeCopy = type;
  titleCopy = title;
  array = [v6 array];
  v10 = [self sectionWithTitle:titleCopy footer:0 productType:typeCopy items:array];

  return v10;
}

+ (id)sectionWithTitle:(id)title footer:(id)footer productType:(id)type
{
  v8 = MEMORY[0x277CBEA60];
  typeCopy = type;
  footerCopy = footer;
  titleCopy = title;
  array = [v8 array];
  v13 = [self sectionWithTitle:titleCopy footer:footerCopy productType:typeCopy items:array];

  return v13;
}

+ (id)sectionWithTitle:(id)title footer:(id)footer productType:(id)type items:(id)items
{
  titleCopy = title;
  footerCopy = footer;
  typeCopy = type;
  itemsCopy = items;
  v14 = objc_alloc_init(self);
  if (v14)
  {
    v15 = [titleCopy copy];
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;

    v17 = [footerCopy copy];
    v18 = *(v14 + 2);
    *(v14 + 2) = v17;

    v19 = MEMORY[0x277CBEB18];
    v20 = [itemsCopy copy];
    v21 = [v19 arrayWithArray:v20];
    v22 = *(v14 + 3);
    *(v14 + 3) = v21;

    objc_storeStrong(v14 + 4, type);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(NPKPaymentProvisioningFlowPickerSection *)self title];
  footer = [(NPKPaymentProvisioningFlowPickerSection *)self footer];
  items = [(NPKPaymentProvisioningFlowPickerSection *)self items];
  v8 = [v3 stringWithFormat:@"<%@: %p title %@ footer %@ items %@>", v4, self, title, footer, items];

  return v8;
}

- (BOOL)isTransitSection
{
  productType = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v3 = [productType isEqualToNumber:&unk_286CE7618];

  return v3;
}

- (BOOL)isPaymentSection
{
  productType = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v3 = [productType isEqualToNumber:&unk_286CE7630];

  return v3;
}

- (BOOL)isEMoneySection
{
  productType = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v3 = [productType isEqualToNumber:&unk_286CE7648];

  return v3;
}

- (BOOL)isAppleBalanceSection
{
  productType = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v4 = [productType isEqualToNumber:&unk_286CE7660];

  if (!v4)
  {
    return 0;
  }

  items = [(NPKPaymentProvisioningFlowPickerSection *)self items];
  v6 = [items pk_containsObjectPassingTest:&__block_literal_global_3];

  return v6;
}

uint64_t __64__NPKPaymentProvisioningFlowPickerSection_isAppleBalanceSection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 products];
  v3 = [v2 pk_containsObjectPassingTest:&__block_literal_global_97];

  return v3;
}

@end