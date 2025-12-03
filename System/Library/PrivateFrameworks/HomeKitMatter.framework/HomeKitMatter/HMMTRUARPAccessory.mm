@interface HMMTRUARPAccessory
+ (id)fromUARPSupportedAccessory:(id)accessory;
- (HMMTRUARPAccessory)initWithProductNumber:(id)number vendorID:(unsigned __int16)d productID:(unsigned __int16)iD vendorName:(id)name accessoryCategoryNumber:(unint64_t)categoryNumber accessoryMarketingName:(id)marketingName accessoryProductLabel:(id)label accessoryInstallationGuideURL:(id)self0;
@end

@implementation HMMTRUARPAccessory

- (HMMTRUARPAccessory)initWithProductNumber:(id)number vendorID:(unsigned __int16)d productID:(unsigned __int16)iD vendorName:(id)name accessoryCategoryNumber:(unint64_t)categoryNumber accessoryMarketingName:(id)marketingName accessoryProductLabel:(id)label accessoryInstallationGuideURL:(id)self0
{
  numberCopy = number;
  nameCopy = name;
  marketingNameCopy = marketingName;
  labelCopy = label;
  lCopy = l;
  v25.receiver = self;
  v25.super_class = HMMTRUARPAccessory;
  v18 = [(HMMTRUARPAccessory *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_productNumber, number);
    v19->_vendorID = d;
    v19->_productID = iD;
    objc_storeStrong(&v19->_vendorName, name);
    v19->_accessoryCategoryNumber = categoryNumber;
    objc_storeStrong(&v19->_accessoryMarketingName, marketingName);
    objc_storeStrong(&v19->_accessoryProductLabel, label);
    objc_storeStrong(&v19->_accessoryInstallationGuideURL, l);
  }

  return v19;
}

+ (id)fromUARPSupportedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (accessoryCopy && ([accessoryCopy productNumber], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    hardwareID = [v5 hardwareID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = hardwareID;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      metadata = [v9 metadata];
      v11 = [self alloc];
      productNumber = [v5 productNumber];
      vendorID = [v9 vendorID];
      productID = [v9 productID];
      vendorName = [metadata vendorName];
      if (metadata)
      {
        accessoryCategoryNumber = [metadata accessoryCategoryNumber];
      }

      else
      {
        accessoryCategoryNumber = 0;
      }

      accessoryMarketingName = [metadata accessoryMarketingName];
      accessoryProductLabel = [metadata accessoryProductLabel];
      accessoryInstallationGuideURL = [metadata accessoryInstallationGuideURL];
      v15 = [v11 initWithProductNumber:productNumber vendorID:vendorID productID:productID vendorName:vendorName accessoryCategoryNumber:accessoryCategoryNumber accessoryMarketingName:accessoryMarketingName accessoryProductLabel:accessoryProductLabel accessoryInstallationGuideURL:accessoryInstallationGuideURL];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end