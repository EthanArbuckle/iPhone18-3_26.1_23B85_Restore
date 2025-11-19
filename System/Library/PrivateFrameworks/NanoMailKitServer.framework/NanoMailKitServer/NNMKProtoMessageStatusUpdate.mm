@interface NNMKProtoMessageStatusUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasUpdatedStatus:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoMessageStatusUpdate

- (void)setHasUpdatedStatus:(BOOL)a3
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
  v8.super_class = NNMKProtoMessageStatusUpdate;
  v4 = [(NNMKProtoMessageStatusUpdate *)&v8 description];
  v5 = [(NNMKProtoMessageStatusUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  messageId = self->_messageId;
  if (messageId)
  {
    [v3 setObject:messageId forKey:@"messageId"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_messageId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    updatedStatus = self->_updatedStatus;
    PBDataWriterWriteUint32Field();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    statusVersion = self->_statusVersion;
    PBDataWriterWriteUint32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_messageId)
  {
    v6 = v4;
    [v4 setMessageId:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_updatedStatus;
    *(v4 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 4) = self->_statusVersion;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_messageId copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  messageId = self->_messageId;
  if (messageId | *(v4 + 1))
  {
    if (![(NSString *)messageId isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_updatedStatus != *(v4 + 5))
    {
      goto LABEL_13;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_statusVersion != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(NNMKProtoMessageStatusUpdate *)self setMessageId:?];
    v4 = v6;
  }

  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    self->_updatedStatus = v4[5];
    *&self->_has |= 2u;
    v5 = *(v4 + 24);
  }

  if (v5)
  {
    self->_statusVersion = v4[4];
    *&self->_has |= 1u;
  }
}

@end