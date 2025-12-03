@interface NNMKProtoFetchRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWantsBatchedResponse:(BOOL)response;
- (void)setHasWillTrimDatabaseAfterResults:(BOOL)results;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoFetchRequest

- (void)setHasWantsBatchedResponse:(BOOL)response
{
  if (response)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasWillTrimDatabaseAfterResults:(BOOL)results
{
  if (results)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoFetchRequest;
  v4 = [(NNMKProtoFetchRequest *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoFetchRequest *)self dictionaryRepresentation];
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

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_wantsBatchedResponse];
    [dictionary setObject:v6 forKey:@"wantsBatchedResponse"];
  }

  currentMessageIdsAndStatus = self->_currentMessageIdsAndStatus;
  if (currentMessageIdsAndStatus)
  {
    [dictionary setObject:currentMessageIdsAndStatus forKey:@"currentMessageIdsAndStatus"];
  }

  currentDateForRequestingMoreMessages = self->_currentDateForRequestingMoreMessages;
  if (currentDateForRequestingMoreMessages)
  {
    [dictionary setObject:currentDateForRequestingMoreMessages forKey:@"currentDateForRequestingMoreMessages"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_willTrimDatabaseAfterResults];
    [dictionary setObject:v9 forKey:@"willTrimDatabaseAfterResults"];
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
  v8 = toCopy;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    wantsBatchedResponse = self->_wantsBatchedResponse;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_currentMessageIdsAndStatus)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_currentDateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    willTrimDatabaseAfterResults = self->_willTrimDatabaseAfterResults;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_fullSyncVersion;
    *(toCopy + 52) |= 1u;
  }

  v5 = toCopy;
  if (self->_conversationId)
  {
    [toCopy setConversationId:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 48) = self->_wantsBatchedResponse;
    *(toCopy + 52) |= 2u;
  }

  if (self->_currentMessageIdsAndStatus)
  {
    [v5 setCurrentMessageIdsAndStatus:?];
    toCopy = v5;
  }

  if (self->_currentDateForRequestingMoreMessages)
  {
    [v5 setCurrentDateForRequestingMoreMessages:?];
    toCopy = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 49) = self->_willTrimDatabaseAfterResults;
    *(toCopy + 52) |= 4u;
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
    *(v5 + 32) = self->_fullSyncVersion;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSString *)self->_conversationId copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 48) = self->_wantsBatchedResponse;
    *(v6 + 52) |= 2u;
  }

  v9 = [(NSData *)self->_currentMessageIdsAndStatus copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(NSData *)self->_currentDateForRequestingMoreMessages copyWithZone:zone];
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 49) = self->_willTrimDatabaseAfterResults;
    *(v6 + 52) |= 4u;
  }

  v13 = [(NSString *)self->_mailboxId copyWithZone:zone];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(equalCopy + 52);
  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 8))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_21;
  }

  conversationId = self->_conversationId;
  if (conversationId | *(equalCopy + 1))
  {
    if (![(NSString *)conversationId isEqual:?])
    {
      goto LABEL_21;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 52);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(equalCopy + 48);
    if (self->_wantsBatchedResponse)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_21;
  }

  currentMessageIdsAndStatus = self->_currentMessageIdsAndStatus;
  if (currentMessageIdsAndStatus | *(equalCopy + 3) && ![(NSData *)currentMessageIdsAndStatus isEqual:?])
  {
    goto LABEL_21;
  }

  currentDateForRequestingMoreMessages = self->_currentDateForRequestingMoreMessages;
  if (currentDateForRequestingMoreMessages | *(equalCopy + 2))
  {
    if (![(NSData *)currentDateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(equalCopy + 52);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if ((*(equalCopy + 52) & 4) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(equalCopy + 49);
  if (self->_willTrimDatabaseAfterResults)
  {
    if ((*(equalCopy + 49) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 49))
  {
    goto LABEL_21;
  }

LABEL_18:
  mailboxId = self->_mailboxId;
  if (mailboxId | *(equalCopy + 5))
  {
    v13 = [(NSString *)mailboxId isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_22:

  return v13;
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

  v4 = [(NSString *)self->_conversationId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_wantsBatchedResponse;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSData *)self->_currentMessageIdsAndStatus hash];
  v7 = [(NSData *)self->_currentDateForRequestingMoreMessages hash];
  if ((*&self->_has & 4) != 0)
  {
    v8 = 2654435761 * self->_willTrimDatabaseAfterResults;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_mailboxId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 52))
  {
    self->_fullSyncVersion = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NNMKProtoFetchRequest *)self setConversationId:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 52) & 2) != 0)
  {
    self->_wantsBatchedResponse = *(fromCopy + 48);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 3))
  {
    [(NNMKProtoFetchRequest *)self setCurrentMessageIdsAndStatus:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoFetchRequest *)self setCurrentDateForRequestingMoreMessages:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 52) & 4) != 0)
  {
    self->_willTrimDatabaseAfterResults = *(fromCopy + 49);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 5))
  {
    [(NNMKProtoFetchRequest *)self setMailboxId:?];
    fromCopy = v5;
  }
}

@end