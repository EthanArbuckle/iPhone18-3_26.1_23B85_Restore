@interface NPKProtoHandleAppletStateChangeRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoHandleAppletStateChangeRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoHandleAppletStateChangeRequest;
  v4 = [(NPKProtoHandleAppletStateChangeRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoHandleAppletStateChangeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passID = self->_passID;
  if (passID)
  {
    [dictionary setObject:passID forKey:@"passID"];
  }

  passAppletState = self->_passAppletState;
  if (passAppletState)
  {
    [v4 setObject:passAppletState forKey:@"passAppletState"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_passAppletState)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passID)
  {
    [toCopy setPassID:?];
    toCopy = v5;
  }

  if (self->_passAppletState)
  {
    [v5 setPassAppletState:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_passAppletState copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passID = self->_passID, !(passID | equalCopy[2])) || -[NSString isEqual:](passID, "isEqual:")))
  {
    passAppletState = self->_passAppletState;
    if (passAppletState | equalCopy[1])
    {
      v7 = [(NSData *)passAppletState isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoHandleAppletStateChangeRequest *)self setPassID:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoHandleAppletStateChangeRequest *)self setPassAppletState:?];
    fromCopy = v5;
  }
}

@end