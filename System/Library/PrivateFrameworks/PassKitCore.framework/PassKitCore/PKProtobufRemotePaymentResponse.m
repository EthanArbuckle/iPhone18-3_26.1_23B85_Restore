@interface PKProtobufRemotePaymentResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufRemotePaymentResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRemotePaymentResponse;
  v4 = [(PKProtobufRemotePaymentResponse *)&v8 description];
  v5 = [(PKProtobufRemotePaymentResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  payment = self->_payment;
  if (payment)
  {
    v5 = [(PKProtobufPayment *)payment dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"payment"];
  }

  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier)
  {
    [v3 setObject:remotePaymentRequestIdentifier forKey:@"remotePaymentRequestIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_payment)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_remotePaymentRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_payment)
  {
    [v4 setPayment:?];
    v4 = v5;
  }

  if (self->_remotePaymentRequestIdentifier)
  {
    [v5 setRemotePaymentRequestIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKProtobufPayment *)self->_payment copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_remotePaymentRequestIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((payment = self->_payment, !(payment | v4[1])) || -[PKProtobufPayment isEqual:](payment, "isEqual:")))
  {
    remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
    if (remotePaymentRequestIdentifier | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  payment = self->_payment;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(PKProtobufRemotePaymentResponse *)self setRemotePaymentRequestIdentifier:?];
    v4 = v7;
  }
}

@end