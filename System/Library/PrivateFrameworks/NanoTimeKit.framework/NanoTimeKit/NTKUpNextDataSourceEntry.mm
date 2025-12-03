@interface NTKUpNextDataSourceEntry
- (NTKUpNextDataSourceEntry)initWithDataSourceIdentifiers:(id)identifiers localizedName:(id)name isDonation:(BOOL)donation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NTKUpNextDataSourceEntry

- (NTKUpNextDataSourceEntry)initWithDataSourceIdentifiers:(id)identifiers localizedName:(id)name isDonation:(BOOL)donation
{
  identifiersCopy = identifiers;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NTKUpNextDataSourceEntry;
  v11 = [(NTKUpNextDataSourceEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifiers, identifiers);
    objc_storeStrong(&v12->_localizedName, name);
    v12->_isDonation = donation;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(NTKUpNextDataSourceEntry);
  if (v5)
  {
    v6 = [(NSSet *)self->_identifiers copyWithZone:zone];
    [(NTKUpNextDataSourceEntry *)v5 setIdentifiers:v6];

    v7 = [(NSString *)self->_localizedName copyWithZone:zone];
    [(NTKUpNextDataSourceEntry *)v5 setLocalizedName:v7];

    [(NTKUpNextDataSourceEntry *)v5 setIsDonation:self->_isDonation];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = NTKUpNextDataSourceEntry;
  v4 = [(NTKUpNextDataSourceEntry *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@ - %@ - isDonation %x", v4, self->_localizedName, self->_identifiers, self->_isDonation];

  return v5;
}

@end