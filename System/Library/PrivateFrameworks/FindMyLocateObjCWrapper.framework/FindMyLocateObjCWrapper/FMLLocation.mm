@interface FMLLocation
- (id)debugDescription;
- (id)description;
- (id)locationTypeDescription;
@end

@implementation FMLLocation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(FMLLocation *)self longitude];
  v5 = v4;
  [(FMLLocation *)self latitude];
  v7 = v6;
  v8 = [(FMLLocation *)self locationTypeDescription];
  v9 = [(FMLLocation *)self coarseAddressLabel];
  if (v9)
  {
    v10 = [(FMLLocation *)self coarseAddressLabel];
    v11 = [v3 stringWithFormat:@"longitude:%.2f latitude:%.2f type:%@ coarseAddressLabel:%@", v5, v7, v8, v10];
  }

  else
  {
    v11 = [v3 stringWithFormat:@"longitude:%.2f latitude:%.2f type:%@ coarseAddressLabel:%@", v5, v7, v8, &stru_285E3BA28];
  }

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMLLocation *)self description];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

- (id)locationTypeDescription
{
  v2 = self->_locationType - 1;
  if (v2 > 2)
  {
    return @"legacy";
  }

  else
  {
    return off_278FFFC18[v2];
  }
}

@end