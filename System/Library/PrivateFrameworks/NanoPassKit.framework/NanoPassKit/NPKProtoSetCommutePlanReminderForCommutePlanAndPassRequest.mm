@interface NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest;
  v4 = [(NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [dictionary setObject:uniqueID forKey:@"uniqueID"];
  }

  commutePlanBytes = self->_commutePlanBytes;
  if (commutePlanBytes)
  {
    [v4 setObject:commutePlanBytes forKey:@"commutePlanBytes"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_reminderInterval];
    [v4 setObject:v7 forKey:@"reminderInterval"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_commutePlanBytes)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    reminderInterval = self->_reminderInterval;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_uniqueID)
  {
    [toCopy setUniqueID:?];
    toCopy = v5;
  }

  if (self->_commutePlanBytes)
  {
    [v5 setCommutePlanBytes:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_reminderInterval;
    *(toCopy + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_commutePlanBytes copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_reminderInterval;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  uniqueID = self->_uniqueID;
  if (uniqueID | *(equalCopy + 3))
  {
    if (![(NSString *)uniqueID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  commutePlanBytes = self->_commutePlanBytes;
  if (commutePlanBytes | *(equalCopy + 2))
  {
    if (![(NSData *)commutePlanBytes isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_reminderInterval == *(equalCopy + 1))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_uniqueID hash];
  v4 = [(NSData *)self->_commutePlanBytes hash];
  if (*&self->_has)
  {
    reminderInterval = self->_reminderInterval;
    if (reminderInterval < 0.0)
    {
      reminderInterval = -reminderInterval;
    }

    *v5.i64 = floor(reminderInterval + 0.5);
    v9 = (reminderInterval - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest *)self setUniqueID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequest *)self setCommutePlanBytes:?];
    fromCopy = v5;
  }

  if (fromCopy[4])
  {
    self->_reminderInterval = fromCopy[1];
    *&self->_has |= 1u;
  }
}

@end