@interface PKProtobufRemotePaymentResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufRemotePaymentResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRemotePaymentResponse;
  v4 = [(PKProtobufRemotePaymentResponse *)&v8 description];
  dictionaryRepresentation = [(PKProtobufRemotePaymentResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  payment = self->_payment;
  if (payment)
  {
    dictionaryRepresentation = [(PKProtobufPayment *)payment dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"payment"];
  }

  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier)
  {
    [dictionary setObject:remotePaymentRequestIdentifier forKey:@"remotePaymentRequestIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_payment)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_remotePaymentRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_payment)
  {
    [toCopy setPayment:?];
    toCopy = v5;
  }

  if (self->_remotePaymentRequestIdentifier)
  {
    [v5 setRemotePaymentRequestIdentifier:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKProtobufPayment *)self->_payment copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_remotePaymentRequestIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((payment = self->_payment, !(payment | equalCopy[1])) || -[PKProtobufPayment isEqual:](payment, "isEqual:")))
  {
    remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
    if (remotePaymentRequestIdentifier | equalCopy[2])
    {
      v7 = [(NSString *)remotePaymentRequestIdentifier isEqual:?];
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
  payment = self->_payment;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (payment)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufPayment *)payment mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufRemotePaymentResponse *)self setPayment:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(PKProtobufRemotePaymentResponse *)self setRemotePaymentRequestIdentifier:?];
    fromCopy = v7;
  }
}

@end