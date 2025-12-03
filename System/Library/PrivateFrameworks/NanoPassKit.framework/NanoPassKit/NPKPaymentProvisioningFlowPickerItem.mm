@interface NPKPaymentProvisioningFlowPickerItem
+ (id)itemWithIdentifier:(id)identifier products:(id)products;
+ (id)itemWithIdentifier:(id)identifier title:(id)title products:(id)products;
- (id)description;
@end

@implementation NPKPaymentProvisioningFlowPickerItem

+ (id)itemWithIdentifier:(id)identifier title:(id)title products:(id)products
{
  identifierCopy = identifier;
  titleCopy = title;
  productsCopy = products;
  v12 = objc_alloc_init(self);
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 3, identifier);
    v14 = [titleCopy copy];
    v15 = v13[1];
    v13[1] = v14;

    v16 = [productsCopy copy];
    v17 = v13[2];
    v13[2] = v16;
  }

  return v13;
}

+ (id)itemWithIdentifier:(id)identifier products:(id)products
{
  identifierCopy = identifier;
  productsCopy = products;
  v9 = objc_alloc_init(self);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 3, identifier);
    v11 = [productsCopy copy];
    v12 = v10[2];
    v10[2] = v11;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(NPKPaymentProvisioningFlowPickerItem *)self title];
  products = [(NPKPaymentProvisioningFlowPickerItem *)self products];
  v7 = [v3 stringWithFormat:@"<%@: %p title %@ products %@>", v4, self, title, products];

  return v7;
}

@end