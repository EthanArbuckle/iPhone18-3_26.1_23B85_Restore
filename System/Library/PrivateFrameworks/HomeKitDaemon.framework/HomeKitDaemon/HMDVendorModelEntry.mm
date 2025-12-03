@interface HMDVendorModelEntry
- (BOOL)isEqual:(id)equal;
- (HMDVendorModelEntry)initWithEncodedData:(id)data;
- (HMDVendorModelEntry)initWithManufacturer:(id)manufacturer model:(id)model appBundleID:(id)d appStoreID:(id)iD firmwareVersion:(id)version productData:(id)data productDataAlternates:(id)alternates;
- (id)asEncodedData;
- (id)attributeDescriptions;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HMDVendorModelEntry

- (unint64_t)hash
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  manufacturer = [(HMDVendorModelEntry *)self manufacturer];
  v4 = [manufacturer hash];

  v24 = v4;
  model = [(HMDVendorModelEntry *)self model];
  v6 = [model hash];
  v22[3] ^= v6;

  appBundleID = [(HMDVendorModelEntry *)self appBundleID];
  v8 = [appBundleID hash];
  v22[3] ^= v8;

  appBundleID2 = [(HMDVendorModelEntry *)self appBundleID];
  v10 = [appBundleID2 hash];
  v22[3] ^= v10;

  appStoreID = [(HMDVendorModelEntry *)self appStoreID];
  v12 = [appStoreID hash];
  v22[3] ^= v12;

  firmwareVersion = [(HMDVendorModelEntry *)self firmwareVersion];
  v14 = [firmwareVersion hash];
  v22[3] ^= v14;

  productData = [(HMDVendorModelEntry *)self productData];
  v16 = [productData hash];
  v22[3] ^= v16;

  productDataAlternates = [(HMDVendorModelEntry *)self productDataAlternates];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__HMDVendorModelEntry_hash__block_invoke;
  v20[3] = &unk_278686E68;
  v20[4] = &v21;
  [productDataAlternates hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  v18 = v22[3];
  _Block_object_dispose(&v21, 8);
  return v18;
}

