@interface NSSAccountsInfoRespMsgAccountInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAaPrimaryAccount:(BOOL)a3;
- (void)setHasAuthenticated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSSAccountsInfoRespMsgAccountInfo

- (void)setHasAuthenticated:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAaPrimaryAccount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSAccountsInfoRespMsgAccountInfo;
  v4 = [(NSSAccountsInfoRespMsgAccountInfo *)&v8 description];
  v5 = [(NSSAccountsInfoRespMsgAccountInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"username"];
  }

  dSID = self->_dSID;
  if (dSID)
  {
    [v4 setObject:dSID forKey:@"DSID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_authenticated];
    [v4 setObject:v8 forKey:@"authenticated"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v4 setObject:altDSID forKey:@"altDSID"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_aaPrimaryAccount];
    [v4 setObject:v12 forKey:@"aa_primaryAccount"];

    has = self->_has;
  }

  if (has)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_aaIsManaged];
    [v4 setObject:v13 forKey:@"aa_isManaged"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_username)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_dSID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    authenticated = self->_authenticated;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    aaPrimaryAccount = self->_aaPrimaryAccount;
    PBDataWriterWriteBOOLField();
    v4 = v9;
    has = self->_has;
  }

  if (has)
  {
    aaIsManaged = self->_aaIsManaged;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
    v4 = v6;
  }

  if (self->_username)
  {
    [v6 setUsername:?];
    v4 = v6;
  }

  if (self->_dSID)
  {
    [v6 setDSID:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[50] = self->_authenticated;
    v4[52] |= 4u;
  }

  if (self->_altDSID)
  {
    [v6 setAltDSID:?];
    v4 = v6;
  }

  if (self->_type)
  {
    [v6 setType:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[49] = self->_aaPrimaryAccount;
    v4[52] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[48] = self->_aaIsManaged;
    v4[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_username copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSString *)self->_dSID copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 50) = self->_authenticated;
    *(v5 + 52) |= 4u;
  }

  v12 = [(NSString *)self->_altDSID copyWithZone:a3];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  v14 = [(NSString *)self->_type copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 49) = self->_aaPrimaryAccount;
    *(v5 + 52) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 48) = self->_aaIsManaged;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 3))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  username = self->_username;
  if (username | *(v4 + 5))
  {
    if (![(NSString *)username isEqual:?])
    {
      goto LABEL_22;
    }
  }

  dSID = self->_dSID;
  if (dSID | *(v4 + 2))
  {
    if (![(NSString *)dSID isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v8 = *(v4 + 52);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0)
    {
      goto LABEL_22;
    }

    v13 = *(v4 + 50);
    if (self->_authenticated)
    {
      if ((*(v4 + 50) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (*(v4 + 50))
    {
      goto LABEL_22;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
    goto LABEL_22;
  }

  altDSID = self->_altDSID;
  if (altDSID | *(v4 + 1) && ![(NSString *)altDSID isEqual:?])
  {
    goto LABEL_22;
  }

  type = self->_type;
  if (type | *(v4 + 4))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 52) & 2) == 0)
  {
    goto LABEL_22;
  }

  v14 = *(v4 + 49);
  if (self->_aaPrimaryAccount)
  {
    if ((*(v4 + 49) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 49))
  {
    goto LABEL_22;
  }

LABEL_16:
  v11 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 52))
    {
      if (self->_aaIsManaged)
      {
        if (*(v4 + 48))
        {
          goto LABEL_36;
        }
      }

      else if (!*(v4 + 48))
      {
LABEL_36:
        v11 = 1;
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_username hash];
  v5 = [(NSString *)self->_dSID hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_authenticated;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_altDSID hash];
  v8 = [(NSString *)self->_type hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_aaPrimaryAccount;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v9 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = 2654435761 * self->_aaIsManaged;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(NSSAccountsInfoRespMsgAccountInfo *)self setIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(NSSAccountsInfoRespMsgAccountInfo *)self setUsername:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(NSSAccountsInfoRespMsgAccountInfo *)self setDSID:?];
    v4 = v6;
  }

  if ((v4[52] & 4) != 0)
  {
    self->_authenticated = v4[50];
    *&self->_has |= 4u;
  }

  if (*(v4 + 1))
  {
    [(NSSAccountsInfoRespMsgAccountInfo *)self setAltDSID:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(NSSAccountsInfoRespMsgAccountInfo *)self setType:?];
    v4 = v6;
  }

  v5 = v4[52];
  if ((v5 & 2) != 0)
  {
    self->_aaPrimaryAccount = v4[49];
    *&self->_has |= 2u;
    v5 = v4[52];
  }

  if (v5)
  {
    self->_aaIsManaged = v4[48];
    *&self->_has |= 1u;
  }
}

@end