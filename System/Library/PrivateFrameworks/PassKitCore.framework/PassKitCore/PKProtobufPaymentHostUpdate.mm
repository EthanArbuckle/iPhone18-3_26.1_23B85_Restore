@interface PKProtobufPaymentHostUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentHostUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentHostUpdate;
  v4 = [(PKProtobufPaymentHostUpdate *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentHostUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier)
  {
    [dictionary setObject:remotePaymentRequestIdentifier forKey:@"remotePaymentRequestIdentifier"];
  }

  shippingContact = self->_shippingContact;
  if (shippingContact)
  {
    [v4 setObject:shippingContact forKey:@"shippingContact"];
  }

  shippingMethod = self->_shippingMethod;
  if (shippingMethod)
  {
    dictionaryRepresentation = [(PKProtobufShippingMethod *)shippingMethod dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"shippingMethod"];
  }

  paymentMethod = self->_paymentMethod;
  if (paymentMethod)
  {
    dictionaryRepresentation2 = [(PKProtobufPaymentMethod *)paymentMethod dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"paymentMethod"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_remotePaymentRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_shippingContact)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_shippingMethod)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_paymentMethod)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_remotePaymentRequestIdentifier)
  {
    [toCopy setRemotePaymentRequestIdentifier:?];
    toCopy = v5;
  }

  if (self->_shippingContact)
  {
    [v5 setShippingContact:?];
    toCopy = v5;
  }

  if (self->_shippingMethod)
  {
    [v5 setShippingMethod:?];
    toCopy = v5;
  }

  if (self->_paymentMethod)
  {
    [v5 setPaymentMethod:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_remotePaymentRequestIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_shippingContact copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PKProtobufShippingMethod *)self->_shippingMethod copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PKProtobufPaymentMethod *)self->_paymentMethod copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier, !(remotePaymentRequestIdentifier | equalCopy[2])) || -[NSString isEqual:](remotePaymentRequestIdentifier, "isEqual:")) && ((shippingContact = self->_shippingContact, !(shippingContact | equalCopy[3])) || -[NSData isEqual:](shippingContact, "isEqual:")) && ((shippingMethod = self->_shippingMethod, !(shippingMethod | equalCopy[4])) || -[PKProtobufShippingMethod isEqual:](shippingMethod, "isEqual:")))
  {
    paymentMethod = self->_paymentMethod;
    if (paymentMethod | equalCopy[1])
    {
      v9 = [(PKProtobufPaymentMethod *)paymentMethod isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_remotePaymentRequestIdentifier hash];
  v4 = [(NSData *)self->_shippingContact hash]^ v3;
  v5 = [(PKProtobufShippingMethod *)self->_shippingMethod hash];
  return v4 ^ v5 ^ [(PKProtobufPaymentMethod *)self->_paymentMethod hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(PKProtobufPaymentHostUpdate *)self setRemotePaymentRequestIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(PKProtobufPaymentHostUpdate *)self setShippingContact:?];
  }

  shippingMethod = self->_shippingMethod;
  v5 = fromCopy[4];
  if (shippingMethod)
  {
    if (v5)
    {
      [(PKProtobufShippingMethod *)shippingMethod mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PKProtobufPaymentHostUpdate *)self setShippingMethod:?];
  }

  paymentMethod = self->_paymentMethod;
  v7 = fromCopy[1];
  if (paymentMethod)
  {
    if (v7)
    {
      [(PKProtobufPaymentMethod *)paymentMethod mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PKProtobufPaymentHostUpdate *)self setPaymentMethod:?];
  }
}

@end