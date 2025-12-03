@interface FMLHandle
+ (FMLHandle)handleWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLHandle

+ (FMLHandle)handleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIdentifier:identifierCopy];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMLHandle *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)comparisonIdentifier
{
  identifier = [(FMLHandle *)self identifier];
  lowercaseString = [identifier lowercaseString];

  return lowercaseString;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMLHandle *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(FMLHandle *)self identifier];
  v4 = [v2 stringWithFormat:@"%@", identifier];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(FMLHandle *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, identifier];

  return v6;
}

@end