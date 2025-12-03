@interface GKInviteInternal
+ (id)inviteFromNearbyPlayer:(id)player participantID:(id)d deviceID:(id)iD bundleID:(id)bundleID connectionData:(id)data;
+ (id)inviteWithBulletin:(id)bulletin;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (GKInviteInternal)init;
- (unint64_t)hash;
@end

@implementation GKInviteInternal

+ (id)inviteWithBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKMultiplayer Internal: inviteWithBulletin:", buf, 2u);
  }

  v6 = objc_alloc_init(GKInviteInternal);
  sessionToken = [bulletinCopy sessionToken];
  v8 = [sessionToken base64EncodedStringWithOptions:0];
  [(GKInviteInternal *)v6 setInviteID:v8];

  message = [bulletinCopy message];
  [(GKInviteInternal *)v6 setMessage:message];

  originatorPlayer = [bulletinCopy originatorPlayer];
  [(GKInviteInternal *)v6 setPlayer:originatorPlayer];

  sessionToken2 = [bulletinCopy sessionToken];
  [(GKInviteInternal *)v6 setSessionToken:sessionToken2];

  inviteVersion = [bulletinCopy inviteVersion];
  -[GKInviteInternal setVersion:](v6, "setVersion:", [inviteVersion unsignedCharValue]);

  originatorPlayerID = [bulletinCopy originatorPlayerID];
  [(GKInviteInternal *)v6 setPeerID:originatorPlayerID];

  peerPushToken = [bulletinCopy peerPushToken];
  [(GKInviteInternal *)v6 setPeerPushToken:peerPushToken];

  peerNatType = [bulletinCopy peerNatType];
  -[GKInviteInternal setPeerNATType:](v6, "setPeerNATType:", [peerNatType integerValue]);

  peerNatIP = [bulletinCopy peerNatIP];
  [(GKInviteInternal *)v6 setPeerNATIP:peerNatIP];

  peerBlob = [bulletinCopy peerBlob];
  [(GKInviteInternal *)v6 setPeerBlob:peerBlob];

  -[GKInviteInternal setIsMessageBasedInvite:](v6, "setIsMessageBasedInvite:", [bulletinCopy isMessageBasedInvite]);
  -[GKInviteInternal setIsNearbyInvite:](v6, "setIsNearbyInvite:", [bulletinCopy isNearbyInvite]);
  -[GKInviteInternal setIsSharePlayInvite:](v6, "setIsSharePlayInvite:", [bulletinCopy isSharePlayInvite]);
  declineReason = [bulletinCopy declineReason];
  [(GKInviteInternal *)v6 setDeclineReason:declineReason];

  transportVersionToUse = [bulletinCopy transportVersionToUse];
  [(GKInviteInternal *)v6 setTransportVersionToUse:transportVersionToUse];

  sessionID = [bulletinCopy sessionID];
  [(GKInviteInternal *)v6 setSessionID:sessionID];

  peerPseudonym = [bulletinCopy peerPseudonym];
  [(GKInviteInternal *)v6 setPeerPseudonym:peerPseudonym];

  if ([bulletinCopy serverHosted])
  {
    [(GKInviteInternal *)v6 setMatchType:1];
  }

  clientDictionary = [bulletinCopy clientDictionary];
  v23 = [clientDictionary objectForKey:@"g"];
  v24 = v23;
  if (v23)
  {
    unsignedIntegerValue = [v23 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  [(GKInviteInternal *)v6 setPlayerGroup:unsignedIntegerValue];
  v26 = [clientDictionary objectForKeyedSubscript:@"gp"];

  if (v26)
  {
    v27 = [GKTransportParticipant participantsFrom:clientDictionary withKey:@"gp"];
    [(GKInviteInternal *)v6 setGameParticipants:v27];
  }

  v28 = [clientDictionary objectForKeyedSubscript:@"lp"];

  if (v28)
  {
    v29 = [GKTransportParticipant participantsFrom:clientDictionary withKey:@"lp"];
    [(GKInviteInternal *)v6 setLobbyParticipants:v29];
  }

  v30 = [clientDictionary objectForKey:@"a"];
  v31 = v30;
  if (v30)
  {
    -[GKInviteInternal setPlayerAttributes:](v6, "setPlayerAttributes:", [v30 unsignedIntValue]);
  }

  if (!os_log_GKGeneral)
  {
    v32 = GKOSLoggers();
  }

  v33 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&dword_227904000, v33, OS_LOG_TYPE_INFO, "inviteWithBulletin: Invite has been set up", v35, 2u);
  }

  return v6;
}

