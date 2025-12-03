@interface HMDAccessoryAdvertisement
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryAdvertisement)initWithIdentifier:(id)identifier name:(id)name category:(id)category;
- (id)description;
- (unint64_t)hash;
- (void)setCategory:(id)category;
@end

@implementation HMDAccessoryAdvertisement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      v9 = [identifier isEqual:identifier2];
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
  identifier = [(HMDAccessoryAdvertisement *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)setCategory:(id)category
{
  v4 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:category];
  category = self->_category;
  self->_category = v4;

  MEMORY[0x2821F96F8](v4, category);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(HMDAccessoryAdvertisement *)self name];
  identifier = [(HMDAccessoryAdvertisement *)self identifier];
  category = [(HMDAccessoryAdvertisement *)self category];
  v7 = [v3 stringWithFormat:@"[ name = %@, identifier = %@, category = %@]", name, identifier, category];

  return v7;
}

- (HMDAccessoryAdvertisement)initWithIdentifier:(id)identifier name:(id)name category:(id)category
{
  identifierCopy = identifier;
  nameCopy = name;
  categoryCopy = category;
  v17.receiver = self;
  v17.super_class = HMDAccessoryAdvertisement;
  v12 = [(HMDAccessoryAdvertisement *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_name, name);
    v14 = [MEMORY[0x277CD1A18] cachedInstanceForHMAccessoryCategory:categoryCopy];
    category = v13->_category;
    v13->_category = v14;
  }

  return v13;
}

@end