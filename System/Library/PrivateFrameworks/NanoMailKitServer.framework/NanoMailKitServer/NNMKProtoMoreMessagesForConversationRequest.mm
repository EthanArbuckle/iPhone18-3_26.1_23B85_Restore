@interface NNMKProtoMoreMessagesForConversationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMoreMessagesForConversationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMoreMessagesForConversationRequest;
  v4 = [(NNMKProtoMoreMessagesForConversationRequest *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMoreMessagesForConversationRequest *)self dictionaryRepresentation];
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

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [dictionary setObject:conversationId forKey:@"conversationId"];
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

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
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
    toCopy[6] = self->_fullSyncVersion;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_conversationId)
  {
    [toCopy setConversationId:?];
    toCopy = v5;
  }

  if (self->_beforeDateReceived)
  {
    [v5 setBeforeDateReceived:?];
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
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_conversationId copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_beforeDateReceived copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  conversationId = self->_conversationId;
  if (conversationId | *(equalCopy + 2) && ![(NSString *)conversationId isEqual:?])
  {
    goto LABEL_13;
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived | *(equalCopy + 1))
  {
    if (![(NSData *)beforeDateReceived isEqual:?])
    {
      goto LABEL_13;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 4))
  {
    v9 = [(NSString *)mailboxId isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
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

  v4 = [(NSString *)self->_conversationId hash]^ v3;
  v5 = [(NSData *)self->_beforeDateReceived hash];
  return v4 ^ v5 ^ [(NSString *)self->_mailboxId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[10])
  {
    self->_fullSyncVersion = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NNMKProtoMoreMessagesForConversationRequest *)self setConversationId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoMoreMessagesForConversationRequest *)self setBeforeDateReceived:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoMoreMessagesForConversationRequest *)self setMailboxId:?];
    fromCopy = v5;
  }
}

@end