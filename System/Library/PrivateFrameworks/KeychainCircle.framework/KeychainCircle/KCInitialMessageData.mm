@interface KCInitialMessageData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation KCInitialMessageData

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(KCInitialMessageData *)self setPrepareMessage:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    prepareMessage = self->_prepareMessage;
    if (prepareMessage | equalCopy[1])
    {
      v6 = [(NSData *)prepareMessage isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_prepareMessage copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  prepareMessage = self->_prepareMessage;
  if (prepareMessage)
  {
    [to setPrepareMessage:prepareMessage];
  }
}

- (void)writeTo:(id)to
{
  if (self->_prepareMessage)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  prepareMessage = self->_prepareMessage;
  if (prepareMessage)
  {
    [dictionary setObject:prepareMessage forKey:@"prepareMessage"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCInitialMessageData;
  v4 = [(KCInitialMessageData *)&v8 description];
  dictionaryRepresentation = [(KCInitialMessageData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end