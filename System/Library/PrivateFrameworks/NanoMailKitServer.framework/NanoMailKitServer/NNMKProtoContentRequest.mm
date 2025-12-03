@interface NNMKProtoContentRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHighPriority:(BOOL)priority;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoContentRequest

- (void)setHasHighPriority:(BOOL)priority
{
  if (priority)
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
  dictionaryRepresentation = [(NNMKProtoContentRequest *)self dictionaryRepresentation];
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

  messageId = self->_messageId;
  if (messageId)
  {
    [dictionary setObject:messageId forKey:@"messageId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_highPriority];
    [dictionary setObject:v6 forKey:@"highPriority"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v7;
  }

  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    highPriority = self->_highPriority;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_fullSyncVersion;
    *(toCopy + 28) |= 1u;
  }

  if (self->_messageId)
  {
    v5 = toCopy;
    [toCopy setMessageId:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 24) = self->_highPriority;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_fullSyncVersion;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_messageId copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_highPriority;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 28);
  if (has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 2))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_12;
  }

  messageId = self->_messageId;
  if (messageId | *(equalCopy + 2))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 28) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) != 0)
    {
      if (self->_highPriority)
      {
        if ((*(equalCopy + 24) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 24))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 28))
  {
    self->_fullSyncVersion = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(NNMKProtoContentRequest *)self setMessageId:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_highPriority = *(fromCopy + 24);
    *&self->_has |= 2u;
  }
}

@end