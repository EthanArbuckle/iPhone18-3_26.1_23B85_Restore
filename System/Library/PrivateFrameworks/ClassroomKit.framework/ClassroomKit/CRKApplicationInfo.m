@interface CRKApplicationInfo
- (BOOL)isEqual:(id)a3;
- (CRKApplicationInfo)initWithBundleIdentifier:(id)a3 shortVersionString:(id)a4;
- (CRKApplicationInfo)initWithDictionaryRepresentation:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation CRKApplicationInfo

- (CRKApplicationInfo)initWithBundleIdentifier:(id)a3 shortVersionString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CRKApplicationInfo;
  v8 = [(CRKApplicationInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    v11 = [v7 copy];
    shortVersionString = v8->_shortVersionString;
    v8->_shortVersionString = v11;
  }

  return v8;
}

- (CRKApplicationInfo)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
  v6 = [v4 objectForKeyedSubscript:@"shortVersionString"];

  v7 = [(CRKApplicationInfo *)self initWithBundleIdentifier:v5 shortVersionString:v6];
  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(CRKApplicationInfo *)self bundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"bundleIdentifier"];

  v5 = [(CRKApplicationInfo *)self shortVersionString];

  if (v5)
  {
    v6 = [(CRKApplicationInfo *)self shortVersionString];
    [v3 setObject:v6 forKeyedSubscript:@"shortVersionString"];
  }

  v7 = [v3 copy];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (![v6 isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKApplicationInfo isEqual:];
  }

  v8 = [(CRKApplicationInfo *)self bundleIdentifier];
  if (v8 || ([v7 bundleIdentifier], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKApplicationInfo *)self bundleIdentifier];
    v4 = [v7 bundleIdentifier];
    if (![v3 isEqual:v4])
    {
      v10 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v9 = 1;
  }

  else
  {
    v17 = 0;
    v9 = 0;
  }

  v11 = [(CRKApplicationInfo *)self shortVersionString];
  if (v11 || ([v7 shortVersionString], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = [(CRKApplicationInfo *)self shortVersionString:v15];
    v13 = [v7 shortVersionString];
    v10 = [v12 isEqual:v13];

    if (v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v10 = 1;
  }

LABEL_17:
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (!v8)
  {
  }

LABEL_22:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(CRKApplicationInfo *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(CRKApplicationInfo *)self shortVersionString];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)isEqual:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CRKApplicationInfo isEqual:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CRKApplicationInfo.m" lineNumber:49 description:{@"expected %@, got %@", v2, v4}];
}

@end