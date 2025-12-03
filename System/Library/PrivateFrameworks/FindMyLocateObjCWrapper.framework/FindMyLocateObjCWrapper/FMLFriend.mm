@interface FMLFriend
- (BOOL)isEqual:(id)equal;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLFriend

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
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
  v13 = MEMORY[0x277CCACA8];
  handle = [(FMLFriend *)self handle];
  identifier = [handle identifier];
  lowercaseString = [identifier lowercaseString];
  handleType = [(FMLFriend *)self handleType];
  createdAt = [(FMLFriend *)self createdAt];
  v8 = [createdAt description];
  expiry = [(FMLFriend *)self expiry];
  v10 = [expiry description];
  v11 = [v13 stringWithFormat:@"Handle:%@ Handle Type:%ld CreateAt:%@ expiry:%@ origin:%ld originatedFromTheSameClient:%d", lowercaseString, handleType, v8, v10, -[FMLFriend origin](self, "origin"), -[FMLFriend originatedFromTheSameClient](self, "originatedFromTheSameClient")];

  return v11;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
  v4 = [v2 stringWithFormat:@"%@", comparisonIdentifier];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  comparisonIdentifier = [(FMLFriend *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, comparisonIdentifier];

  return v6;
}

@end