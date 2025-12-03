@interface HMDHAPAccessoryAdvertisement
- (BOOL)isEqual:(id)equal;
- (HMDHAPAccessoryAdvertisement)initWithIdentifier:(id)identifier name:(id)name categoryIdentifier:(id)categoryIdentifier pairingPresent:(BOOL)present setupHash:(id)hash;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDHAPAccessoryAdvertisement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
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
      identifier = [(HMDAccessoryAdvertisement *)self identifier];
      identifier2 = [(HMDAccessoryAdvertisement *)v6 identifier];
      if ([identifier isEqual:identifier2])
      {
        setupHash = [(HMDHAPAccessoryAdvertisement *)self setupHash];
        setupHash2 = [(HMDHAPAccessoryAdvertisement *)v6 setupHash];
        v11 = [setupHash isEqual:setupHash2];
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
  identifier = [(HMDAccessoryAdvertisement *)self identifier];
  v4 = [identifier hash];
  setupHash = [(HMDHAPAccessoryAdvertisement *)self setupHash];
  v6 = [setupHash hash];

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
  setupHash = [(HMDHAPAccessoryAdvertisement *)self setupHash];
  v7 = [v3 stringWithFormat:@"[ %@, pairingPresent: %@, setupHash = %@]", v4, v5, setupHash];

  return v7;
}

- (HMDHAPAccessoryAdvertisement)initWithIdentifier:(id)identifier name:(id)name categoryIdentifier:(id)categoryIdentifier pairingPresent:(BOOL)present setupHash:(id)hash
{
  hashCopy = hash;
  categoryIdentifierCopy = categoryIdentifier;
  nameCopy = name;
  identifierCopy = identifier;
  v15 = +[HMDHAPMetadata getSharedInstance];
  categoryForOther = [v15 categoryForIdentifier:categoryIdentifierCopy];

  if (!categoryForOther)
  {
    categoryForOther = [v15 categoryForOther];
  }

  v17 = objc_alloc(MEMORY[0x277CD1680]);
  uuidStr = [categoryForOther uuidStr];
  catDescription = [categoryForOther catDescription];
  v20 = [v17 initWithType:uuidStr name:catDescription];

  v21 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v20];

  v24.receiver = self;
  v24.super_class = HMDHAPAccessoryAdvertisement;
  v22 = [(HMDAccessoryAdvertisement *)&v24 initWithIdentifier:identifierCopy name:nameCopy category:v21];

  return v22;
}

@end