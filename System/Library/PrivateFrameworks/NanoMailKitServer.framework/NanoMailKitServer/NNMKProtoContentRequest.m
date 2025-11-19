@interface NNMKProtoContentRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHighPriority:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoContentRequest

- (void)setHasHighPriority:(BOOL)a3
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
  v8.super_class = NNMKProtoContentRequest;
  v4 = [(NNMKProtoContentRequest *)&v8 description];
  v5 = [(NNMKProtoContentRequest *)self dictionaryRepresentation];
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

  messageId = self->_messageId;
  if (messageId)
  {
    [v3 setObject:messageId forKey:@"messageId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_highPriority];
    [v3 setObject:v6 forKey:@"highPriority"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    highPriority = self->_highPriority;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_fullSyncVersion;
    *(v4 + 28) |= 1u;
  }

  if (self->_messageId)
  {
    v5 = v4;
    [v4 setMessageId:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 24) = self->_highPriority;
    *(v4 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_fullSyncVersion;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_messageId copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_highPriority;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 28);
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_fullSyncVersion != *(v4 + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_12;
  }

  messageId = self->_messageId;
  if (messageId | *(v4 + 2))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) != 0)
    {
      if (self->_highPriority)
      {
        if ((*(v4 + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 24))
      {
        goto LABEL_12;
      }

      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

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

  v4 = [(NSString *)self->_messageId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_highPriority;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 28))
  {
    self->_fullSyncVersion = *(v4 + 2);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(NNMKProtoContentRequest *)self setMessageId:?];
    v4 = v5;
  }

  if ((*(v4 + 28) & 2) != 0)
  {
    self->_highPriority = *(v4 + 24);
    *&self->_has |= 2u;
  }
}

@end