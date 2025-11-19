@interface NPKPaymentProvisioningFlowPickerSection
+ (id)sectionWithTitle:(id)a3 footer:(id)a4 productType:(id)a5;
+ (id)sectionWithTitle:(id)a3 footer:(id)a4 productType:(id)a5 items:(id)a6;
+ (id)sectionWithTitle:(id)a3 productType:(id)a4;
- (BOOL)isAppleBalanceSection;
- (BOOL)isEMoneySection;
- (BOOL)isPaymentSection;
- (BOOL)isTransitSection;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowPickerSection

+ (id)sectionWithTitle:(id)a3 productType:(id)a4
{
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v10 = [a1 sectionWithTitle:v8 footer:0 productType:v7 items:v9];

  return v10;
}

+ (id)sectionWithTitle:(id)a3 footer:(id)a4 productType:(id)a5
{
  v8 = MEMORY[0x277CBEA60];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 array];
  v13 = [a1 sectionWithTitle:v11 footer:v10 productType:v9 items:v12];

  return v13;
}

+ (id)sectionWithTitle:(id)a3 footer:(id)a4 productType:(id)a5 items:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(a1);
  if (v14)
  {
    v15 = [v10 copy];
    v16 = *(v14 + 1);
    *(v14 + 1) = v15;

    v17 = [v11 copy];
    v18 = *(v14 + 2);
    *(v14 + 2) = v17;

    v19 = MEMORY[0x277CBEB18];
    v20 = [v13 copy];
    v21 = [v19 arrayWithArray:v20];
    v22 = *(v14 + 3);
    *(v14 + 3) = v21;

    objc_storeStrong(v14 + 4, a5);
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NPKPaymentProvisioningFlowPickerSection *)self title];
  v6 = [(NPKPaymentProvisioningFlowPickerSection *)self footer];
  v7 = [(NPKPaymentProvisioningFlowPickerSection *)self items];
  v8 = [v3 stringWithFormat:@"<%@: %p title %@ footer %@ items %@>", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)isTransitSection
{
  v2 = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v3 = [v2 isEqualToNumber:&unk_286CE7618];

  return v3;
}

- (BOOL)isPaymentSection
{
  v2 = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v3 = [v2 isEqualToNumber:&unk_286CE7630];

  return v3;
}

- (BOOL)isEMoneySection
{
  v2 = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v3 = [v2 isEqualToNumber:&unk_286CE7648];

  return v3;
}

- (BOOL)isAppleBalanceSection
{
  v3 = [(NPKPaymentProvisioningFlowPickerSection *)self productType];
  v4 = [v3 isEqualToNumber:&unk_286CE7660];

  if (!v4)
  {
    return 0;
  }

  v5 = [(NPKPaymentProvisioningFlowPickerSection *)self items];
  v6 = [v5 pk_containsObjectPassingTest:&__block_literal_global_3];

  return v6;
}

uint64_t __64__NPKPaymentProvisioningFlowPickerSection_isAppleBalanceSection__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 products];
  v3 = [v2 pk_containsObjectPassingTest:&__block_literal_global_97];

  return v3;
}

@end