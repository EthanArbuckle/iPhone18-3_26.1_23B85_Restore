@interface GKRecentMatchInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation GKRecentMatchInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_315 != -1)
  {
    +[GKRecentMatchInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_314;

  return v3;
}

void __48__GKRecentMatchInternal_secureCodedPropertyKeys__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"player";
  v4[0] = objc_opt_class();
  v3[1] = @"game";
  v4[1] = objc_opt_class();
  v3[2] = @"date";
  v4[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_314;
  secureCodedPropertyKeys_sSecureCodedKeys_314 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKRecentMatchInternal *)self game];
    v7 = [(GKRecentMatchInternal *)self player];
    v8 = [(GKRecentMatchInternal *)self date];
    v9 = [v5 game];
    v10 = [v5 player];
    v11 = [v5 date];
    if ((v7 == v10 || [v7 isEqual:v10]) && (v6 == v9 || objc_msgSend(v6, "isEqual:", v9)))
    {
      if (v8 == v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = [v8 isEqual:v11];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(GKRecentMatchInternal *)self player];
  v4 = [v3 hash];

  v5 = [(GKRecentMatchInternal *)self game];
  v6 = [v5 hash] ^ v4;

  v7 = [(GKRecentMatchInternal *)self date];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end