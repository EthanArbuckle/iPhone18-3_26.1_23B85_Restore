@interface FMLHandle
+ (FMLHandle)handleWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation FMLHandle

+ (FMLHandle)handleWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIdentifier:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMLHandle *)self comparisonIdentifier];
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
  v2 = [(FMLHandle *)self identifier];
  v3 = [v2 lowercaseString];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(FMLHandle *)self comparisonIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(FMLHandle *)self identifier];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(FMLHandle *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

@end