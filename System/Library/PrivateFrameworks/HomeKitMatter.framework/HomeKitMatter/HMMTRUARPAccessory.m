@interface HMMTRUARPAccessory
+ (id)fromUARPSupportedAccessory:(id)a3;
- (HMMTRUARPAccessory)initWithProductNumber:(id)a3 vendorID:(unsigned __int16)a4 productID:(unsigned __int16)a5 vendorName:(id)a6 accessoryCategoryNumber:(unint64_t)a7 accessoryMarketingName:(id)a8 accessoryProductLabel:(id)a9 accessoryInstallationGuideURL:(id)a10;
@end

@implementation HMMTRUARPAccessory

- (HMMTRUARPAccessory)initWithProductNumber:(id)a3 vendorID:(unsigned __int16)a4 productID:(unsigned __int16)a5 vendorName:(id)a6 accessoryCategoryNumber:(unint64_t)a7 accessoryMarketingName:(id)a8 accessoryProductLabel:(id)a9 accessoryInstallationGuideURL:(id)a10
{
  v24 = a3;
  v23 = a6;
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v25.receiver = self;
  v25.super_class = HMMTRUARPAccessory;
  v18 = [(HMMTRUARPAccessory *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_productNumber, a3);
    v19->_vendorID = a4;
    v19->_productID = a5;
    objc_storeStrong(&v19->_vendorName, a6);
    v19->_accessoryCategoryNumber = a7;
    objc_storeStrong(&v19->_accessoryMarketingName, a8);
    objc_storeStrong(&v19->_accessoryProductLabel, a9);
    objc_storeStrong(&v19->_accessoryInstallationGuideURL, a10);
  }

  return v19;
}

+ (id)fromUARPSupportedAccessory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 productNumber], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 hardwareID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 metadata];
      v11 = [a1 alloc];
      v21 = [v5 productNumber];
      v20 = [v9 vendorID];
      v12 = [v9 productID];
      v13 = [v10 vendorName];
      if (v10)
      {
        v14 = [v10 accessoryCategoryNumber];
      }

      else
      {
        v14 = 0;
      }

      v16 = [v10 accessoryMarketingName];
      v17 = [v10 accessoryProductLabel];
      v18 = [v10 accessoryInstallationGuideURL];
      v15 = [v11 initWithProductNumber:v21 vendorID:v20 productID:v12 vendorName:v13 accessoryCategoryNumber:v14 accessoryMarketingName:v16 accessoryProductLabel:v17 accessoryInstallationGuideURL:v18];
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