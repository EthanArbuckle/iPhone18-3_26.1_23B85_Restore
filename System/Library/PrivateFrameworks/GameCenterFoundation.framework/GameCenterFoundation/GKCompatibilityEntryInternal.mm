@interface GKCompatibilityEntryInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(GKCompatibilityEntryInternal *)self bundleID];
    bundleID2 = [v5 bundleID];
    if ([bundleID isEqualToString:bundleID2])
    {
      adamID = [(GKCompatibilityEntryInternal *)self adamID];
      adamID2 = [v5 adamID];
      if ([adamID isEqualToNumber:adamID2] && (v10 = -[GKCompatibilityEntryInternal platform](self, "platform"), v10 == objc_msgSend(v5, "platform")))
      {
        versions = [(GKCompatibilityEntryInternal *)self versions];
        versions2 = [v5 versions];
        if ([versions isEqual:versions2])
        {
          shortVersions = [(GKCompatibilityEntryInternal *)self shortVersions];
          shortVersions2 = [v5 shortVersions];
          v14 = [shortVersions isEqual:shortVersions2];
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
  bundleID = [(GKCompatibilityEntryInternal *)self bundleID];
  versions = [(GKCompatibilityEntryInternal *)self versions];
  v6 = [v3 stringWithFormat:@"%@%@", bundleID, versions];
  v7 = [v6 hash];

  return v7;
}

@end