@interface PKProtobufPaymentHostUpdate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentHostUpdate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentHostUpdate;
  v4 = [(PKProtobufPaymentHostUpdate *)&v8 description];
  v5 = [(PKProtobufPaymentHostUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier;
  if (remotePaymentRequestIdentifier)
  {
    [v3 setObject:remotePaymentRequestIdentifier forKey:@"remotePaymentRequestIdentifier"];
  }

  shippingContact = self->_shippingContact;
  if (shippingContact)
  {
    [v4 setObject:shippingContact forKey:@"shippingContact"];
  }

  shippingMethod = self->_shippingMethod;
  if (shippingMethod)
  {
    v8 = [(PKProtobufShippingMethod *)shippingMethod dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"shippingMethod"];
  }

  paymentMethod = self->_paymentMethod;
  if (paymentMethod)
  {
    v10 = [(PKProtobufPaymentMethod *)paymentMethod dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"paymentMethod"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_remotePaymentRequestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_shippingContact)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_shippingMethod)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_paymentMethod)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_remotePaymentRequestIdentifier)
  {
    [v4 setRemotePaymentRequestIdentifier:?];
    v4 = v5;
  }

  if (self->_shippingContact)
  {
    [v5 setShippingContact:?];
    v4 = v5;
  }

  if (self->_shippingMethod)
  {
    [v5 setShippingMethod:?];
    v4 = v5;
  }

  if (self->_paymentMethod)
  {
    [v5 setPaymentMethod:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_remotePaymentRequestIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_shippingContact copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(PKProtobufShippingMethod *)self->_shippingMethod copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PKProtobufPaymentMethod *)self->_paymentMethod copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((remotePaymentRequestIdentifier = self->_remotePaymentRequestIdentifier, !(remotePaymentRequestIdentifier | v4[2])) || -[NSString isEqual:](remotePaymentRequestIdentifier, "isEqual:")) && ((shippingContact = self->_shippingContact, !(shippingContact | v4[3])) || -[NSData isEqual:](shippingContact, "isEqual:")) && ((shippingMethod = self->_shippingMethod, !(shippingMethod | v4[4])) || -[PKProtobufShippingMethod isEqual:](shippingMethod, "isEqual:")))
  {
    paymentMethod = self->_paymentMethod;
    if (paymentMethod | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v8 = a3;
  if (v8[2])
  {
    [(PKProtobufPaymentHostUpdate *)self setRemotePaymentRequestIdentifier:?];
  }

  if (v8[3])
  {
    [(PKProtobufPaymentHostUpdate *)self setShippingContact:?];
  }

  shippingMethod = self->_shippingMethod;
  v5 = v8[4];
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
  v7 = v8[1];
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