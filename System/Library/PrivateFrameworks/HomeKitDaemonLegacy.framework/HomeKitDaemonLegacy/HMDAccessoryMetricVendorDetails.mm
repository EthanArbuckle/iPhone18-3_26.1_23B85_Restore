@interface HMDAccessoryMetricVendorDetails
- (HMDAccessoryMetricVendorDetails)initWithAccessory:(id)accessory;
- (HMDAccessoryMetricVendorDetails)initWithProductData:(id)data manufacturer:(id)manufacturer model:(id)model firmwareVersion:(id)version category:(id)category differentiationNumber:(id)number;
- (id)attributeDescriptions;
@end

@implementation HMDAccessoryMetricVendorDetails

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  manufacturer = [(HMDAccessoryMetricVendorDetails *)self manufacturer];
  v4 = [v3 initWithName:@"manufacturer" value:manufacturer];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMDAccessoryMetricVendorDetails *)self model];
  v7 = [v5 initWithName:@"model" value:model];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  firmwareVersion = [(HMDAccessoryMetricVendorDetails *)self firmwareVersion];
  v10 = [v8 initWithName:@"firmwareVersion" value:firmwareVersion];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  category = [(HMDAccessoryMetricVendorDetails *)self category];
  v13 = [v11 initWithName:@"category" value:category];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  differentiationNumber = [(HMDAccessoryMetricVendorDetails *)self differentiationNumber];
  v16 = [v14 initWithName:@"differentiationNumber" value:differentiationNumber];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMDAccessoryMetricVendorDetails)initWithProductData:(id)data manufacturer:(id)manufacturer model:(id)model firmwareVersion:(id)version category:(id)category differentiationNumber:(id)number
{
  dataCopy = data;
  manufacturerCopy = manufacturer;
  modelCopy = model;
  versionCopy = version;
  categoryCopy = category;
  numberCopy = number;
  v24.receiver = self;
  v24.super_class = HMDAccessoryMetricVendorDetails;
  v18 = [(HMDAccessoryMetricVendorDetails *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_productData, data);
    objc_storeStrong(&v19->_manufacturer, manufacturer);
    objc_storeStrong(&v19->_model, model);
    objc_storeStrong(&v19->_firmwareVersion, version);
    objc_storeStrong(&v19->_category, category);
    objc_storeStrong(&v19->_differentiationNumber, number);
  }

  return v19;
}

- (HMDAccessoryMetricVendorDetails)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = accessoryCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  home = [v5 home];
  homeManager = [home homeManager];

  v57 = homeManager;
  v55 = accessoryCopy;
  v53 = v5;
  if ([v5 communicationProtocol] == 2)
  {
    matterVendorID = [v5 matterVendorID];

    if (matterVendorID)
    {
      chipDataSource = [homeManager chipDataSource];
      vendorMetadataStore = [chipDataSource vendorMetadataStore];
      matterVendorID2 = [v5 matterVendorID];
      matterProductID = [v5 matterProductID];
      v13 = [vendorMetadataStore retrieveVendorMetadataForVendorID:matterVendorID2 productID:matterProductID];

      matterProductID2 = [v5 matterProductID];
      v15 = [v13 productWithID:matterProductID2];

      name = [v13 name];
      v50 = v15;
      name2 = [v15 name];
    }

    else
    {
      name = 0;
      name2 = 0;
      v13 = 0;
      v50 = 0;
    }

    matterVendorID3 = [v5 matterVendorID];

    if (matterVendorID3)
    {
      v23 = v13 == 0;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      matterVendorID4 = [v5 matterVendorID];
      stringValue = [matterVendorID4 stringValue];

      name = stringValue;
    }

    matterProductID3 = [v5 matterProductID];

    if (matterProductID3 && !v50)
    {
      matterProductID4 = [v5 matterProductID];
      stringValue2 = [matterProductID4 stringValue];

      name2 = stringValue2;
    }

    firmwareVersion = [accessoryCopy firmwareVersion];
    versionString = [firmwareVersion versionString];
    category = [v5 category];
    categoryType = [category categoryType];
    v32 = MEMORY[0x277CCABB0];
    uuid = [accessoryCopy uuid];
    v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(uuid, "hash") % objc_msgSend(objc_opt_class(), "maximumDifferentiationNumber")}];
    v35 = name;
    v36 = [(HMDAccessoryMetricVendorDetails *)self initWithProductData:0 manufacturer:name model:name2 firmwareVersion:versionString category:categoryType differentiationNumber:v34];
    manufacturer = v49;
    model = v50;
  }

  else
  {
    vendorInfo = [accessoryCopy vendorInfo];
    productData = [accessoryCopy productData];
    v20 = productData;
    if (vendorInfo)
    {
      if (productData)
      {
        productData2 = productData;
      }

      else
      {
        productData2 = [vendorInfo productData];
      }
    }

    else
    {
      productData2 = anonymizeUnknownVendorString(productData);
    }

    v51 = productData2;

    v39 = accessoryCopy;
    v54 = vendorInfo;
    if (vendorInfo)
    {
      manufacturer = [vendorInfo manufacturer];

      model = [vendorInfo model];
    }

    else
    {
      v40 = +[HMDVendorDataManager sharedVendorDataManager];
      manufacturer2 = [v39 manufacturer];
      v42 = [v40 databaseContainsManufacturer:manufacturer2];

      manufacturer3 = [v39 manufacturer];
      manufacturer = manufacturer3;
      if ((v42 & 1) == 0)
      {
        v44 = anonymizeUnknownVendorString(manufacturer3);

        manufacturer = v44;
      }

      model2 = [v39 model];
      model = anonymizeUnknownVendorString(model2);
    }

    firmwareVersion = [v39 firmwareVersion];
    versionString = [firmwareVersion versionString];
    category = [v39 category];
    categoryType = [category categoryType];
    v46 = MEMORY[0x277CCABB0];
    uuid = [v39 uuid];
    v34 = [v46 numberWithUnsignedInteger:{objc_msgSend(uuid, "hash") % objc_msgSend(objc_opt_class(), "maximumDifferentiationNumber")}];
    name2 = v51;
    v36 = [(HMDAccessoryMetricVendorDetails *)self initWithProductData:v51 manufacturer:manufacturer model:model firmwareVersion:versionString category:categoryType differentiationNumber:v34];
    v35 = v54;
  }

  v47 = v36;

  return v47;
}

@end