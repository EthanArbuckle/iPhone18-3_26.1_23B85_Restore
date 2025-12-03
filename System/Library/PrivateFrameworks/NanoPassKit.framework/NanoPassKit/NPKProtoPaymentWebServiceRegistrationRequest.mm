@interface NPKProtoPaymentWebServiceRegistrationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPaymentWebServiceRegistrationRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPaymentWebServiceRegistrationRequest;
  v4 = [(NPKProtoPaymentWebServiceRegistrationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPaymentWebServiceRegistrationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  brokerURLString = self->_brokerURLString;
  if (brokerURLString)
  {
    [dictionary setObject:brokerURLString forKey:@"brokerURLString"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v4 setObject:reason forKey:@"reason"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_brokerURLString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_brokerURLString)
  {
    [toCopy setBrokerURLString:?];
    toCopy = v5;
  }

  if (self->_reason)
  {
    [v5 setReason:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_brokerURLString copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_reason copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((brokerURLString = self->_brokerURLString, !(brokerURLString | equalCopy[1])) || -[NSString isEqual:](brokerURLString, "isEqual:")))
  {
    reason = self->_reason;
    if (reason | equalCopy[2])
    {
      v7 = [(NSString *)reason isEqual:?];
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
  if (fromCopy[1])
  {
    [(NPKProtoPaymentWebServiceRegistrationRequest *)self setBrokerURLString:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKProtoPaymentWebServiceRegistrationRequest *)self setReason:?];
    fromCopy = v5;
  }
}

@end