@interface NNMKProtoMailbox
+ (id)protoMailboxFromMailbox:(id)mailbox;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mailbox;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSyncEnabled:(BOOL)enabled;
- (void)setHasSyncRequested:(BOOL)requested;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMailbox

- (void)setHasSyncEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSyncRequested:(BOOL)requested
{
  if (requested)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMailbox;
  v4 = [(NNMKProtoMailbox *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMailbox *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  accountId = self->_accountId;
  if (accountId)
  {
    [dictionary setObject:accountId forKey:@"accountId"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v4 setObject:mailboxId forKey:@"mailboxId"];
  }

  customName = self->_customName;
  if (customName)
  {
    [v4 setObject:customName forKey:@"customName"];
  }

  has = self->_has;
  if (has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_filterType];
    [v4 setObject:v12 forKey:@"filterType"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncEnabled];
  [v4 setObject:v13 forKey:@"syncEnabled"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_type];
  [v4 setObject:v14 forKey:@"type"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_syncRequested];
    [v4 setObject:v9 forKey:@"syncRequested"];
  }

LABEL_12:
  url = self->_url;
  if (url)
  {
    [v4 setObject:url forKey:@"url"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_customName)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    filterType = self->_filterType;
    PBDataWriterWriteUint32Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  syncEnabled = self->_syncEnabled;
  PBDataWriterWriteBOOLField();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  type = self->_type;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    syncRequested = self->_syncRequested;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_12:
  if (self->_url)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_accountId)
  {
    [toCopy setAccountId:?];
    toCopy = v6;
  }

  if (self->_mailboxId)
  {
    [v6 setMailboxId:?];
    toCopy = v6;
  }

  if (self->_customName)
  {
    [v6 setCustomName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 6) = self->_filterType;
    *(toCopy + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 56) = self->_syncEnabled;
  *(toCopy + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  *(toCopy + 10) = self->_type;
  *(toCopy + 60) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_11:
    *(toCopy + 57) = self->_syncRequested;
    *(toCopy + 60) |= 8u;
  }

LABEL_12:
  if (self->_url)
  {
    [v6 setUrl:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_accountId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_customName copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  has = self->_has;
  if (has)
  {
    *(v5 + 24) = self->_filterType;
    *(v5 + 60) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 40) = self->_type;
      *(v5 + 60) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = self->_syncEnabled;
  *(v5 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 57) = self->_syncRequested;
    *(v5 + 60) |= 8u;
  }

LABEL_6:
  v13 = [(NSString *)self->_url copyWithZone:zone];
  v14 = *(v5 + 48);
  *(v5 + 48) = v13;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  accountId = self->_accountId;
  if (accountId | *(equalCopy + 1))
  {
    if (![(NSString *)accountId isEqual:?])
    {
      goto LABEL_31;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 4))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_31;
    }
  }

  customName = self->_customName;
  if (customName | *(equalCopy + 2))
  {
    if (![(NSString *)customName isEqual:?])
    {
      goto LABEL_31;
    }
  }

  v8 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_filterType != *(equalCopy + 6))
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0)
    {
      goto LABEL_31;
    }

    v9 = *(equalCopy + 56);
    if (self->_syncEnabled)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_31;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 60) & 8) == 0)
    {
      goto LABEL_26;
    }

LABEL_31:
    v11 = 0;
    goto LABEL_32;
  }

  if ((*(equalCopy + 60) & 8) == 0)
  {
    goto LABEL_31;
  }

  v13 = *(equalCopy + 57);
  if (self->_syncRequested)
  {
    if ((*(equalCopy + 57) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (*(equalCopy + 57))
  {
    goto LABEL_31;
  }

LABEL_26:
  url = self->_url;
  if (url | *(equalCopy + 6))
  {
    v11 = [(NSString *)url isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_32:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_accountId hash];
  v4 = [(NSString *)self->_mailboxId hash];
  v5 = [(NSString *)self->_customName hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_filterType;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_syncEnabled;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_url hash];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_type;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_syncRequested;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(NSString *)self->_url hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NNMKProtoMailbox *)self setAccountId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoMailbox *)self setMailboxId:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoMailbox *)self setCustomName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 60);
  if (v5)
  {
    self->_filterType = *(fromCopy + 6);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 60);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*(fromCopy + 60) & 4) == 0)
  {
    goto LABEL_9;
  }

  self->_syncEnabled = *(fromCopy + 56);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 60);
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_19:
  self->_type = *(fromCopy + 10);
  *&self->_has |= 2u;
  if ((*(fromCopy + 60) & 8) != 0)
  {
LABEL_11:
    self->_syncRequested = *(fromCopy + 57);
    *&self->_has |= 8u;
  }

LABEL_12:
  if (*(fromCopy + 6))
  {
    [(NNMKProtoMailbox *)self setUrl:?];
    fromCopy = v6;
  }
}

- (id)mailbox
{
  v3 = objc_alloc_init(NNMKMailbox);
  accountId = [(NNMKProtoMailbox *)self accountId];
  [(NNMKMailbox *)v3 setAccountId:accountId];

  mailboxId = [(NNMKProtoMailbox *)self mailboxId];
  [(NNMKMailbox *)v3 setMailboxId:mailboxId];

  [(NNMKMailbox *)v3 setType:[(NNMKProtoMailbox *)self type]];
  [(NNMKMailbox *)v3 setFilterType:[(NNMKProtoMailbox *)self filterType]];
  customName = [(NNMKProtoMailbox *)self customName];
  [(NNMKMailbox *)v3 setCustomName:customName];

  [(NNMKMailbox *)v3 setSyncEnabled:[(NNMKProtoMailbox *)self syncEnabled]];
  [(NNMKMailbox *)v3 setSyncRequested:[(NNMKProtoMailbox *)self syncRequested]];
  v7 = MEMORY[0x277CBEBC0];
  v8 = [(NNMKProtoMailbox *)self url];
  v9 = [v7 URLWithString:v8];
  [(NNMKMailbox *)v3 setUrl:v9];

  return v3;
}

+ (id)protoMailboxFromMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v4 = objc_alloc_init(NNMKProtoMailbox);
  accountId = [mailboxCopy accountId];
  [(NNMKProtoMailbox *)v4 setAccountId:accountId];

  mailboxId = [mailboxCopy mailboxId];
  [(NNMKProtoMailbox *)v4 setMailboxId:mailboxId];

  -[NNMKProtoMailbox setType:](v4, "setType:", [mailboxCopy type]);
  -[NNMKProtoMailbox setFilterType:](v4, "setFilterType:", [mailboxCopy filterType]);
  customName = [mailboxCopy customName];
  [(NNMKProtoMailbox *)v4 setCustomName:customName];

  -[NNMKProtoMailbox setSyncEnabled:](v4, "setSyncEnabled:", [mailboxCopy syncEnabled]);
  -[NNMKProtoMailbox setSyncRequested:](v4, "setSyncRequested:", [mailboxCopy syncRequested]);
  v8 = [mailboxCopy url];

  absoluteString = [v8 absoluteString];
  [(NNMKProtoMailbox *)v4 setUrl:absoluteString];

  return v4;
}

@end