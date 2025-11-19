@interface HMDAccessoryMetricVendorDetails
- (HMDAccessoryMetricVendorDetails)initWithAccessory:(id)a3;
- (HMDAccessoryMetricVendorDetails)initWithProductData:(id)a3 manufacturer:(id)a4 model:(id)a5 firmwareVersion:(id)a6 category:(id)a7 differentiationNumber:(id)a8;
- (id)attributeDescriptions;
@end

@implementation HMDAccessoryMetricVendorDetails

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMDAccessoryMetricVendorDetails *)self manufacturer];
  v4 = [v3 initWithName:@"manufacturer" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMDAccessoryMetricVendorDetails *)self model];
  v7 = [v5 initWithName:@"model" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDAccessoryMetricVendorDetails *)self firmwareVersion];
  v10 = [v8 initWithName:@"firmwareVersion" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMDAccessoryMetricVendorDetails *)self category];
  v13 = [v11 initWithName:@"category" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMDAccessoryMetricVendorDetails *)self differentiationNumber];
  v16 = [v14 initWithName:@"differentiationNumber" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMDAccessoryMetricVendorDetails)initWithProductData:(id)a3 manufacturer:(id)a4 model:(id)a5 firmwareVersion:(id)a6 category:(id)a7 differentiationNumber:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMDAccessoryMetricVendorDetails;
  v18 = [(HMDAccessoryMetricVendorDetails *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_productData, a3);
    objc_storeStrong(&v19->_manufacturer, a4);
    objc_storeStrong(&v19->_model, a5);
    objc_storeStrong(&v19->_firmwareVersion, a6);
    objc_storeStrong(&v19->_category, a7);
    objc_storeStrong(&v19->_differentiationNumber, a8);
  }

  return v19;
}

- (HMDAccessoryMetricVendorDetails)initWithAccessory:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 home];
  v7 = [v6 homeManager];

  v57 = v7;
  v55 = v3;
  v53 = v5;
  if ([v5 communicationProtocol] == 2)
  {
    v8 = [v5 matterVendorID];

    if (v8)
    {
      v9 = [v7 chipDataSource];
      v10 = [v9 vendorMetadataStore];
      v11 = [v5 matterVendorID];
      v12 = [v5 matterProductID];
      v13 = [v10 retrieveVendorMetadataForVendorID:v11 productID:v12];

      v14 = [v5 matterProductID];
      v15 = [v13 productWithID:v14];

      v16 = [v13 name];
      v50 = v15;
      v17 = [v15 name];
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v13 = 0;
      v50 = 0;
    }

    v22 = [v5 matterVendorID];

    if (v22)
    {
      v23 = v13 == 0;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v24 = [v5 matterVendorID];
      v25 = [v24 stringValue];

      v16 = v25;
    }

    v26 = [v5 matterProductID];

    if (v26 && !v50)
    {
      v27 = [v5 matterProductID];
      v28 = [v27 stringValue];

      v17 = v28;
    }

    v52 = [v3 firmwareVersion];
    v29 = [v52 versionString];
    v30 = [v5 category];
    v31 = [v30 categoryType];
    v32 = MEMORY[0x277CCABB0];
    v33 = [v3 uuid];
    v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "hash") % objc_msgSend(objc_opt_class(), "maximumDifferentiationNumber")}];
    v35 = v16;
    v36 = [(HMDAccessoryMetricVendorDetails *)self initWithProductData:0 manufacturer:v16 model:v17 firmwareVersion:v29 category:v31 differentiationNumber:v34];
    v38 = v49;
    v37 = v50;
  }

  else
  {
    v18 = [v3 vendorInfo];
    v19 = [v3 productData];
    v20 = v19;
    if (v18)
    {
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = [v18 productData];
      }
    }

    else
    {
      v21 = anonymizeUnknownVendorString(v19);
    }

    v51 = v21;

    v39 = v3;
    v54 = v18;
    if (v18)
    {
      v38 = [v18 manufacturer];

      v37 = [v18 model];
    }

    else
    {
      v40 = +[HMDVendorDataManager sharedVendorDataManager];
      v41 = [v39 manufacturer];
      v42 = [v40 databaseContainsManufacturer:v41];

      v43 = [v39 manufacturer];
      v38 = v43;
      if ((v42 & 1) == 0)
      {
        v44 = anonymizeUnknownVendorString(v43);

        v38 = v44;
      }

      v45 = [v39 model];
      v37 = anonymizeUnknownVendorString(v45);
    }

    v52 = [v39 firmwareVersion];
    v29 = [v52 versionString];
    v30 = [v39 category];
    v31 = [v30 categoryType];
    v46 = MEMORY[0x277CCABB0];
    v33 = [v39 uuid];
    v34 = [v46 numberWithUnsignedInteger:{objc_msgSend(v33, "hash") % objc_msgSend(objc_opt_class(), "maximumDifferentiationNumber")}];
    v17 = v51;
    v36 = [(HMDAccessoryMetricVendorDetails *)self initWithProductData:v51 manufacturer:v38 model:v37 firmwareVersion:v29 category:v31 differentiationNumber:v34];
    v35 = v54;
  }

  v47 = v36;

  return v47;
}

@end