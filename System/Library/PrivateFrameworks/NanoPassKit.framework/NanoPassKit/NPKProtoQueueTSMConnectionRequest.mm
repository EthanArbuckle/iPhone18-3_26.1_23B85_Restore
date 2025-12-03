@interface NPKProtoQueueTSMConnectionRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoQueueTSMConnectionRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoQueueTSMConnectionRequest;
  v4 = [(NPKProtoQueueTSMConnectionRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoQueueTSMConnectionRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  pushTopic = self->_pushTopic;
  if (pushTopic)
  {
    [dictionary setObject:pushTopic forKey:@"pushTopic"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_pushTopic)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  pushTopic = self->_pushTopic;
  if (pushTopic)
  {
    [to setPushTopic:pushTopic];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_pushTopic copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    pushTopic = self->_pushTopic;
    if (pushTopic | equalCopy[1])
    {
      v6 = [(NSString *)pushTopic isEqual:?];
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoQueueTSMConnectionRequest *)self setPushTopic:?];
  }
}

@end