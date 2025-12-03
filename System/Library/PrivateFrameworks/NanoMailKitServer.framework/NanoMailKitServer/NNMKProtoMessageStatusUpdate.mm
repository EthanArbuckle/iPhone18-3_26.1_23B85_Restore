@interface NNMKProtoMessageStatusUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasUpdatedStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoMessageStatusUpdate

- (void)setHasUpdatedStatus:(BOOL)status
{
  if (status)
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
  v8.super_class = NNMKProtoMessageStatusUpdate;
  v4 = [(NNMKProtoMessageStatusUpdate *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoMessageStatusUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  messageId = self->_messageId;
  if (messageId)
  {
    [dictionary setObject:messageId forKey:@"messageId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_updatedStatus];
    [v4 setObject:v7 forKey:@"updatedStatus"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_statusVersion];
    [v4 setObject:v8 forKey:@"statusVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    updatedStatus = self->_updatedStatus;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if (has)
  {
    statusVersion = self->_statusVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_messageId)
  {
    v6 = toCopy;
    [toCopy setMessageId:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_updatedStatus;
    *(toCopy + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_statusVersion;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_messageId copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 20) = self->_updatedStatus;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_statusVersion;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  messageId = self->_messageId;
  if (messageId | *(equalCopy + 1))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_updatedStatus != *(equalCopy + 5))
    {
      goto LABEL_13;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_statusVersion != *(equalCopy + 4))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_messageId hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_updatedStatus;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_statusVersion;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(NNMKProtoMessageStatusUpdate *)self setMessageId:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 24);
  if ((v5 & 2) != 0)
  {
    self->_updatedStatus = fromCopy[5];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 24);
  }

  if (v5)
  {
    self->_statusVersion = fromCopy[4];
    *&self->_has |= 1u;
  }
}

@end