+ (id)inviteFromNearbyPlayer:(id)player participantID:(id)d deviceID:(id)iD bundleID:(id)bundleID connectionData:(id)data
{
  dataCopy = data;
  bundleIDCopy = bundleID;
  iDCopy = iD;
  dCopy = d;
  playerCopy = player;
  v16 = objc_alloc_init(GKInviteInternal);
  [(GKInviteInternal *)v16 setPlayer:playerCopy];
  [(GKInviteInternal *)v16 setParticipantID:dCopy];

  [(GKInviteInternal *)v16 setDeviceID:iDCopy];
  [(GKInviteInternal *)v16 setBundleID:bundleIDCopy];
  [(GKInviteInternal *)v16 setPeerBlob:dataCopy];

  playerID = [playerCopy playerID];
  [(GKInviteInternal *)v16 setPeerID:playerID];

  [(GKInviteInternal *)v16 setMatchType:0];
  playerID2 = [playerCopy playerID];

  v19 = [GKInviteInternal nearbyInviteIDForPlayerID:playerID2 deviceID:iDCopy bundleID:bundleIDCopy];

  [(GKInviteInternal *)v16 setInviteID:v19];

  return v16;
}

- (GKInviteInternal)init
{
  v3.receiver = self;
  v3.super_class = GKInviteInternal;
  result = [(GKInviteInternal *)&v3 init];
  if (result)
  {
    result->_matchType = 0;
    result->_playerGroup = 1;
    result->_playerAttributes = -1;
  }

  return result;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_224 != -1)
  {
    +[GKInviteInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_223;

  return v3;
}

void __43__GKInviteInternal_secureCodedPropertyKeys__block_invoke()
{
  v14[27] = *MEMORY[0x277D85DE8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  v14[3] = objc_opt_class();
  v14[4] = objc_opt_class();
  v14[5] = objc_opt_class();
  v14[6] = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"inviteID", @"sessionToken", @"player", @"participantID", @"deviceID", @"bundleID", @"message", @"localizableMessage"}];
  v14[7] = v3;
  v13[8] = @"matchType";
  v14[8] = objc_opt_class();
  v13[9] = @"playerGroup";
  v14[9] = objc_opt_class();
  v13[10] = @"playerAttributes";
  v14[10] = objc_opt_class();
  v13[11] = @"peerID";
  v14[11] = objc_opt_class();
  v13[12] = @"peerPushToken";
  v14[12] = objc_opt_class();
  v13[13] = @"peerNATType";
  v14[13] = objc_opt_class();
  v13[14] = @"peerNATIP";
  v14[14] = objc_opt_class();
  v13[15] = @"peerBlob";
  v14[15] = objc_opt_class();
  v13[16] = @"rid";
  v14[16] = objc_opt_class();
  v13[17] = @"version";
  v14[17] = objc_opt_class();
  v13[18] = @"isMessageBasedInvite";
  v14[18] = objc_opt_class();
  v13[19] = @"isNearbyInvite";
  v14[19] = objc_opt_class();
  v13[20] = @"isSharePlayInvite";
  v14[20] = objc_opt_class();
  v13[21] = @"declineReason";
  v14[21] = objc_opt_class();
  v13[22] = @"transportVersionToUse";
  v14[22] = objc_opt_class();
  v13[23] = @"sessionID";
  v14[23] = objc_opt_class();
  v13[24] = @"peerPseudonym";
  v14[24] = objc_opt_class();
  v13[25] = @"gameParticipants";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v14[25] = v6;
  v13[26] = @"lobbyParticipants";
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v14[26] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:27];

  v11 = secureCodedPropertyKeys_sSecureCodedKeys_223;
  secureCodedPropertyKeys_sSecureCodedKeys_223 = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  inviteID = [(GKInviteInternal *)self inviteID];
  v3 = [inviteID hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    inviteID = [(GKInviteInternal *)self inviteID];
    inviteID2 = [v5 inviteID];

    v8 = [inviteID isEqual:inviteID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end