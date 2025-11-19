@interface HMDVendorModelEntry
- (BOOL)isEqual:(id)a3;
- (HMDVendorModelEntry)initWithEncodedData:(id)a3;
- (HMDVendorModelEntry)initWithManufacturer:(id)a3 model:(id)a4 appBundleID:(id)a5 appStoreID:(id)a6 firmwareVersion:(id)a7 productData:(id)a8 productDataAlternates:(id)a9;
- (id)asEncodedData;
- (id)attributeDescriptions;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HMDVendorModelEntry

- (unint64_t)hash
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v3 = [(HMDVendorModelEntry *)self manufacturer];
  v4 = [v3 hash];

  v24 = v4;
  v5 = [(HMDVendorModelEntry *)self model];
  v6 = [v5 hash];
  v22[3] ^= v6;

  v7 = [(HMDVendorModelEntry *)self appBundleID];
  v8 = [v7 hash];
  v22[3] ^= v8;

  v9 = [(HMDVendorModelEntry *)self appBundleID];
  v10 = [v9 hash];
  v22[3] ^= v10;

  v11 = [(HMDVendorModelEntry *)self appStoreID];
  v12 = [v11 hash];
  v22[3] ^= v12;

  v13 = [(HMDVendorModelEntry *)self firmwareVersion];
  v14 = [v13 hash];
  v22[3] ^= v14;

  v15 = [(HMDVendorModelEntry *)self productData];
  v16 = [v15 hash];
  v22[3] ^= v16;

  v17 = [(HMDVendorModelEntry *)self productDataAlternates];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __27__HMDVendorModelEntry_hash__block_invoke;
  v20[3] = &unk_279733310;
  v20[4] = &v21;
  [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(HMDVendorModelEntry *)self manufacturer];
  v6 = [v4 manufacturer];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(HMDVendorModelEntry *)self model];
    v9 = [v4 model];
    v7 = [v8 compare:v9];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDVendorModelEntry *)self manufacturer];
      v8 = [(HMDVendorModelEntry *)v6 manufacturer];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMDVendorModelEntry *)self model];
        v10 = [(HMDVendorModelEntry *)v6 model];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(HMDVendorModelEntry *)self appBundleID];
          v12 = [(HMDVendorModelEntry *)v6 appBundleID];
          if (HMFEqualObjects())
          {
            v13 = [(HMDVendorModelEntry *)self appStoreID];
            v24 = [(HMDVendorModelEntry *)v6 appStoreID];
            v25 = v13;
            if (HMFEqualObjects())
            {
              v14 = [(HMDVendorModelEntry *)self firmwareVersion];
              v22 = [(HMDVendorModelEntry *)v6 firmwareVersion];
              v23 = v14;
              if (HMFEqualObjects())
              {
                v15 = [(HMDVendorModelEntry *)self productData];
                [(HMDVendorModelEntry *)v6 productData];
                v16 = v21 = v15;
                if (HMFEqualObjects())
                {
                  v20 = [(HMDVendorModelEntry *)self productDataAlternates];
                  v19 = [(HMDVendorModelEntry *)v6 productDataAlternates];
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
  v26 = [(HMDVendorModelEntry *)self manufacturer];
  v25 = [v3 initWithName:@"Manufacturer" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v24 = [(HMDVendorModelEntry *)self model];
  v23 = [v4 initWithName:@"Model" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v22 = [(HMDVendorModelEntry *)self appBundleID];
  v6 = [v5 initWithName:@"AppBundleID" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDVendorModelEntry *)self appStoreID];
  v9 = [v7 initWithName:@"AppStoreID" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDVendorModelEntry *)self firmwareVersion];
  v12 = [v10 initWithName:@"FirmwareVersion" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x277D0F778]);
  v14 = [(HMDVendorModelEntry *)self productData];
  v15 = [v13 initWithName:@"ProductData" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  v17 = [(HMDVendorModelEntry *)self productDataAlternates];
  v18 = [v16 initWithName:@"ProductDataAlternates" value:v17];
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
  v4 = [(HMDAccessoryVersion *)self->_firmwareVersion versionString];
  [v3 hmf_appendObject:v4];

  [v3 hmf_appendObject:self->_productData];
  [v3 hmf_appendObject:self->_productDataAlternates];
  v5 = [v3 copy];

  return v5;
}

- (HMDVendorModelEntry)initWithEncodedData:(id)a3
{
  v28 = 0;
  v4 = a3;
  v5 = [v4 hmf_readObjectAtOffset:&v28];
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

  v8 = [v4 hmf_readObjectAtOffset:&v28];
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

  v11 = [v4 hmf_readObjectAtOffset:&v28];
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

  v14 = [v4 hmf_readObjectAtOffset:&v28];
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

  v17 = [v4 hmf_readObjectAtOffset:&v28];
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

  v20 = [v4 hmf_readObjectAtOffset:&v28];
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

  v23 = [v4 hmf_readObjectAtOffset:&v28];

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

- (HMDVendorModelEntry)initWithManufacturer:(id)a3 model:(id)a4 appBundleID:(id)a5 appStoreID:(id)a6 firmwareVersion:(id)a7 productData:(id)a8 productDataAlternates:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = HMDVendorModelEntry;
  v22 = [(HMDVendorModelEntry *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    manufacturer = v22->_manufacturer;
    v22->_manufacturer = v23;

    v25 = [v16 copy];
    model = v22->_model;
    v22->_model = v25;

    v27 = [v17 copy];
    appBundleID = v22->_appBundleID;
    v22->_appBundleID = v27;

    v29 = [v18 copy];
    appStoreID = v22->_appStoreID;
    v22->_appStoreID = v29;

    if (v19)
    {
      v31 = [[HMDAccessoryVersion alloc] initWithString:v19];
      firmwareVersion = v22->_firmwareVersion;
      v22->_firmwareVersion = v31;
    }

    v33 = [v20 copy];
    productData = v22->_productData;
    v22->_productData = v33;

    v35 = [v21 copy];
    productDataAlternates = v22->_productDataAlternates;
    v22->_productDataAlternates = v35;
  }

  return v22;
}

@end