@interface GKPlayerCredential
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (NSString)scopeAsString;
- (id)description;
- (unint64_t)hash;
@end

@implementation GKPlayerCredential

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    environment = [(GKPlayerCredential *)self environment];
    if (environment != [v5 environment])
    {
      v15 = 0;
LABEL_15:

      goto LABEL_16;
    }

    altDSID = [(GKPlayerCredential *)self altDSID];
    if (altDSID || ([v5 altDSID], (altDSID = objc_claimAutoreleasedReturnValue()) != 0) || (-[GKPlayerCredential DSID](self, "DSID"), (altDSID = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      dSID = [v5 DSID];

      if (!dSID)
      {
        authenticationToken = [(GKPlayerCredential *)self authenticationToken];
        authenticationToken2 = [v5 authenticationToken];
        goto LABEL_10;
      }
    }

    altDSID2 = [(GKPlayerCredential *)self altDSID];
    if (!altDSID2 || (v9 = altDSID2, [v5 altDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      authenticationToken = [(GKPlayerCredential *)self DSID];
      dSID2 = [v5 DSID];
      v14 = [authenticationToken isEqual:dSID2];
      goto LABEL_14;
    }

    authenticationToken = [(GKPlayerCredential *)self altDSID];
    authenticationToken2 = [v5 altDSID];
LABEL_10:
    dSID2 = authenticationToken2;
    v14 = [authenticationToken isEqualToString:authenticationToken2];
LABEL_14:
    v15 = v14;

    goto LABEL_15;
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  playerInternal = [(GKPlayerCredential *)self playerInternal];
  v3 = [playerInternal hash];

  return v3;
}

- (NSString)scopeAsString
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  scope = self->_scope;
  if ((scope & 2) != 0)
  {
    [string appendString:@"Authorized "];
    scope = self->_scope;
    if ((scope & 8) == 0)
    {
LABEL_3:
      if ((scope & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((scope & 8) == 0)
  {
    goto LABEL_3;
  }

  [v4 appendString:@"Active "];
  if ((self->_scope & 4) != 0)
  {
LABEL_4:
    [v4 appendString:@"Primary "];
  }

LABEL_5:
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  accountName = [(GKPlayerCredential *)self accountName];
  conciseDescription = [(GKPlayerInternal *)self->_playerInternal conciseDescription];
  scopeAsString = [(GKPlayerCredential *)self scopeAsString];
  altDSID = self->_altDSID;
  v9 = [v3 stringWithFormat:@"<%@ %p> account:%@ player:(%@) scope:<%@> (%@) environment:%d token:%@ altDSID:%@ DSID:%@", v4, self, accountName, conciseDescription, scopeAsString, self->_scopeModificationDate, self->_environment, self->_authenticationToken, altDSID, self->_DSID];

  return v9;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_17 != -1)
  {
    +[GKPlayerCredential secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_17;

  return v3;
}

void __45__GKPlayerCredential_secureCodedPropertyKeys__block_invoke()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v3[0] = @"accountName";
  v4[0] = objc_opt_class();
  v3[1] = @"authenticationToken";
  v4[1] = objc_opt_class();
  v3[2] = @"playerInternal";
  v4[2] = objc_opt_class();
  v3[3] = @"environment";
  v4[3] = objc_opt_class();
  v3[4] = @"scope";
  v4[4] = objc_opt_class();
  v3[5] = @"scopeModificationDate";
  v4[5] = objc_opt_class();
  v3[6] = @"altDSID";
  v4[6] = objc_opt_class();
  v3[7] = @"DSID";
  v4[7] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_17;
  secureCodedPropertyKeys_sSecureCodedKeys_17 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end