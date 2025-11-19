@interface GKMatchRequestInternal
+ (id)secureCodedPropertyKeys;
- (BOOL)hasGuestPlayers;
- (BOOL)isEqual:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [(GKMatchRequestInternal *)self minPlayers];
  if (v6 != [v5 minPlayers])
  {
    goto LABEL_15;
  }

  v7 = [(GKMatchRequestInternal *)self maxPlayers];
  if (v7 != [v5 maxPlayers])
  {
    goto LABEL_15;
  }

  v8 = [(GKMatchRequestInternal *)self defaultNumberOfPlayers];
  if (v8 != [v5 defaultNumberOfPlayers])
  {
    goto LABEL_15;
  }

  v9 = [(GKMatchRequestInternal *)self matchType];
  if (v9 != [v5 matchType])
  {
    goto LABEL_15;
  }

  v10 = [(GKMatchRequestInternal *)self playerGroup];
  if (v10 != [v5 playerGroup])
  {
    goto LABEL_15;
  }

  v11 = [(GKMatchRequestInternal *)self playerAttributes];
  if (v11 != [v5 playerAttributes])
  {
    goto LABEL_15;
  }

  v12 = [(GKMatchRequestInternal *)self localPlayerID];
  v13 = [v5 localPlayerID];
  if (v12 == v13)
  {
    goto LABEL_11;
  }

  v14 = [(GKMatchRequestInternal *)self localPlayerID];
  v15 = [v5 localPlayerID];
  if (![v14 isEqualToString:v15])
  {

LABEL_15:
    goto LABEL_16;
  }

  v102 = v15;
  v103 = v14;
