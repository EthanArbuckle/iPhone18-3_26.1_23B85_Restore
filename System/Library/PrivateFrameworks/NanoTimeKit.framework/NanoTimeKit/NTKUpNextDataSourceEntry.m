@interface NTKUpNextDataSourceEntry
- (NTKUpNextDataSourceEntry)initWithDataSourceIdentifiers:(id)a3 localizedName:(id)a4 isDonation:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NTKUpNextDataSourceEntry

- (NTKUpNextDataSourceEntry)initWithDataSourceIdentifiers:(id)a3 localizedName:(id)a4 isDonation:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = NTKUpNextDataSourceEntry;
  v11 = [(NTKUpNextDataSourceEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifiers, a3);
    objc_storeStrong(&v12->_localizedName, a4);
    v12->_isDonation = a5;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(NTKUpNextDataSourceEntry);
  if (v5)
  {
    v6 = [(NSSet *)self->_identifiers copyWithZone:a3];
    [(NTKUpNextDataSourceEntry *)v5 setIdentifiers:v6];

    v7 = [(NSString *)self->_localizedName copyWithZone:a3];
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