@interface HMDAccessoryAdvertisement
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryAdvertisement)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)setCategory:(id)a3;
@end

@implementation HMDAccessoryAdvertisement

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryAdvertisement *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)setCategory:(id)a3
{
  v4 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:a3];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x2821F96F8](v4, category);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessoryAdvertisement *)self name];
  v5 = [(HMDAccessoryAdvertisement *)self identifier];
  v6 = [(HMDAccessoryAdvertisement *)self category];
  v7 = [v3 stringWithFormat:@"[ name = %@, identifier = %@, category = %@]", v4, v5, v6];

  return v7;
}

- (HMDAccessoryAdvertisement)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HMDAccessoryAdvertisement;
  v12 = [(HMDAccessoryAdvertisement *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_name, a4);
    v14 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:v11];
    category = v13->_category;
    v13->_category = v14;
  }

  return v13;
}

@end