@interface HMDHAPAccessoryAdvertisement
- (BOOL)isEqual:(id)a3;
- (HMDHAPAccessoryAdvertisement)initWithIdentifier:(id)a3 name:(id)a4 categoryIdentifier:(id)a5 pairingPresent:(BOOL)a6 setupHash:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDHAPAccessoryAdvertisement

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
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
      v7 = [(HMDAccessoryAdvertisement *)self identifier];
      v8 = [(HMDAccessoryAdvertisement *)v6 identifier];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDHAPAccessoryAdvertisement *)self setupHash];
        v10 = [(HMDHAPAccessoryAdvertisement *)v6 setupHash];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HMDAccessoryAdvertisement *)self identifier];
  v4 = [v3 hash];
  v5 = [(HMDHAPAccessoryAdvertisement *)self setupHash];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDHAPAccessoryAdvertisement;
  v4 = [(HMDAccessoryAdvertisement *)&v9 description];
  [(HMDHAPAccessoryAdvertisement *)self pairingPresent];
  v5 = HMFBooleanToString();
  v6 = [(HMDHAPAccessoryAdvertisement *)self setupHash];
  v7 = [v3 stringWithFormat:@"[ %@, pairingPresent: %@, setupHash = %@]", v4, v5, v6];

  return v7;
}

- (HMDHAPAccessoryAdvertisement)initWithIdentifier:(id)a3 name:(id)a4 categoryIdentifier:(id)a5 pairingPresent:(BOOL)a6 setupHash:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = +[HMDHAPMetadata getSharedInstance];
  v16 = [v15 categoryForIdentifier:v12];

  if (!v16)
  {
    v16 = [v15 categoryForOther];
  }

  v17 = objc_alloc(MEMORY[0x277CD1680]);
  v18 = [v16 uuidStr];
  v19 = [v16 catDescription];
  v20 = [v17 initWithType:v18 name:v19];

  v21 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v20];

  v24.receiver = self;
  v24.super_class = HMDHAPAccessoryAdvertisement;
  v22 = [(HMDAccessoryAdvertisement *)&v24 initWithIdentifier:v14 name:v13 category:v21];

  return v22;
}

@end