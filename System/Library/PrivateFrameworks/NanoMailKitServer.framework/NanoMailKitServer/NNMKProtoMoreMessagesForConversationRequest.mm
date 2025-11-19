@interface NNMKProtoMoreMessagesForConversationRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMoreMessagesForConversationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoMoreMessagesForConversationRequest;
  v4 = [(NNMKProtoMoreMessagesForConversationRequest *)&v8 description];
  v5 = [(NNMKProtoMoreMessagesForConversationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [v3 setObject:v4 forKey:@"fullSyncVersion"];
  }

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [v3 setObject:conversationId forKey:@"conversationId"];
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

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_beforeDateReceived)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_fullSyncVersion;
    *(v4 + 40) |= 1u;
  }

  v5 = v4;
  if (self->_conversationId)
  {
    [v4 setConversationId:?];
    v4 = v5;
  }

  if (self->_beforeDateReceived)
  {
    [v5 setBeforeDateReceived:?];
    v4 = v5;
  }

  if (self->_mailboxId)
  {
    [v5 setMailboxId:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_fullSyncVersion;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_conversationId copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_beforeDateReceived copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_fullSyncVersion != *(v4 + 6))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  conversationId = self->_conversationId;
  if (conversationId | *(v4 + 2) && ![(NSString *)conversationId isEqual:?])
  {
    goto LABEL_13;
  }

  beforeDateReceived = self->_beforeDateReceived;
  if (beforeDateReceived | *(v4 + 1))
  {
    if (![(NSData *)beforeDateReceived isEqual:?])
    {
      goto LABEL_13;
    }
  }

  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[10])
  {
    self->_fullSyncVersion = v4[6];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(NNMKProtoMoreMessagesForConversationRequest *)self setConversationId:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoMoreMessagesForConversationRequest *)self setBeforeDateReceived:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(NNMKProtoMoreMessagesForConversationRequest *)self setMailboxId:?];
    v4 = v5;
  }
}

@end