LABEL_11:
  v16 = [(GKMatchRequestInternal *)self recipients];
  v17 = [v5 recipients];
  if (v16 == v17)
  {
    goto LABEL_18;
  }

  v18 = [(GKMatchRequestInternal *)self recipients];
  v19 = [v5 recipients];
  if ([v18 isEqualToArray:v19])
  {
    v100 = v19;
    v101 = v18;
LABEL_18:
    v22 = [(GKMatchRequestInternal *)self recipientPlayerIDs];
    v23 = [v5 recipientPlayerIDs];
    v24 = v23;
    if (v22 != v23)
    {
      v25 = v13;
      v26 = v17;
      v27 = v16;
      v28 = v23;
      v29 = v22;
      v30 = [(GKMatchRequestInternal *)self recipientPlayerIDs];
      v93 = [v5 recipientPlayerIDs];
      v94 = v30;
      if (![v30 isEqualToArray:?])
      {
        v31 = 0;
        v22 = v29;
        v24 = v28;
        v16 = v27;
        v17 = v26;
        v13 = v25;
LABEL_66:

LABEL_67:
        v19 = v100;
        v18 = v101;
        if (v16 == v17)
        {
          goto LABEL_69;
        }

        goto LABEL_68;
      }

      v22 = v29;
      v24 = v28;
      v16 = v27;
      v17 = v26;
      v13 = v25;
    }

    v32 = [(GKMatchRequestInternal *)self messagesBasedRecipients];
    v98 = [v5 messagesBasedRecipients];
    v99 = v32;
    if (v32 != v98)
    {
      v33 = [(GKMatchRequestInternal *)self messagesBasedRecipients];
      v88 = [v5 messagesBasedRecipients];
      v89 = v33;
      if (![v33 isEqualToArray:v88])
      {
        v95 = 0;
        v34 = v98;
        v35 = v99;
LABEL_64:

LABEL_65:
        v31 = v95;
        if (v22 == v24)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    v36 = [(GKMatchRequestInternal *)self inviteMessage];
    v91 = [v5 inviteMessage];
    v92 = v36;
    v90 = v17;
    if (v36 != v91)
    {
      v37 = [(GKMatchRequestInternal *)self inviteMessage];
      v84 = [v5 inviteMessage];
      v85 = v37;
      if (![v37 isEqualToString:?])
      {
        v95 = 0;
        v38 = v92;
        v35 = v99;
        v39 = v91;
LABEL_62:

LABEL_63:
        v34 = v98;
        v17 = v90;
        if (v35 == v98)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    v40 = [(GKMatchRequestInternal *)self localizableInviteMessage];
    [v5 localizableInviteMessage];
    v87 = v86 = v22;
    if (v40 == v87)
    {
      v96 = v16;
    }

    else
    {
      v77 = v24;
      v41 = [(GKMatchRequestInternal *)self localizableInviteMessage];
      v79 = [v5 localizableInviteMessage];
      v80 = v41;
      if (![v41 isEqualToDictionary:?])
      {
        v95 = 0;
        v38 = v92;
        v48 = v87;
        v24 = v77;
        v39 = v91;
LABEL_60:

LABEL_61:
        v22 = v86;
        v35 = v99;
        if (v38 == v39)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      v96 = v16;
      v24 = v77;
    }

    v42 = [(GKMatchRequestInternal *)self sessionToken];
    v81 = [v5 sessionToken];
    v82 = v42;
    v83 = v40;
    if (v42 == v81)
    {
      v16 = v96;
    }

    else
    {
      v43 = [(GKMatchRequestInternal *)self sessionToken];
      v75 = [v5 sessionToken];
      v76 = v43;
      v44 = [v43 isEqual:?];
      v16 = v96;
      if (!v44)
      {
        v45 = 0;
        v46 = v81;
        v47 = v82;
LABEL_43:
        v95 = v45;

        goto LABEL_59;
      }
    }

    v49 = [(GKMatchRequestInternal *)self version];
    if (v49 != [v5 version] || (v50 = -[GKMatchRequestInternal isPreloadedMatch](self, "isPreloadedMatch"), v50 != objc_msgSend(v5, "isPreloadedMatch")) || (v51 = -[GKMatchRequestInternal restrictToAutomatch](self, "restrictToAutomatch"), v51 != objc_msgSend(v5, "restrictToAutomatch")) || (v52 = -[GKMatchRequestInternal isLateJoin](self, "isLateJoin"), v52 != objc_msgSend(v5, "isLateJoin")))
    {
      v45 = 0;
      v53 = 0;
      v46 = v81;
      v47 = v82;
      if (v82 != v81)
      {
        goto LABEL_43;
      }

LABEL_58:

      v95 = v53;
LABEL_59:
      v40 = v83;
      v48 = v87;
      v38 = v92;
      v39 = v91;
      if (v83 == v87)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v72 = v12;
    v73 = v13;
    v97 = v16;
    v78 = v24;
    v54 = [(GKMatchRequestInternal *)self queueName];
    [v5 queueName];
    v55 = v74 = v54;
    if (v54 != v55)
    {
      v56 = [(GKMatchRequestInternal *)self queueName];
      v70 = [v5 queueName];
      v71 = v56;
      if (![v56 isEqualToString:?])
      {
        v57 = 0;
LABEL_56:

LABEL_57:
        v45 = v57;
        v53 = v57;
        v46 = v81;
        v47 = v82;
        v24 = v78;
        v16 = v97;
        v12 = v72;
        v13 = v73;
        if (v82 != v81)
        {
          goto LABEL_43;
        }

        goto LABEL_58;
      }
    }

    v58 = [(GKMatchRequestInternal *)self properties];
    [v5 properties];
    v60 = v59 = v58;
    if (v58 == v60 || (-[GKMatchRequestInternal properties](self, "properties"), v61 = objc_claimAutoreleasedReturnValue(), [v5 properties], v68 = objc_claimAutoreleasedReturnValue(), v69 = v61, objc_msgSend(v61, "isEqualToDictionary:")))
    {
      v62 = [(GKMatchRequestInternal *)self recipientProperties];
      v63 = [v5 recipientProperties];
      v64 = v62;
      v65 = v63;
      if (v62 == v63)
      {

        v57 = 1;
      }

      else
      {
        v66 = [(GKMatchRequestInternal *)self recipientProperties];
        v67 = [v5 recipientProperties];
        v57 = [v66 isEqualToDictionary:v67];
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
  if (v12 != v13)
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
  v3 = [(GKMatchRequestInternal *)self minPlayers];
  v4 = ([(GKMatchRequestInternal *)self maxPlayers]<< 20) | (v3 << 26);
  v5 = [(GKMatchRequestInternal *)self matchType];
  return [(GKMatchRequestInternal *)self version]| (v5 << 16) | v4;
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
  v2 = [(GKMatchRequestInternal *)self recipients];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__GKMatchRequestInternal_hasGuestPlayers__block_invoke;
  v4[3] = &unk_2785E26A8;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
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