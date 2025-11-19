@interface NPKProtoCommutePlanReminderForCommutePlanAndPassRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCommutePlanReminderForCommutePlanAndPassRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCommutePlanReminderForCommutePlanAndPassRequest;
  v4 = [(NPKProtoCommutePlanReminderForCommutePlanAndPassRequest *)&v8 description];
  v5 = [(NPKProtoCommutePlanReminderForCommutePlanAndPassRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v3 setObject:uniqueID forKey:@"uniqueID"];
  }

  commutePlanBytes = self->_commutePlanBytes;
  if (commutePlanBytes)
  {
    [v4 setObject:commutePlanBytes forKey:@"commutePlanBytes"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_commutePlanBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uniqueID)
  {
    [v4 setUniqueID:?];
    v4 = v5;
  }

  if (self->_commutePlanBytes)
  {
    [v5 setCommutePlanBytes:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_commutePlanBytes copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uniqueID = self->_uniqueID, !(uniqueID | v4[2])) || -[NSString isEqual:](uniqueID, "isEqual:")))
  {
    commutePlanBytes = self->_commutePlanBytes;
    if (commutePlanBytes | v4[1])
    {
      v7 = [(NSData *)commutePlanBytes isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoCommutePlanReminderForCommutePlanAndPassRequest *)self setUniqueID:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoCommutePlanReminderForCommutePlanAndPassRequest *)self setCommutePlanBytes:?];
    v4 = v5;
  }
}

@end