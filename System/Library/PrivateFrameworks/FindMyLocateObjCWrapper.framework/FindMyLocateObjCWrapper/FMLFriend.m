@interface FMLFriend
- (BOOL)isEqual:(id)a3;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLFriend

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMLFriend *)self comparisonIdentifier];
    v7 = [v5 comparisonIdentifier];

    v8 = [v6 isEqualToString:v7];
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
  v3 = [(FMLFriend *)self handle];
  v4 = [v3 identifier];
  v5 = [v4 lowercaseString];
  v6 = [(FMLFriend *)self handleType];
  v7 = [(FMLFriend *)self createdAt];
  v8 = [v7 description];
  v9 = [(FMLFriend *)self expiry];
  v10 = [v9 description];
  v11 = [v13 stringWithFormat:@"Handle:%@ Handle Type:%ld CreateAt:%@ expiry:%@ origin:%ld originatedFromTheSameClient:%d", v5, v6, v8, v10, -[FMLFriend origin](self, "origin"), -[FMLFriend originatedFromTheSameClient](self, "originatedFromTheSameClient")];

  return v11;
}

- (unint64_t)hash
{
  v2 = [(FMLFriend *)self comparisonIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FMLFriend *)self comparisonIdentifier];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMLFriend *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

@end