@interface GKMatchRequestInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)hasGuestPlayers;
- (BOOL)isEqual:(id)equal;
- (GKMatchRequestInternal)init;
- (unint64_t)hash;
@end

@implementation GKMatchRequestInternal

- (GKMatchRequestInternal)init
{
  v3.receiver = self;
  v3.super_class = GKMatchRequestInternal;
  result = [(GKMatchRequestInternal *)&v3 init];
  if (result)
  {
    result->_matchType = 0;
    result->_playerGroup = 1;
    result->_playerAttributes = -1;
    result->_minPlayers = 2;
    result->_maxPlayers = 2;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = equalCopy;
  minPlayers = [(GKMatchRequestInternal *)self minPlayers];
  if (minPlayers != [v5 minPlayers])
  {
    goto LABEL_15;
  }

  maxPlayers = [(GKMatchRequestInternal *)self maxPlayers];
  if (maxPlayers != [v5 maxPlayers])
  {
    goto LABEL_15;
  }

  defaultNumberOfPlayers = [(GKMatchRequestInternal *)self defaultNumberOfPlayers];
  if (defaultNumberOfPlayers != [v5 defaultNumberOfPlayers])
  {
    goto LABEL_15;
  }

  matchType = [(GKMatchRequestInternal *)self matchType];
  if (matchType != [v5 matchType])
  {
    goto LABEL_15;
  }

  playerGroup = [(GKMatchRequestInternal *)self playerGroup];
  if (playerGroup != [v5 playerGroup])
  {
    goto LABEL_15;
  }

  playerAttributes = [(GKMatchRequestInternal *)self playerAttributes];
  if (playerAttributes != [v5 playerAttributes])
  {
    goto LABEL_15;
  }

  localPlayerID = [(GKMatchRequestInternal *)self localPlayerID];
  localPlayerID2 = [v5 localPlayerID];
  if (localPlayerID == localPlayerID2)
  {
    goto LABEL_11;
  }

  localPlayerID3 = [(GKMatchRequestInternal *)self localPlayerID];
  localPlayerID4 = [v5 localPlayerID];
  if (![localPlayerID3 isEqualToString:localPlayerID4])
  {

LABEL_15:
    goto LABEL_16;
  }

  v102 = localPlayerID4;
  v103 = localPlayerID3;
LABEL_11:
  recipients = [(GKMatchRequestInternal *)self recipients];
  recipients2 = [v5 recipients];
  if (recipients == recipients2)
  {
    goto LABEL_18;
  }

  recipients3 = [(GKMatchRequestInternal *)self recipients];
  recipients4 = [v5 recipients];
  if ([recipients3 isEqualToArray:recipients4])
  {
    v100 = recipients4;
    v101 = recipients3;
LABEL_18:
    recipientPlayerIDs = [(GKMatchRequestInternal *)self recipientPlayerIDs];
    recipientPlayerIDs2 = [v5 recipientPlayerIDs];
    v24 = recipientPlayerIDs2;
    if (recipientPlayerIDs != recipientPlayerIDs2)
    {
      v25 = localPlayerID2;
      v26 = recipients2;
      v27 = recipients;
      v28 = recipientPlayerIDs2;
      v29 = recipientPlayerIDs;
      recipientPlayerIDs3 = [(GKMatchRequestInternal *)self recipientPlayerIDs];
      recipientPlayerIDs4 = [v5 recipientPlayerIDs];
      v94 = recipientPlayerIDs3;
      if (![recipientPlayerIDs3 isEqualToArray:?])
      {
        v31 = 0;
        recipientPlayerIDs = v29;
        v24 = v28;
        recipients = v27;
        recipients2 = v26;
        localPlayerID2 = v25;
LABEL_66:

LABEL_67:
        recipients4 = v100;
        recipients3 = v101;
        if (recipients == recipients2)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      recipientPlayerIDs = v29;
      v24 = v28;
      recipients = v27;
      recipients2 = v26;
      localPlayerID2 = v25;
    }

    messagesBasedRecipients = [(GKMatchRequestInternal *)self messagesBasedRecipients];
    messagesBasedRecipients2 = [v5 messagesBasedRecipients];
    v99 = messagesBasedRecipients;
    if (messagesBasedRecipients != messagesBasedRecipients2)
    {
      messagesBasedRecipients3 = [(GKMatchRequestInternal *)self messagesBasedRecipients];
      messagesBasedRecipients4 = [v5 messagesBasedRecipients];
      v89 = messagesBasedRecipients3;
      if (![messagesBasedRecipients3 isEqualToArray:messagesBasedRecipients4])
      {
        v95 = 0;
        v34 = messagesBasedRecipients2;
        v35 = v99;
LABEL_64:

LABEL_65:
        v31 = v95;
        if (recipientPlayerIDs == v24)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    inviteMessage = [(GKMatchRequestInternal *)self inviteMessage];
    inviteMessage2 = [v5 inviteMessage];
    v92 = inviteMessage;
    v90 = recipients2;
    if (inviteMessage != inviteMessage2)
    {
      inviteMessage3 = [(GKMatchRequestInternal *)self inviteMessage];
      inviteMessage4 = [v5 inviteMessage];
      v85 = inviteMessage3;
      if (![inviteMessage3 isEqualToString:?])
      {
        v95 = 0;
        v38 = v92;
        v35 = v99;
        v39 = inviteMessage2;
LABEL_62:

LABEL_63:
        v34 = messagesBasedRecipients2;
        recipients2 = v90;
        if (v35 == messagesBasedRecipients2)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    localizableInviteMessage = [(GKMatchRequestInternal *)self localizableInviteMessage];
    [v5 localizableInviteMessage];
    v87 = v86 = recipientPlayerIDs;
    if (localizableInviteMessage == v87)
    {
      v96 = recipients;
    }

    else
    {
      v77 = v24;
      localizableInviteMessage2 = [(GKMatchRequestInternal *)self localizableInviteMessage];
      localizableInviteMessage3 = [v5 localizableInviteMessage];
      v80 = localizableInviteMessage2;
      if (![localizableInviteMessage2 isEqualToDictionary:?])
      {
        v95 = 0;
        v38 = v92;
        v48 = v87;
        v24 = v77;
        v39 = inviteMessage2;
LABEL_60:

LABEL_61:
        recipientPlayerIDs = v86;
        v35 = v99;
        if (v38 == v39)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      v96 = recipients;
      v24 = v77;
    }

    sessionToken = [(GKMatchRequestInternal *)self sessionToken];
    sessionToken2 = [v5 sessionToken];
    v82 = sessionToken;
    v83 = localizableInviteMessage;
    if (sessionToken == sessionToken2)
    {
      recipients = v96;
    }

    else
    {
      sessionToken3 = [(GKMatchRequestInternal *)self sessionToken];
      sessionToken4 = [v5 sessionToken];
      v76 = sessionToken3;
      v44 = [sessionToken3 isEqual:?];
      recipients = v96;
      if (!v44)
      {
        v45 = 0;
        v46 = sessionToken2;
        v47 = v82;
LABEL_43:
        v95 = v45;

        goto LABEL_59;
      }
    }

    version = [(GKMatchRequestInternal *)self version];
    if (version != [v5 version] || (v50 = -[GKMatchRequestInternal isPreloadedMatch](self, "isPreloadedMatch"), v50 != objc_msgSend(v5, "isPreloadedMatch")) || (v51 = -[GKMatchRequestInternal restrictToAutomatch](self, "restrictToAutomatch"), v51 != objc_msgSend(v5, "restrictToAutomatch")) || (v52 = -[GKMatchRequestInternal isLateJoin](self, "isLateJoin"), v52 != objc_msgSend(v5, "isLateJoin")))
    {
      v45 = 0;
      v53 = 0;
      v46 = sessionToken2;
      v47 = v82;
      if (v82 != sessionToken2)
      {
        goto LABEL_43;
      }

LABEL_58:

      v95 = v53;
LABEL_59:
      localizableInviteMessage = v83;
      v48 = v87;
      v38 = v92;
      v39 = inviteMessage2;
      if (v83 == v87)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v72 = localPlayerID;
    v73 = localPlayerID2;
    v97 = recipients;
    v78 = v24;
    queueName = [(GKMatchRequestInternal *)self queueName];
    [v5 queueName];
    v55 = v74 = queueName;
    if (queueName != v55)
    {
      queueName2 = [(GKMatchRequestInternal *)self queueName];
      queueName3 = [v5 queueName];
      v71 = queueName2;
      if (![queueName2 isEqualToString:?])
      {
        v57 = 0;
LABEL_56:

LABEL_57:
        v45 = v57;
        v53 = v57;
        v46 = sessionToken2;
        v47 = v82;
        v24 = v78;
        recipients = v97;
        localPlayerID = v72;
        localPlayerID2 = v73;
        if (v82 != sessionToken2)
        {
          goto LABEL_43;
        }

        goto LABEL_58;
      }
    }

    properties = [(GKMatchRequestInternal *)self properties];
    [v5 properties];
    v60 = v59 = properties;
    if (properties == v60 || (-[GKMatchRequestInternal properties](self, "properties"), v61 = objc_claimAutoreleasedReturnValue(), [v5 properties], v68 = objc_claimAutoreleasedReturnValue(), v69 = v61, objc_msgSend(v61, "isEqualToDictionary:")))
    {
      recipientProperties = [(GKMatchRequestInternal *)self recipientProperties];
      recipientProperties2 = [v5 recipientProperties];
      v64 = recipientProperties;
      v65 = recipientProperties2;
      if (recipientProperties == recipientProperties2)
      {

        v57 = 1;
      }

      else
      {
        recipientProperties3 = [(GKMatchRequestInternal *)self recipientProperties];
        recipientProperties4 = [v5 recipientProperties];
        v57 = [recipientProperties3 isEqualToDictionary:recipientProperties4];
      }

      if (v59 == v60)
      {
LABEL_55:

        if (v74 == v55)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v57 = 0;
    }

    goto LABEL_55;
  }

  v31 = 0;
LABEL_68:

LABEL_69:
  if (localPlayerID != localPlayerID2)
  {
  }

  if (v31)
  {
    v20 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v20 = 0;
LABEL_17:

  return v20;
}

- (unint64_t)hash
{
  minPlayers = [(GKMatchRequestInternal *)self minPlayers];
  v4 = ([(GKMatchRequestInternal *)self maxPlayers]<< 20) | (minPlayers << 26);
  matchType = [(GKMatchRequestInternal *)self matchType];
  return [(GKMatchRequestInternal *)self version]| (matchType << 16) | v4;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_29 != -1)
  {
    +[GKMatchRequestInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_29;

  return v3;
}

void __49__GKMatchRequestInternal_secureCodedPropertyKeys__block_invoke()
{
  v26[22] = *MEMORY[0x277D85DE8];
  v25[0] = @"minPlayers";
  v26[0] = objc_opt_class();
  v25[1] = @"maxPlayers";
  v26[1] = objc_opt_class();
  v25[2] = @"defaultNumberOfPlayers";
  v26[2] = objc_opt_class();
  v25[3] = @"playerGroup";
  v26[3] = objc_opt_class();
  v25[4] = @"playerAttributes";
  v26[4] = objc_opt_class();
  v25[5] = @"localPlayerID";
  v26[5] = objc_opt_class();
  v25[6] = @"recipients";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0}];
  v26[6] = v3;
  v25[7] = @"recipientPlayerIDs";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  v26[7] = v7;
  v25[8] = @"messagesBasedRecipients";
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v26[8] = v11;
  v25[9] = @"inviteMessage";
  v26[9] = objc_opt_class();
  v25[10] = @"localizableInviteMessage";
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  v26[10] = v15;
  v25[11] = @"matchType";
  v26[11] = objc_opt_class();
  v25[12] = @"sessionToken";
  v26[12] = objc_opt_class();
  v25[13] = @"rid";
  v26[13] = objc_opt_class();
  v25[14] = @"version";
  v26[14] = objc_opt_class();
  v25[15] = @"preloadedMatch";
  v26[15] = objc_opt_class();
  v25[16] = @"restrictToAutomatch";
  v26[16] = objc_opt_class();
  v25[17] = @"archivedSharePlayInviteeTokensFromProgrammaticInvite";
  v26[17] = objc_opt_class();
  v25[18] = @"isLateJoin";
  v26[18] = objc_opt_class();
  v25[19] = @"queueName";
  v26[19] = objc_opt_class();
  v25[20] = @"properties";
  v16 = MEMORY[0x277CBEB98];
  v17 = +[GKInternalRepresentation secureCodedJsonTypes];
  v18 = [v16 setWithSet:v17];
  v26[20] = v18;
  v25[21] = @"recipientProperties";
  v19 = [MEMORY[0x277CBEB58] setWithObject:objc_opt_class()];
  v20 = +[GKInternalRepresentation secureCodedJsonTypes];
  v21 = [v19 setByAddingObjectsFromSet:v20];
  v26[21] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:22];

  v23 = secureCodedPropertyKeys_sSecureCodedKeys_29;
  secureCodedPropertyKeys_sSecureCodedKeys_29 = v22;

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasGuestPlayers
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  recipients = [(GKMatchRequestInternal *)self recipients];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__GKMatchRequestInternal_hasGuestPlayers__block_invoke;
  v4[3] = &unk_2785E26A8;
  v4[4] = &v5;
  [recipients enumerateObjectsUsingBlock:v4];

  LOBYTE(recipients) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return recipients;
}

uint64_t __41__GKMatchRequestInternal_hasGuestPlayers__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isGuestPlayer];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

@end