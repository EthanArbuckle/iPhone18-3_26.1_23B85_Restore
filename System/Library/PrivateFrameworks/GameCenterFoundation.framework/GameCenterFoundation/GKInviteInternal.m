@interface GKInviteInternal
+ (id)inviteFromNearbyPlayer:(id)a3 participantID:(id)a4 deviceID:(id)a5 bundleID:(id)a6 connectionData:(id)a7;
+ (id)inviteWithBulletin:(id)a3;
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (GKInviteInternal)init;
- (unint64_t)hash;
@end

@implementation GKInviteInternal

+ (id)inviteWithBulletin:(id)a3
{
  v3 = a3;
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
  v7 = [v3 sessionToken];
  v8 = [v7 base64EncodedStringWithOptions:0];
  [(GKInviteInternal *)v6 setInviteID:v8];

  v9 = [v3 message];
  [(GKInviteInternal *)v6 setMessage:v9];

  v10 = [v3 originatorPlayer];
  [(GKInviteInternal *)v6 setPlayer:v10];

  v11 = [v3 sessionToken];
  [(GKInviteInternal *)v6 setSessionToken:v11];

  v12 = [v3 inviteVersion];
  -[GKInviteInternal setVersion:](v6, "setVersion:", [v12 unsignedCharValue]);

  v13 = [v3 originatorPlayerID];
  [(GKInviteInternal *)v6 setPeerID:v13];

  v14 = [v3 peerPushToken];
  [(GKInviteInternal *)v6 setPeerPushToken:v14];

  v15 = [v3 peerNatType];
  -[GKInviteInternal setPeerNATType:](v6, "setPeerNATType:", [v15 integerValue]);

  v16 = [v3 peerNatIP];
  [(GKInviteInternal *)v6 setPeerNATIP:v16];

  v17 = [v3 peerBlob];
  [(GKInviteInternal *)v6 setPeerBlob:v17];

  -[GKInviteInternal setIsMessageBasedInvite:](v6, "setIsMessageBasedInvite:", [v3 isMessageBasedInvite]);
  -[GKInviteInternal setIsNearbyInvite:](v6, "setIsNearbyInvite:", [v3 isNearbyInvite]);
  -[GKInviteInternal setIsSharePlayInvite:](v6, "setIsSharePlayInvite:", [v3 isSharePlayInvite]);
  v18 = [v3 declineReason];
  [(GKInviteInternal *)v6 setDeclineReason:v18];

  v19 = [v3 transportVersionToUse];
  [(GKInviteInternal *)v6 setTransportVersionToUse:v19];

  v20 = [v3 sessionID];
  [(GKInviteInternal *)v6 setSessionID:v20];

  v21 = [v3 peerPseudonym];
  [(GKInviteInternal *)v6 setPeerPseudonym:v21];

  if ([v3 serverHosted])
  {
    [(GKInviteInternal *)v6 setMatchType:1];
  }

  v22 = [v3 clientDictionary];
  v23 = [v22 objectForKey:@"g"];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 unsignedIntegerValue];
  }

  else
  {
    v25 = 1;
  }

  [(GKInviteInternal *)v6 setPlayerGroup:v25];
  v26 = [v22 objectForKeyedSubscript:@"gp"];

  if (v26)
  {
    v27 = [GKTransportParticipant participantsFrom:v22 withKey:@"gp"];
    [(GKInviteInternal *)v6 setGameParticipants:v27];
  }

  v28 = [v22 objectForKeyedSubscript:@"lp"];

  if (v28)
  {
    v29 = [GKTransportParticipant participantsFrom:v22 withKey:@"lp"];
    [(GKInviteInternal *)v6 setLobbyParticipants:v29];
  }

  v30 = [v22 objectForKey:@"a"];
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

+ (id)inviteFromNearbyPlayer:(id)a3 participantID:(id)a4 deviceID:(id)a5 bundleID:(id)a6 connectionData:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(GKInviteInternal);
  [(GKInviteInternal *)v16 setPlayer:v15];
  [(GKInviteInternal *)v16 setParticipantID:v14];

  [(GKInviteInternal *)v16 setDeviceID:v13];
  [(GKInviteInternal *)v16 setBundleID:v12];
  [(GKInviteInternal *)v16 setPeerBlob:v11];

  v17 = [v15 playerID];
  [(GKInviteInternal *)v16 setPeerID:v17];

  [(GKInviteInternal *)v16 setMatchType:0];
  v18 = [v15 playerID];

  v19 = [GKInviteInternal nearbyInviteIDForPlayerID:v18 deviceID:v13 bundleID:v12];

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
  v2 = [(GKInviteInternal *)self inviteID];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKInviteInternal *)self inviteID];
    v7 = [v5 inviteID];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end