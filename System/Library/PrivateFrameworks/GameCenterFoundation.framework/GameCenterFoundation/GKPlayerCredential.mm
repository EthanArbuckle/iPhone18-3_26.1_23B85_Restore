@interface GKPlayerCredential
+ (id)secureCodedPropertyKeys;
- (BOOL)isEqual:(id)a3;
- (NSString)scopeAsString;
- (id)description;
- (unint64_t)hash;
@end

@implementation GKPlayerCredential

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKPlayerCredential *)self environment];
    if (v6 != [v5 environment])
    {
      v15 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v7 = [(GKPlayerCredential *)self altDSID];
    if (v7 || ([v5 altDSID], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (-[GKPlayerCredential DSID](self, "DSID"), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v17 = [v5 DSID];

      if (!v17)
      {
        v11 = [(GKPlayerCredential *)self authenticationToken];
        v12 = [v5 authenticationToken];
        goto LABEL_10;
      }
    }

    v8 = [(GKPlayerCredential *)self altDSID];
    if (!v8 || (v9 = v8, [v5 altDSID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      v11 = [(GKPlayerCredential *)self DSID];
      v13 = [v5 DSID];
      v14 = [v11 isEqual:v13];
      goto LABEL_14;
    }

    v11 = [(GKPlayerCredential *)self altDSID];
    v12 = [v5 altDSID];
LABEL_10:
    v13 = v12;
    v14 = [v11 isEqualToString:v12];
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
  v2 = [(GKPlayerCredential *)self playerInternal];
  v3 = [v2 hash];

  return v3;
}

- (NSString)scopeAsString
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = v3;
  scope = self->_scope;
  if ((scope & 2) != 0)
  {
    [v3 appendString:@"Authorized "];
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
  v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v7 = [v4 stringByTrimmingCharactersInSet:v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(GKPlayerCredential *)self accountName];
  v6 = [(GKPlayerInternal *)self->_playerInternal conciseDescription];
  v7 = [(GKPlayerCredential *)self scopeAsString];
  altDSID = self->_altDSID;
  v9 = [v3 stringWithFormat:@"<%@ %p> account:%@ player:(%@) scope:<%@> (%@) environment:%d token:%@ altDSID:%@ DSID:%@", v4, self, v5, v6, v7, self->_scopeModificationDate, self->_environment, self->_authenticationToken, altDSID, self->_DSID];

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