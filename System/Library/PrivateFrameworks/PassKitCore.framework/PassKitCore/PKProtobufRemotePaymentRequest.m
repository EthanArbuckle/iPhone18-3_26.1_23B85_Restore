@interface PKProtobufRemotePaymentRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufRemotePaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRemotePaymentRequest;
  v4 = [(PKProtobufRemotePaymentRequest *)&v8 description];
  v5 = [(PKProtobufRemotePaymentRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  paymentRequest = self->_paymentRequest;
  if (paymentRequest)
  {
    v5 = [(PKProtobufPaymentRequest *)paymentRequest dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"paymentRequest"];
  }

  paymentApplicationIdentifier = self->_paymentApplicationIdentifier;
  if (paymentApplicationIdentifier)
  {
    [v3 setObject:paymentApplicationIdentifier forKey:@"paymentApplicationIdentifier"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_paymentType];
    [v3 setObject:v8 forKey:@"paymentType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_paymentRequest)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_paymentApplicationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_paymentRequest)
  {
    [v4 setPaymentRequest:?];
    v4 = v5;
  }

  if (self->_paymentApplicationIdentifier)
  {
    [v5 setPaymentApplicationIdentifier:?];
    v4 = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_paymentType;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKProtobufPaymentRequest *)self->_paymentRequest copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_paymentApplicationIdentifier copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_paymentType;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  paymentRequest = self->_paymentRequest;
  if (paymentRequest | *(v4 + 3))
  {
    if (![(PKProtobufPaymentRequest *)paymentRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  paymentApplicationIdentifier = self->_paymentApplicationIdentifier;
  if (paymentApplicationIdentifier | *(v4 + 2))
  {
    if (![(NSString *)paymentApplicationIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_paymentType == *(v4 + 8))
    {
      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PKProtobufPaymentRequest *)self->_paymentRequest hash];
  v4 = [(NSString *)self->_paymentApplicationIdentifier hash];
  v5 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_paymentType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  paymentRequest = self->_paymentRequest;
  v6 = *(v4 + 3);
  v7 = v4;
  if (paymentRequest)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufPaymentRequest *)paymentRequest mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PKProtobufRemotePaymentRequest *)self setPaymentRequest:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 2))
  {
    [(PKProtobufRemotePaymentRequest *)self setPaymentApplicationIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufRemotePaymentRequest *)self setIdentifier:?];
    v4 = v7;
  }

  if (*(v4 + 36))
  {
    self->_paymentType = *(v4 + 8);
    *&self->_has |= 1u;
  }
}

@end