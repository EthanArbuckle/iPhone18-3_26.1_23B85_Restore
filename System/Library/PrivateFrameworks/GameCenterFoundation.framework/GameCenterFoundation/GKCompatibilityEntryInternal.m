@interface GKCompatibilityEntryInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation GKCompatibilityEntryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_426[0] != -1)
  {
    +[GKCompatibilityEntryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_425;

  return v3;
}

void __55__GKCompatibilityEntryInternal_secureCodedPropertyKeys__block_invoke()
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"bundleID", @"adamID", @"platform", @"versions"}];
  v12[3] = v3;
  v11[4] = @"shortVersions";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = secureCodedPropertyKeys_sSecureCodedKeys_425;
  secureCodedPropertyKeys_sSecureCodedKeys_425 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKCompatibilityEntryInternal *)self bundleID];
    v7 = [v5 bundleID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(GKCompatibilityEntryInternal *)self adamID];
      v9 = [v5 adamID];
      if ([v8 isEqualToNumber:v9] && (v10 = -[GKCompatibilityEntryInternal platform](self, "platform"), v10 == objc_msgSend(v5, "platform")))
      {
        v11 = [(GKCompatibilityEntryInternal *)self versions];
        v12 = [v5 versions];
        if ([v11 isEqual:v12])
        {
          v16 = [(GKCompatibilityEntryInternal *)self shortVersions];
          v13 = [v5 shortVersions];
          v14 = [v16 isEqual:v13];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKCompatibilityEntryInternal *)self bundleID];
  v5 = [(GKCompatibilityEntryInternal *)self versions];
  v6 = [v3 stringWithFormat:@"%@%@", v4, v5];
  v7 = [v6 hash];

  return v7;
}

@end