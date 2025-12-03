@interface FMLDevice
- (BOOL)isEqual:(id)equal;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLDevice

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMLDevice *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMLDevice *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(FMLDevice *)self identifier];
  v4 = [v2 stringWithFormat:@"%@", identifier];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(FMLDevice *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, identifier];

  return v6;
}

@end