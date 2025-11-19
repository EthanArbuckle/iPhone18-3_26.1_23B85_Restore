@interface NPKPaymentProvisioningFlowPickerItem
+ (id)itemWithIdentifier:(id)a3 products:(id)a4;
+ (id)itemWithIdentifier:(id)a3 title:(id)a4 products:(id)a5;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowPickerItem

+ (id)itemWithIdentifier:(id)a3 title:(id)a4 products:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(a1);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 3, a3);
    v14 = [v10 copy];
    v15 = v13[1];
    v13[1] = v14;

    v16 = [v11 copy];
    v17 = v13[2];
    v13[2] = v16;
  }

  return v13;
}

+ (id)itemWithIdentifier:(id)a3 products:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(a1);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 3, a3);
    v11 = [v8 copy];
    v12 = v10[2];
    v10[2] = v11;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NPKPaymentProvisioningFlowPickerItem *)self title];
  v6 = [(NPKPaymentProvisioningFlowPickerItem *)self products];
  v7 = [v3 stringWithFormat:@"<%@: %p title %@ products %@>", v4, self, v5, v6];

  return v7;
}

@end