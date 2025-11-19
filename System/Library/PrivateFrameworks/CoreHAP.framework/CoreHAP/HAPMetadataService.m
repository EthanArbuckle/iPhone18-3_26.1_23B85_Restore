@interface HAPMetadataService
- (BOOL)isEqual:(id)a3;
- (HAPMetadataService)initWithName:(id)a3 uuid:(id)a4 description:(id)a5 mandatoryChrTypes:(id)a6 properties:(id)a7 linkedServices:(id)a8;
- (id)description;
- (id)generateDictionary:(id)a3 metadata:(id)a4;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataService

- (unint64_t)hash
{
  v21 = [(HAPMetadataService *)self name];
  v3 = [v21 hash];
  v4 = [(HAPMetadataService *)self uuidStr];
  v5 = [v4 hash] ^ v3;
  v6 = [(HAPMetadataService *)self svcDescription];
  v7 = [v6 hash];
  v8 = [(HAPMetadataService *)self btleuuidStr];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(HAPMetadataService *)self properties];
  v11 = [v10 hash];
  v12 = [(HAPMetadataService *)self linkedServices];
  v13 = v11 ^ [v12 hash];
  v14 = [(HAPMetadataService *)self mandatoryCharacteristics];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(HAPMetadataService *)self optionalCharacteristics];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HAPMetadataService allowAssociatedService](self, "allowAssociatedService")}];
  v19 = [v18 hash];

  return v17 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self != v5)
  {
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
    if (!v7)
    {
      LOBYTE(v14) = 0;
LABEL_64:

      goto LABEL_65;
    }

    v8 = [(HAPMetadataService *)self name];
    v9 = [(HAPMetadataService *)v7 name];
    if (![v8 isEqualToString:v9])
    {
      LOBYTE(v14) = 0;
LABEL_63:

      goto LABEL_64;
    }

    v10 = [(HAPMetadataService *)self uuidStr];
    v11 = [(HAPMetadataService *)v7 uuidStr];
    if (![v10 isEqualToString:v11])
    {
      LOBYTE(v14) = 0;
LABEL_62:

      goto LABEL_63;
    }

    v12 = [(HAPMetadataService *)self svcDescription];
    v13 = [(HAPMetadataService *)v7 svcDescription];
    if (![v12 isEqualToString:v13])
    {
      LOBYTE(v14) = 0;
LABEL_61:

      goto LABEL_62;
    }

    v43 = [(HAPMetadataService *)self btleuuidStr];
    if (v43 || ([(HAPMetadataService *)v7 btleuuidStr], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(HAPMetadataService *)self btleuuidStr];
      v40 = [(HAPMetadataService *)v7 btleuuidStr];
      v41 = v3;
      if (![v3 isEqualToString:?])
      {
        LOBYTE(v14) = 0;
        goto LABEL_57;
      }

      v39 = 1;
    }

    else
    {
      v36 = 0;
      v39 = 0;
    }

    v42 = [(HAPMetadataService *)self properties];
    if (v42 || ([(HAPMetadataService *)v7 properties], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(HAPMetadataService *)self properties];
      [(HAPMetadataService *)v7 properties];
      v37 = v38 = v3;
      if (![v3 isEqualToNumber:v37])
      {
        LOBYTE(v14) = 0;
        goto LABEL_54;
      }

      v35 = 1;
    }

    else
    {
      v31 = 0;
      v35 = 0;
    }

    v34 = [(HAPMetadataService *)self linkedServices];
    if (v34 || ([(HAPMetadataService *)v7 linkedServices], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(HAPMetadataService *)self linkedServices];
      v32 = [(HAPMetadataService *)v7 linkedServices];
      v33 = v3;
      if (![v3 isEqualToArray:v32])
      {
        LOBYTE(v14) = 0;
        goto LABEL_51;
      }

      v30 = 1;
    }

    else
    {
      v26 = 0;
      v30 = 0;
    }

    v29 = [(HAPMetadataService *)self mandatoryCharacteristics];
    if (v29 || ([(HAPMetadataService *)v7 mandatoryCharacteristics], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(HAPMetadataService *)self mandatoryCharacteristics];
      v27 = [(HAPMetadataService *)v7 mandatoryCharacteristics];
      v28 = v3;
      if (![v3 isEqual:v27])
      {
        LOBYTE(v14) = 0;
        goto LABEL_48;
      }

      v25 = 1;
    }

    else
    {
      v22 = 0;
      v25 = 0;
    }

    v24 = [(HAPMetadataService *)self optionalCharacteristics];
    if (v24 || ([(HAPMetadataService *)v7 optionalCharacteristics], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(HAPMetadataService *)self optionalCharacteristics];
      v16 = [(HAPMetadataService *)v7 optionalCharacteristics];
      v23 = v15;
      v17 = v15;
      v3 = v16;
      if (![v17 isEqual:v16])
      {
        LOBYTE(v14) = 0;
LABEL_45:

LABEL_46:
        if (v24)
        {

          if (!v25)
          {
            goto LABEL_49;
          }
        }

        else
        {

          if ((v25 & 1) == 0)
          {
LABEL_49:
            if (v29)
            {

              if (!v30)
              {
                goto LABEL_52;
              }
            }

            else
            {

              if ((v30 & 1) == 0)
              {
LABEL_52:
                if (v34)
                {

                  if (!v35)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {

                  if ((v35 & 1) == 0)
                  {
LABEL_55:
                    if (v42)
                    {

                      if (!v39)
                      {
LABEL_58:
                        if (!v43)
                        {
                        }

                        goto LABEL_61;
                      }
                    }

                    else
                    {

                      if ((v39 & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }

LABEL_57:

                    goto LABEL_58;
                  }
                }

LABEL_54:

                goto LABEL_55;
              }
            }

LABEL_51:

            goto LABEL_52;
          }
        }

LABEL_48:

        goto LABEL_49;
      }

      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v18 = [(HAPMetadataService *)self allowAssociatedService];
    v14 = v18 ^ [(HAPMetadataService *)v7 allowAssociatedService]^ 1;
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  LOBYTE(v14) = 1;
LABEL_65:

  return v14;
}

- (void)dump
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [(HAPMetadataService *)self name];
    v7 = [(HAPMetadataService *)self uuidStr];
    v8 = [(HAPMetadataService *)self svcDescription];
    *buf = 138544130;
    v59 = v5;
    v60 = 2112;
    v61 = v6;
    v62 = 2112;
    v63 = v7;
    v64 = 2112;
    v65 = v8;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharacteristic %@(%@):  description: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  if ([(HAPMetadataService *)self allowAssociatedService])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HAPMetadataService *)self allowAssociatedService];
      *buf = 138543618;
      v59 = v11;
      v60 = 2048;
      v61 = v12;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%{public}@AllowAssociatedService: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = [(HAPMetadataService *)self mandatoryCharacteristics];
  v14 = [v13 count];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v17;
      _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%{public}@Mandatory characteristics:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(HAPMetadataService *)self mandatoryCharacteristics];
    v18 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v53;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v52 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            v26 = [v22 name];
            v27 = [v22 uuidStr];
            v28 = [v22 chrDescription];
            *buf = 138544130;
            v59 = v25;
            v60 = 2112;
            v61 = v26;
            v62 = 2112;
            v63 = v27;
            v64 = 2112;
            v65 = v28;
            _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_INFO, "%{public}@%@(%@) - %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v19);
    }
  }

  v29 = [(HAPMetadataService *)self optionalCharacteristics];
  v30 = [v29 count];

  if (v30)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v59 = v33;
      _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_INFO, "%{public}@Optional characteristics:", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obja = [(HAPMetadataService *)self optionalCharacteristics];
    v34 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v49;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v49 != v36)
          {
            objc_enumerationMutation(obja);
          }

          v38 = *(*(&v48 + 1) + 8 * j);
          v39 = objc_autoreleasePoolPush();
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            v42 = [v38 name];
            v43 = [v38 uuidStr];
            v44 = [v38 chrDescription];
            *buf = 138544130;
            v59 = v41;
            v60 = 2112;
            v61 = v42;
            v62 = 2112;
            v63 = v43;
            v64 = 2112;
            v65 = v44;
            _os_log_impl(&dword_22AADC000, v40, OS_LOG_TYPE_INFO, "%{public}@%@(%@) - %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v39);
        }

        v35 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v35);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [(HAPMetadataService *)self mandatoryCharacteristics];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v9 uuidStr];
        [v3 appendFormat:@"%@(%@), ", v10, v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x277CCAB68] string];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = [(HAPMetadataService *)self optionalCharacteristics];
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v28 + 1) + 8 * j);
        v19 = [v18 name];
        v20 = [v18 uuidStr];
        [v12 appendFormat:@"%@(%@), ", v19, v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v15);
  }

  v21 = MEMORY[0x277CCACA8];
  v22 = [(HAPMetadataService *)self name];
  v23 = [(HAPMetadataService *)self uuidStr];
  v24 = [(HAPMetadataService *)self svcDescription];
  v25 = [v21 stringWithFormat:@"HAPMetadataService %@(%@) - %@ - mandatory %@, optional %@", v22, v23, v24, v3, v12];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)generateDictionary:(id)a3 metadata:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [(HAPMetadataService *)self uuidStr];
  v32 = v6;
  v10 = [HAPMetadata shortenHAPType:v9 baseUUIDSuffix:v6];
  [v8 setObject:v10 forKeyedSubscript:@"ShortUUID"];

  v11 = [(HAPMetadataService *)self svcDescription];
  [v8 setObject:v11 forKeyedSubscript:@"DefaultDescription"];

  [v8 setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];
  v12 = [(HAPMetadataService *)self btleuuidStr];

  if (v12)
  {
    v13 = [(HAPMetadataService *)self btleuuidStr];
    [v8 setObject:v13 forKeyedSubscript:@"BTLE_ShortUUID"];
  }

  v33 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [MEMORY[0x277CBEB18] array];
  v15 = objc_autoreleasePoolPush();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v16 = [(HAPMetadataService *)self mandatoryCharacteristics];
  v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v7 characteristicUTIFromType:*(*(&v38 + 1) + 8 * i)];
        if (v21)
        {
          [v14 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v15);
  if ([v14 count])
  {
    [v33 setObject:v14 forKeyedSubscript:@"Required"];
  }

  v22 = [MEMORY[0x277CBEB18] array];

  v23 = objc_autoreleasePoolPush();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = [(HAPMetadataService *)self optionalCharacteristics];
  v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v35;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [v7 characteristicUTIFromType:*(*(&v34 + 1) + 8 * j)];
        if (v29)
        {
          [v22 addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v26);
  }

  objc_autoreleasePoolPop(v23);
  if ([v22 count])
  {
    [v33 setObject:v22 forKeyedSubscript:@"Optional"];
  }

  if ([v33 count])
  {
    [v8 setObject:v33 forKeyedSubscript:@"Characteristics"];
  }

  if ([(HAPMetadataService *)self allowAssociatedService])
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"AllowAssociatedService"];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v8;
}

- (HAPMetadataService)initWithName:(id)a3 uuid:(id)a4 description:(id)a5 mandatoryChrTypes:(id)a6 properties:(id)a7 linkedServices:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = 0;
  if (v14 && v15 && v16)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataService;
    v20 = [(HAPMetadataService *)&v29 init];
    if (v20)
    {
      v21 = [v14 copy];
      v22 = *(v20 + 2);
      *(v20 + 2) = v21;

      v23 = [v15 copy];
      v24 = *(v20 + 4);
      *(v20 + 4) = v23;

      v25 = [v16 copy];
      v26 = *(v20 + 3);
      *(v20 + 3) = v25;

      objc_storeStrong(v20 + 8, a6);
      objc_storeStrong(v20 + 6, a7);
      v27 = v19;
      self = *(v20 + 7);
      *(v20 + 7) = v27;
    }

    else
    {
      self = 0;
    }
  }

  return v20;
}

@end