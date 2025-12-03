@interface GKGameSummaryInternal
+ (id)secureCodedPropertyKeys;
- (id)description;
@end

@implementation GKGameSummaryInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_6 != -1)
  {
    +[GKGameSummaryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_6;

  return v3;
}

void __48__GKGameSummaryInternal_secureCodedPropertyKeys__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_6;
  secureCodedPropertyKeys_sSecureCodedKeys_6 = v0;

  [secureCodedPropertyKeys_sSecureCodedKeys_6 setObject:objc_opt_class() forKeyedSubscript:@"bundleID"];
  [secureCodedPropertyKeys_sSecureCodedKeys_6 setObject:objc_opt_class() forKeyedSubscript:@"playedAt"];
  [secureCodedPropertyKeys_sSecureCodedKeys_6 setObject:objc_opt_class() forKeyedSubscript:@"adamID"];
  [secureCodedPropertyKeys_sSecureCodedKeys_6 setObject:objc_opt_class() forKeyedSubscript:@"isArcade"];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [secureCodedPropertyKeys_sSecureCodedKeys_6 setObject:v4 forKeyedSubscript:@"compatiblePlatforms"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  adamID = [(GKGameSummaryInternal *)self adamID];
  bundleID = [(GKGameSummaryInternal *)self bundleID];
  playedAt = [(GKGameSummaryInternal *)self playedAt];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKGameSummaryInternal isArcade](self, "isArcade")}];
  compatiblePlatforms = [(GKGameSummaryInternal *)self compatiblePlatforms];
  v9 = [v3 stringWithFormat:@"adamID: %@ bundleID: %@ playedAt: %@ isArcade: %@ compatiblePlatforms: %@", adamID, bundleID, playedAt, v7, compatiblePlatforms];

  return v9;
}

@end