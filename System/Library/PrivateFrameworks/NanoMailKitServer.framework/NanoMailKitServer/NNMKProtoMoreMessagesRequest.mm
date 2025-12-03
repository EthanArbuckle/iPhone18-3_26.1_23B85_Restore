@interface NNMKProtoMoreMessagesRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFullSyncVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMoreMessagesRequest

- (void)setHasFullSyncVersion:(BOOL)version
{
  if (version)
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
  dictionaryRepresentation = [(NNMKProtoMoreMessagesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [dictionary setObject:v4 forKey:@"fullSyncVersion"];
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived)
  {
    [dictionary setObject:beforeDateReceived forKey:@"beforeDateReceived"];
  }

  mailboxId = self->_mailboxId;
  if (mailboxId)
  {
    [dictionary setObject:mailboxId forKey:@"mailboxId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_filterType];
    [dictionary setObject:v7 forKey:@"filterType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[5] = self->_fullSyncVersion;
    *(toCopy + 32) |= 2u;
  }

  v5 = toCopy;
  if (self->_beforeDateReceived)
  {
    [toCopy setBeforeDateReceived:?];
    toCopy = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[4] = self->_filterType;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 20) = self->_fullSyncVersion;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSData *)self->_beforeDateReceived copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v9 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_filterType;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_fullSyncVersion != *(equalCopy + 5))
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived | *(equalCopy + 1) && ![(NSData *)beforeDateReceived isEqual:?])
  {
    goto LABEL_15;
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 3))
  {
    if (![(NSString *)mailboxId isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_filterType != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((fromCopy[8] & 2) != 0)
  {
    self->_fullSyncVersion = fromCopy[5];
    *&self->_has |= 2u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NNMKProtoMoreMessagesRequest *)self setBeforeDateReceived:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NNMKProtoMoreMessagesRequest *)self setMailboxId:?];
    fromCopy = v5;
  }

  if (fromCopy[8])
  {
    self->_filterType = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end