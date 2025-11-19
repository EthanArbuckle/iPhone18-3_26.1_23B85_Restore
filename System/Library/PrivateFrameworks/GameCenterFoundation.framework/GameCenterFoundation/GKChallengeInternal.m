@interface GKChallengeInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (NSString)subtitleText;
- (NSString)titleText;
- (id)findLocalGameBundleID;
- (id)serverRepresentationForReceivingPlayer:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)titleText;
@end

@implementation GKChallengeInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_27 != -1)
  {
    +[GKChallengeInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_27;

  return v3;
}

void __46__GKChallengeInternal_secureCodedPropertyKeys__block_invoke()
{
  v8[10] = *MEMORY[0x277D85DE8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"challengeID", @"bundleID", @"issueDate", @"completionDate", @"state", @"compatibleBundleIDs"}];
  v8[5] = v3;
  v7[6] = @"message";
  v8[6] = objc_opt_class();
  v7[7] = @"game";
  v8[7] = objc_opt_class();
  v7[8] = @"issuingPlayer";
  v8[8] = objc_opt_class();
  v7[9] = @"receivingPlayer";
  v8[9] = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:10];

  v5 = secureCodedPropertyKeys_sSecureCodedKeys_27;
  secureCodedPropertyKeys_sSecureCodedKeys_27 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GKChallengeInternal;
  [(GKInternalRepresentation *)&v9 encodeWithCoder:v4];
  v5 = [(GKPlayerInternal *)self->_issuingPlayer playerID];

  if (v5)
  {
    v6 = [(GKPlayerInternal *)self->_issuingPlayer playerID];
    [v4 encodeObject:v6 forKey:@"issuingPlayerID"];
  }

  v7 = [(GKPlayerInternal *)self->_receivingPlayer playerID];

  if (v7)
  {
    v8 = [(GKPlayerInternal *)self->_receivingPlayer playerID];
    [v4 encodeObject:v8 forKey:@"receivingPlayerID"];
  }
}

- (unint64_t)hash
{
  v2 = [(GKChallengeInternal *)self challengeID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GKChallengeInternal *)self challengeID];
    v6 = [v4 challengeID];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serverRepresentationForReceivingPlayer:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [[v4 alloc] initWithCapacity:0];
  v7 = [(GKChallengeInternal *)self bundleID];
  [v6 setObject:v7 forKey:@"bundle-id"];

  v8 = [v5 playerID];

  [v6 setObject:v8 forKey:@"receiving-player-id"];
  v9 = [MEMORY[0x277CBEAA8] _gkServerTimestamp];
  [v6 setObject:v9 forKey:@"issue-timestamp"];

  v10 = [(GKChallengeInternal *)self message];

  if (v10)
  {
    v11 = [(GKChallengeInternal *)self message];
    [v6 setObject:v11 forKey:@"message"];
  }

  return v6;
}

- (id)findLocalGameBundleID
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[GKApplicationWorkspace defaultWorkspace];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_compatibleBundleIDs;
  v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 applicationProxyForBundleID:{v8, v12}];
        if ([v9 isInstalled] && (objc_msgSend(v9, "isRestricted") & 1) == 0)
        {
          v5 = v8;

          goto LABEL_12;
        }
      }

      v5 = [(NSOrderedSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)titleText
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    [(GKChallengeInternal *)v3 titleText];
  }

  return 0;
}

- (NSString)subtitleText
{
  v3 = MEMORY[0x277CCACA8];
  v4 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHORT_FROM_SUBTITLE_FORMAT];
  v5 = [(GKChallengeInternal *)self issuingPlayer];
  v6 = [v5 displayNameWithOptions:0];
  v7 = [v3 stringWithFormat:v4, v6];

  return v7;
}

- (void)titleText
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "%@ needs to implement me!", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end