@interface NNMKProtoMoreMessagesRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFullSyncVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMoreMessagesRequest

- (void)setHasFullSyncVersion:(BOOL)a3
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
  v8.super_class = NNMKProtoMoreMessagesRequest;
  v4 = [(NNMKProtoMoreMessagesRequest *)&v8 description];
  v5 = [(NNMKProtoMoreMessagesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [v3 setObject:v4 forKey:@"fullSyncVersion"];
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived)
  {
    [v3 setObject:beforeDateReceived forKey:@"beforeDateReceived"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [v3 setObject:mailboxId forKey:@"mailboxId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_filterType];
    [v3 setObject:v7 forKey:@"filterType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ((*&self->_has & 2) != 0)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_beforeDateReceived)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    filterType = self->_filterType;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[5] = self->_fullSyncVersion;
    *(v4 + 32) |= 2u;
  }

  v5 = v4;
  if (self->_beforeDateReceived)
  {
    [v4 setBeforeDateReceived:?];
    v4 = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[4] = self->_filterType;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_fullSyncVersion;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSData *)self->_beforeDateReceived copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v9 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_filterType;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_fullSyncVersion != *(v4 + 5))
    {
      goto LABEL_15;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived | *(v4 + 1) && ![(NSData *)beforeDateReceived isEqual:?])
  {
    goto LABEL_15;
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 3))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_filterType != *(v4 + 4))
    {
      goto LABEL_15;
    }

    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_beforeDateReceived hash];
  v5 = [(NSString *)self->_mailboxId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_filterType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[8] & 2) != 0)
  {
    self->_fullSyncVersion = v4[5];
    *&self->_has |= 2u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(NNMKProtoMoreMessagesRequest *)self setBeforeDateReceived:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NNMKProtoMoreMessagesRequest *)self setMailboxId:?];
    v4 = v5;
  }

  if (v4[8])
  {
    self->_filterType = v4[4];
    *&self->_has |= 1u;
  }
}

@end