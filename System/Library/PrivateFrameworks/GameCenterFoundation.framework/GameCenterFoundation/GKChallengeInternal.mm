@interface GKChallengeInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (NSString)subtitleText;
- (NSString)titleText;
- (id)findLocalGameBundleID;
- (id)serverRepresentationForReceivingPlayer:(id)player;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GKChallengeInternal;
  [(GKInternalRepresentation *)&v9 encodeWithCoder:coderCopy];
  playerID = [(GKPlayerInternal *)self->_issuingPlayer playerID];

  if (playerID)
  {
    playerID2 = [(GKPlayerInternal *)self->_issuingPlayer playerID];
    [coderCopy encodeObject:playerID2 forKey:@"issuingPlayerID"];
  }

  playerID3 = [(GKPlayerInternal *)self->_receivingPlayer playerID];

  if (playerID3)
  {
    playerID4 = [(GKPlayerInternal *)self->_receivingPlayer playerID];
    [coderCopy encodeObject:playerID4 forKey:@"receivingPlayerID"];
  }
}

- (unint64_t)hash
{
  challengeID = [(GKChallengeInternal *)self challengeID];
  v3 = [challengeID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    challengeID = [(GKChallengeInternal *)self challengeID];
    challengeID2 = [equalCopy challengeID];
    v7 = [challengeID isEqualToString:challengeID2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serverRepresentationForReceivingPlayer:(id)player
{
  v4 = MEMORY[0x277CBEB38];
  playerCopy = player;
  v6 = [[v4 alloc] initWithCapacity:0];
  bundleID = [(GKChallengeInternal *)self bundleID];
  [v6 setObject:bundleID forKey:@"bundle-id"];

  playerID = [playerCopy playerID];

  [v6 setObject:playerID forKey:@"receiving-player-id"];
  _gkServerTimestamp = [MEMORY[0x277CBEAA8] _gkServerTimestamp];
  [v6 setObject:_gkServerTimestamp forKey:@"issue-timestamp"];

  message = [(GKChallengeInternal *)self message];

  if (message)
  {
    message2 = [(GKChallengeInternal *)self message];
    [v6 setObject:message2 forKey:@"message"];
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
  issuingPlayer = [(GKChallengeInternal *)self issuingPlayer];
  v6 = [issuingPlayer displayNameWithOptions:0];
  v7 = [v3 stringWithFormat:v4, v6];

  return v7;
}

- (void)titleText
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_227904000, selfCopy, OS_LOG_TYPE_ERROR, "%@ needs to implement me!", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end