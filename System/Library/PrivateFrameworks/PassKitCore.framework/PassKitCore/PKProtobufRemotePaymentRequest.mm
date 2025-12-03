@interface PKProtobufRemotePaymentRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufRemotePaymentRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRemotePaymentRequest;
  v4 = [(PKProtobufRemotePaymentRequest *)&v8 description];
  dictionaryRepresentation = [(PKProtobufRemotePaymentRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  paymentRequest = self->_paymentRequest;
  if (paymentRequest)
  {
    dictionaryRepresentation = [(PKProtobufPaymentRequest *)paymentRequest dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"paymentRequest"];
  }

  paymentApplicationIdentifier = self->_paymentApplicationIdentifier;
  if (paymentApplicationIdentifier)
  {
    [dictionary setObject:paymentApplicationIdentifier forKey:@"paymentApplicationIdentifier"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_paymentType];
    [dictionary setObject:v8 forKey:@"paymentType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_paymentApplicationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentRequest)
  {
    [toCopy setPaymentRequest:?];
    toCopy = v5;
  }

  if (self->_paymentApplicationIdentifier)
  {
    [v5 setPaymentApplicationIdentifier:?];
    toCopy = v5;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_paymentType;
    *(toCopy + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKProtobufPaymentRequest *)self->_paymentRequest copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_paymentApplicationIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_paymentType;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  paymentRequest = self->_paymentRequest;
  if (paymentRequest | *(equalCopy + 3))
  {
    if (![(PKProtobufPaymentRequest *)paymentRequest isEqual:?])
    {
      goto LABEL_12;
    }
  }

  paymentApplicationIdentifier = self->_paymentApplicationIdentifier;
  if (paymentApplicationIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)paymentApplicationIdentifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 1))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) != 0 && self->_paymentType == *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  paymentRequest = self->_paymentRequest;
  v6 = *(fromCopy + 3);
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 2))
  {
    [(PKProtobufRemotePaymentRequest *)self setPaymentApplicationIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufRemotePaymentRequest *)self setIdentifier:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 36))
  {
    self->_paymentType = *(fromCopy + 8);
    *&self->_has |= 1u;
  }
}

@end