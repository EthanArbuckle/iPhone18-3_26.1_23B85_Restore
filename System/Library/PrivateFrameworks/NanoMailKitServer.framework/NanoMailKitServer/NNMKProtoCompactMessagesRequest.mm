@interface NNMKProtoCompactMessagesRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoCompactMessagesRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoCompactMessagesRequest;
  v4 = [(NNMKProtoCompactMessagesRequest *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoCompactMessagesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_beforeDateReceived)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_fullSyncVersion;
    *(toCopy + 32) |= 1u;
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_fullSyncVersion;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSData *)self->_beforeDateReceived copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived | *(equalCopy + 1) && ![(NSData *)beforeDateReceived isEqual:?])
  {
    goto LABEL_11;
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 3))
  {
    v8 = [(NSString *)mailboxId isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_beforeDateReceived hash]^ v3;
  return v4 ^ [(NSString *)self->_mailboxId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_fullSyncVersion = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NNMKProtoCompactMessagesRequest *)self setBeforeDateReceived:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NNMKProtoCompactMessagesRequest *)self setMailboxId:?];
    fromCopy = v5;
  }
}

@end