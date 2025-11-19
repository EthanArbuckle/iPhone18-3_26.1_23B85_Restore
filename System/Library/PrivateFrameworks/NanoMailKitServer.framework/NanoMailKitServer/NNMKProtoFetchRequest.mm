@interface NNMKProtoFetchRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWantsBatchedResponse:(BOOL)a3;
- (void)setHasWillTrimDatabaseAfterResults:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoFetchRequest

- (void)setHasWantsBatchedResponse:(BOOL)a3
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

- (void)setHasWillTrimDatabaseAfterResults:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoFetchRequest;
  v4 = [(NNMKProtoFetchRequest *)&v8 description];
  v5 = [(NNMKProtoFetchRequest *)self dictionaryRepresentation];
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

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_wantsBatchedResponse];
    [v3 setObject:v6 forKey:@"wantsBatchedResponse"];
  }

  currentMessageIdsAndStatus = self->_currentMessageIdsAndStatus;
  if (currentMessageIdsAndStatus)
  {
    [v3 setObject:currentMessageIdsAndStatus forKey:@"currentMessageIdsAndStatus"];
  }

  currentDateForRequestingMoreMessages = self->_currentDateForRequestingMoreMessages;
  if (currentDateForRequestingMoreMessages)
  {
    [v3 setObject:currentDateForRequestingMoreMessages forKey:@"currentDateForRequestingMoreMessages"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_willTrimDatabaseAfterResults];
    [v3 setObject:v9 forKey:@"willTrimDatabaseAfterResults"];
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
  v8 = v4;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if ((*&self->_has & 2) != 0)
  {
    wantsBatchedResponse = self->_wantsBatchedResponse;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_currentMessageIdsAndStatus)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_currentDateForRequestingMoreMessages)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    willTrimDatabaseAfterResults = self->_willTrimDatabaseAfterResults;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_mailboxId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_fullSyncVersion;
    *(v4 + 52) |= 1u;
  }

  v5 = v4;
  if (self->_conversationId)
  {
    [v4 setConversationId:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 48) = self->_wantsBatchedResponse;
    *(v4 + 52) |= 2u;
  }

  if (self->_currentMessageIdsAndStatus)
  {
    [v5 setCurrentMessageIdsAndStatus:?];
    v4 = v5;
  }

  if (self->_currentDateForRequestingMoreMessages)
  {
    [v5 setCurrentDateForRequestingMoreMessages:?];
    v4 = v5;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 49) = self->_willTrimDatabaseAfterResults;
    *(v4 + 52) |= 4u;
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
    *(v5 + 32) = self->_fullSyncVersion;
    *(v5 + 52) |= 1u;
  }

  v7 = [(NSString *)self->_conversationId copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 48) = self->_wantsBatchedResponse;
    *(v6 + 52) |= 2u;
  }

  v9 = [(NSData *)self->_currentMessageIdsAndStatus copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(NSData *)self->_currentDateForRequestingMoreMessages copyWithZone:a3];
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 49) = self->_willTrimDatabaseAfterResults;
    *(v6 + 52) |= 4u;
  }

  v13 = [(NSString *)self->_mailboxId copyWithZone:a3];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  has = self->_has;
  v6 = *(v4 + 52);
  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_fullSyncVersion != *(v4 + 8))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_21;
  }

  conversationId = self->_conversationId;
  if (conversationId | *(v4 + 1))
  {
    if (![(NSString *)conversationId isEqual:?])
    {
      goto LABEL_21;
    }

    has = self->_has;
  }

  v8 = *(v4 + 52);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(v4 + 48);
    if (self->_wantsBatchedResponse)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_21;
  }

  currentMessageIdsAndStatus = self->_currentMessageIdsAndStatus;
  if (currentMessageIdsAndStatus | *(v4 + 3) && ![(NSData *)currentMessageIdsAndStatus isEqual:?])
  {
    goto LABEL_21;
  }

  currentDateForRequestingMoreMessages = self->_currentDateForRequestingMoreMessages;
  if (currentDateForRequestingMoreMessages | *(v4 + 2))
  {
    if (![(NSData *)currentDateForRequestingMoreMessages isEqual:?])
    {
      goto LABEL_21;
    }
  }

  v11 = *(v4 + 52);
  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 52) & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_21;
  }

  v16 = *(v4 + 49);
  if (self->_willTrimDatabaseAfterResults)
  {
    if ((*(v4 + 49) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 49))
  {
    goto LABEL_21;
  }

LABEL_18:
  mailboxId = self->_mailboxId;
  if (mailboxId | *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 52))
  {
    self->_fullSyncVersion = *(v4 + 8);
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(NNMKProtoFetchRequest *)self setConversationId:?];
    v4 = v5;
  }

  if ((*(v4 + 52) & 2) != 0)
  {
    self->_wantsBatchedResponse = *(v4 + 48);
    *&self->_has |= 2u;
  }

  if (*(v4 + 3))
  {
    [(NNMKProtoFetchRequest *)self setCurrentMessageIdsAndStatus:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NNMKProtoFetchRequest *)self setCurrentDateForRequestingMoreMessages:?];
    v4 = v5;
  }

  if ((*(v4 + 52) & 4) != 0)
  {
    self->_willTrimDatabaseAfterResults = *(v4 + 49);
    *&self->_has |= 4u;
  }

  if (*(v4 + 5))
  {
    [(NNMKProtoFetchRequest *)self setMailboxId:?];
    v4 = v5;
  }
}

@end