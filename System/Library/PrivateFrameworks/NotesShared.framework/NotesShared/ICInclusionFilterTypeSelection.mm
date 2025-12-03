@interface ICInclusionFilterTypeSelection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInclusionFilterSelection:(id)selection;
- (ICInclusionFilterTypeSelection)initWithInclusionType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)rawFilterValue;
- (unint64_t)hash;
@end

@implementation ICInclusionFilterTypeSelection

- (ICInclusionFilterTypeSelection)initWithInclusionType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = ICInclusionFilterTypeSelection;
  result = [(ICInclusionFilterTypeSelection *)&v5 init];
  if (result)
  {
    result->_inclusionType = type;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromICFilterType([(ICInclusionFilterTypeSelection *)self filterType]);
  inclusionType = [(ICInclusionFilterTypeSelection *)self inclusionType];
  v6 = @"Excluded";
  if (!inclusionType)
  {
    v6 = @"Included";
  }

  v7 = [v3 stringWithFormat:@"%@:%@", v4, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICInclusionFilterTypeSelection allocWithZone:zone];
  inclusionType = [(ICInclusionFilterTypeSelection *)self inclusionType];

  return [(ICInclusionFilterTypeSelection *)v4 initWithInclusionType:inclusionType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ICInclusionFilterTypeSelection *)self isEqualToInclusionFilterSelection:v5];
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

- (BOOL)isEqualToInclusionFilterSelection:(id)selection
{
  selectionCopy = selection;
  inclusionType = [(ICInclusionFilterTypeSelection *)self inclusionType];
  inclusionType2 = [selectionCopy inclusionType];

  return inclusionType == inclusionType2;
}

@end