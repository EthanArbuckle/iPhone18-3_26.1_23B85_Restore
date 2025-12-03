@interface GKTTRLogRequestInfo
+ (id)secureCodedPropertyKeys;
- (GKTTRLogRequestInfo)initWithPlayersAndPushTokens:(id)tokens radarID:(id)d requesterPlayerID:(id)iD;
@end

@implementation GKTTRLogRequestInfo

- (GKTTRLogRequestInfo)initWithPlayersAndPushTokens:(id)tokens radarID:(id)d requesterPlayerID:(id)iD
{
  tokensCopy = tokens;
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = GKTTRLogRequestInfo;
  v11 = [(GKTTRLogRequestInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(GKTTRLogRequestInfo *)v11 setPlayersAndPushTokens:tokensCopy];
    [(GKTTRLogRequestInfo *)v12 setRadarID:dCopy];
    [(GKTTRLogRequestInfo *)v12 setRequesterPlayerID:iDCopy];
  }

  return v12;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_313 != -1)
  {
    +[GKTTRLogRequestInfo secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_312;

  return v3;
}

void __46__GKTTRLogRequestInfo_secureCodedPropertyKeys__block_invoke()
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"playersAndPushTokens";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v9[0] = v2;
  v8[1] = @"radarID";
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v9[1] = v3;
  v8[2] = @"requesterAlias";
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  v6 = secureCodedPropertyKeys_sSecureCodedKeys_312;
  secureCodedPropertyKeys_sSecureCodedKeys_312 = v5;

  v7 = *MEMORY[0x277D85DE8];
}

@end