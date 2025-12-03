@interface GKLeaderboardSetInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation GKLeaderboardSetInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_275 != -1)
  {
    +[GKLeaderboardSetInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_274;

  return v3;
}

void __51__GKLeaderboardSetInternal_secureCodedPropertyKeys__block_invoke()
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"identifier", @"groupIdentifier", @"title", @"leaderboardIdentifiers"}];
  v12[3] = v3;
  v11[4] = @"icons";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v9 = secureCodedPropertyKeys_sSecureCodedKeys_274;
  secureCodedPropertyKeys_sSecureCodedKeys_274 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(GKLeaderboardSetInternal *)self identifier];
    identifier2 = [v5 identifier];
    if (identifier == identifier2)
    {
      v8 = 1;
    }

    else
    {
      v8 = [identifier isEqualToString:identifier2];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(GKLeaderboardSetInternal *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end