uint64_t __27__HMDVendorModelEntry_hash__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) ^= result;
  return result;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  manufacturer = [(HMDVendorModelEntry *)self manufacturer];
  manufacturer2 = [compareCopy manufacturer];
  v7 = [manufacturer compare:manufacturer2];

  if (!v7)
  {
    model = [(HMDVendorModelEntry *)self model];
    model2 = [compareCopy model];
    v7 = [model compare:model2];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      manufacturer = [(HMDVendorModelEntry *)self manufacturer];
      manufacturer2 = [(HMDVendorModelEntry *)v6 manufacturer];
      if ([manufacturer isEqualToString:manufacturer2])
      {
        model = [(HMDVendorModelEntry *)self model];
        model2 = [(HMDVendorModelEntry *)v6 model];
        if ([model isEqualToString:model2])
        {
          appBundleID = [(HMDVendorModelEntry *)self appBundleID];
          appBundleID2 = [(HMDVendorModelEntry *)v6 appBundleID];
          if (HMFEqualObjects())
          {
            appStoreID = [(HMDVendorModelEntry *)self appStoreID];
            appStoreID2 = [(HMDVendorModelEntry *)v6 appStoreID];
            v25 = appStoreID;
            if (HMFEqualObjects())
            {
              firmwareVersion = [(HMDVendorModelEntry *)self firmwareVersion];
              firmwareVersion2 = [(HMDVendorModelEntry *)v6 firmwareVersion];
              v23 = firmwareVersion;
              if (HMFEqualObjects())
              {
                productData = [(HMDVendorModelEntry *)self productData];
                [(HMDVendorModelEntry *)v6 productData];
                v16 = v21 = productData;
                if (HMFEqualObjects())
                {
                  productDataAlternates = [(HMDVendorModelEntry *)self productDataAlternates];
                  productDataAlternates2 = [(HMDVendorModelEntry *)v6 productDataAlternates];
                  v17 = HMFEqualObjects();
                }

                else
                {
                  v17 = 0;
                }
              }

              else
              {
                v17 = 0;
              }
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  manufacturer = [(HMDVendorModelEntry *)self manufacturer];
  v25 = [v3 initWithName:@"Manufacturer" value:manufacturer];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  model = [(HMDVendorModelEntry *)self model];
  v23 = [v4 initWithName:@"Model" value:model];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  appBundleID = [(HMDVendorModelEntry *)self appBundleID];
  v6 = [v5 initWithName:@"AppBundleID" value:appBundleID];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  appStoreID = [(HMDVendorModelEntry *)self appStoreID];
  v9 = [v7 initWithName:@"AppStoreID" value:appStoreID];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  firmwareVersion = [(HMDVendorModelEntry *)self firmwareVersion];
  v12 = [v10 initWithName:@"FirmwareVersion" value:firmwareVersion];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  productData = [(HMDVendorModelEntry *)self productData];
  v15 = [v13 initWithName:@"ProductData" value:productData];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  productDataAlternates = [(HMDVendorModelEntry *)self productDataAlternates];
  v18 = [v16 initWithName:@"ProductDataAlternates" value:productDataAlternates];
  v27[6] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)asEncodedData
{
  v3 = objc_opt_new();
  [v3 hmf_appendObject:self->_model];
  [v3 hmf_appendObject:self->_manufacturer];
  [v3 hmf_appendObject:self->_appBundleID];
  [v3 hmf_appendObject:self->_appStoreID];
  versionString = [(HMDAccessoryVersion *)self->_firmwareVersion versionString];
  [v3 hmf_appendObject:versionString];

  [v3 hmf_appendObject:self->_productData];
  [v3 hmf_appendObject:self->_productDataAlternates];
  v5 = [v3 copy];

  return v5;
}

- (HMDVendorModelEntry)initWithEncodedData:(id)data
{
  v28 = 0;
  dataCopy = data;
  v5 = [dataCopy hmf_readObjectAtOffset:&v28];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [dataCopy hmf_readObjectAtOffset:&v28];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [dataCopy hmf_readObjectAtOffset:&v28];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [dataCopy hmf_readObjectAtOffset:&v28];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [dataCopy hmf_readObjectAtOffset:&v28];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [dataCopy hmf_readObjectAtOffset:&v28];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = [dataCopy hmf_readObjectAtOffset:&v28];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  v26 = [(HMDVendorModelEntry *)self initWithManufacturer:v10 model:v7 appBundleID:v13 appStoreID:v16 firmwareVersion:v19 productData:v22 productDataAlternates:v25];
  return v26;
}

- (HMDVendorModelEntry)initWithManufacturer:(id)manufacturer model:(id)model appBundleID:(id)d appStoreID:(id)iD firmwareVersion:(id)version productData:(id)data productDataAlternates:(id)alternates
{
  manufacturerCopy = manufacturer;
  modelCopy = model;
  dCopy = d;
  iDCopy = iD;
  versionCopy = version;
  dataCopy = data;
  alternatesCopy = alternates;
  v38.receiver = self;
  v38.super_class = HMDVendorModelEntry;
  v22 = [(HMDVendorModelEntry *)&v38 init];
  if (v22)
  {
    v23 = [manufacturerCopy copy];
    manufacturer = v22->_manufacturer;
    v22->_manufacturer = v23;

    v25 = [modelCopy copy];
    model = v22->_model;
    v22->_model = v25;

    v27 = [dCopy copy];
    appBundleID = v22->_appBundleID;
    v22->_appBundleID = v27;

    v29 = [iDCopy copy];
    appStoreID = v22->_appStoreID;
    v22->_appStoreID = v29;

    if (versionCopy)
    {
      v31 = [[HMDAccessoryVersion alloc] initWithString:versionCopy];
      firmwareVersion = v22->_firmwareVersion;
      v22->_firmwareVersion = v31;
    }

    v33 = [dataCopy copy];
    productData = v22->_productData;
    v22->_productData = v33;

    v35 = [alternatesCopy copy];
    productDataAlternates = v22->_productDataAlternates;
    v22->_productDataAlternates = v35;
  }

  return v22;
}

@end