@interface HAPMetadataCharacteristic
- (BOOL)isEqual:(id)a3;
- (HAPMetadataCharacteristic)initWithName:(id)a3 uuid:(id)a4 description:(id)a5 format:(id)a6 properties:(id)a7;
- (id)description;
- (id)generateDictionary:(id)a3;
- (unint64_t)hash;
- (void)dump;
@end

@implementation HAPMetadataCharacteristic

- (unint64_t)hash
{
  v3 = [(HAPMetadataCharacteristic *)self name];
  v4 = [v3 hash];
  v5 = [(HAPMetadataCharacteristic *)self uuidStr];
  v6 = [v5 hash] ^ v4;
  v7 = [(HAPMetadataCharacteristic *)self chrDescription];
  v8 = [v7 hash];
  v9 = [(HAPMetadataCharacteristic *)self format];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HAPMetadataCharacteristic *)self properties];
  v12 = [v11 hash];
  v13 = [(HAPMetadataCharacteristic *)self units];
  v14 = v12 ^ [v13 hash];
  v15 = [(HAPMetadataCharacteristic *)self valueMetadata];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
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
    if (!v6)
    {
      v16 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v7 = [(HAPMetadataCharacteristic *)self name];
    v8 = [(HAPMetadataCharacteristic *)v6 name];
    if (![v7 isEqualToString:v8])
    {
      v16 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v9 = [(HAPMetadataCharacteristic *)self uuidStr];
    v10 = [(HAPMetadataCharacteristic *)v6 uuidStr];
    if (![v9 isEqualToString:v10])
    {
      v16 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v11 = [(HAPMetadataCharacteristic *)self chrDescription];
    v12 = [(HAPMetadataCharacteristic *)v6 chrDescription];
    if (![v11 isEqualToString:v12])
    {
      v16 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v13 = [(HAPMetadataCharacteristic *)self format];
    v33 = [(HAPMetadataCharacteristic *)v6 format];
    v34 = v13;
    if (![v13 isEqualToString:v33])
    {
      v16 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v14 = [(HAPMetadataCharacteristic *)self properties];
    v31 = [(HAPMetadataCharacteristic *)v6 properties];
    v32 = v14;
    if (![v14 isEqualToNumber:v31])
    {
      v16 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v30 = [(HAPMetadataCharacteristic *)self units];
    if (v30 || ([(HAPMetadataCharacteristic *)v6 units], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(HAPMetadataCharacteristic *)self units];
      v28 = [(HAPMetadataCharacteristic *)v6 units];
      v29 = v15;
      if (![v15 isEqualToString:v28])
      {
        v16 = 0;
        goto LABEL_28;
      }

      v27 = 1;
    }

    else
    {
      v24 = 0;
      v27 = 0;
    }

    v17 = [(HAPMetadataCharacteristic *)self valueMetadata];
    if (v17 || ([(HAPMetadataCharacteristic *)v6 valueMetadata], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v25 = [(HAPMetadataCharacteristic *)self valueMetadata:v22];
      [(HAPMetadataCharacteristic *)v6 valueMetadata];
      v18 = v26 = v17;
      v16 = [v25 isEqual:?];

      if (v26)
      {

        if (!v27)
        {
LABEL_29:
          v19 = v30;
          if (!v30)
          {

            v19 = 0;
          }

          goto LABEL_32;
        }

LABEL_28:

        goto LABEL_29;
      }

      v21 = v23;
    }

    else
    {
      v21 = 0;
      v16 = 1;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v16 = 1;
LABEL_38:

  return v16;
}

- (void)dump
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [(HAPMetadataCharacteristic *)self name];
    v7 = [(HAPMetadataCharacteristic *)self uuidStr];
    v8 = [(HAPMetadataCharacteristic *)self chrDescription];
    v9 = [(HAPMetadataCharacteristic *)self format];
    v10 = [(HAPMetadataCharacteristic *)self properties];
    v11 = [(HAPMetadataCharacteristic *)self units];
    v13 = 138544898;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@HAPMetadataCharacteristic %@(%@):  description: %@  format: %@  properties: %@  units:%@", &v13, 0x48u);
  }

  objc_autoreleasePoolPop(v3);
  v12 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPMetadataCharacteristic *)self name];
  v5 = [(HAPMetadataCharacteristic *)self uuidStr];
  v6 = [(HAPMetadataCharacteristic *)self chrDescription];
  v7 = [(HAPMetadataCharacteristic *)self format];
  v8 = [(HAPMetadataCharacteristic *)self properties];
  v9 = [v3 stringWithFormat:@"HAPMetadataCharacteristic %@(%@) - %@ - format %@, properties %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)generateDictionary:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [(HAPMetadataCharacteristic *)self uuidStr];
  v8 = [HAPMetadata shortenHAPType:v7 baseUUIDSuffix:v5];

  [v6 setObject:v8 forKeyedSubscript:@"ShortUUID"];
  v9 = [(HAPMetadataCharacteristic *)self chrDescription];
  [v6 setObject:v9 forKeyedSubscript:@"DefaultDescription"];

  v10 = [(HAPMetadataCharacteristic *)self format];
  [v6 setObject:v10 forKeyedSubscript:@"Format"];

  v11 = [(HAPMetadataCharacteristic *)self properties];
  [v6 setObject:v11 forKeyedSubscript:@"Properties"];

  [v6 setObject:&stru_283E79C60 forKeyedSubscript:@"LocalizationKey"];
  v12 = [(HAPMetadataCharacteristic *)self units];

  if (v12)
  {
    v13 = [(HAPMetadataCharacteristic *)self units];
    [v6 setObject:v13 forKeyedSubscript:@"Units"];
  }

  v14 = [(HAPMetadataCharacteristic *)self valueMetadata];
  v15 = [v14 generateDictionary];
  [v6 addEntriesFromDictionary:v15];

  return v6;
}

- (HAPMetadataCharacteristic)initWithName:(id)a3 uuid:(id)a4 description:(id)a5 format:(id)a6 properties:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  v18 = 0;
  if (v12 && v13 && v14 && v15 && v16)
  {
    v29.receiver = self;
    v29.super_class = HAPMetadataCharacteristic;
    v18 = [(HAPMetadataCharacteristic *)&v29 init];
    if (v18)
    {
      v19 = [v12 copy];
      v20 = *(v18 + 1);
      *(v18 + 1) = v19;

      v21 = [v13 copy];
      v22 = *(v18 + 3);
      *(v18 + 3) = v21;

      v23 = [v14 copy];
      v24 = *(v18 + 2);
      *(v18 + 2) = v23;

      v25 = [v15 copy];
      v26 = *(v18 + 5);
      *(v18 + 5) = v25;

      v27 = v17;
      self = *(v18 + 4);
      *(v18 + 4) = v27;
    }

    else
    {
      self = 0;
    }
  }

  return v18;
}

@end