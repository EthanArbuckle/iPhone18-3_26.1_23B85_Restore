@interface ICInclusionFilterTypeSelection
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInclusionFilterSelection:(id)a3;
- (ICInclusionFilterTypeSelection)initWithInclusionType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)rawFilterValue;
- (unint64_t)hash;
@end

@implementation ICInclusionFilterTypeSelection

- (ICInclusionFilterTypeSelection)initWithInclusionType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ICInclusionFilterTypeSelection;
  result = [(ICInclusionFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_inclusionType = a3;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromICFilterType([(ICInclusionFilterTypeSelection *)self filterType]);
  v5 = [(ICInclusionFilterTypeSelection *)self inclusionType];
  v6 = @"Excluded";
  if (!v5)
  {
    v6 = @"Included";
  }

  v7 = [v3 stringWithFormat:@"%@:%@", v4, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICInclusionFilterTypeSelection allocWithZone:a3];
  v5 = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICInclusionFilterTypeSelection *)self isEqualToInclusionFilterSelection:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  result = self->_hash;
  if (!result)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ICInclusionFilterTypeSelection inclusionType](self, "inclusionType")}];
    v5 = [v4 hash];
    self->_hash = ICHashWithHashKeys(v5, v6, v7, v8, v9, v10, v11, v12, 0);

    return self->_hash;
  }

  return result;
}

- (id)rawFilterValue
{
  if ([(ICInclusionFilterTypeSelection *)self inclusionType])
  {
    v2 = @"Excluded";
  }

  else
  {
    v2 = @"Included";
  }

  return v2;
}

- (BOOL)isEqualToInclusionFilterSelection:(id)a3
{
  v4 = a3;
  v5 = [(ICInclusionFilterTypeSelection *)self inclusionType];
  v6 = [v4 inclusionType];

  return v5 == v6;
}

@end