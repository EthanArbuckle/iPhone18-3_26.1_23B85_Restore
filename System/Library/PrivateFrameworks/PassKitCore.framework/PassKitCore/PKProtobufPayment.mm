@interface PKProtobufPayment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPayment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPayment;
  v4 = [(PKProtobufPayment *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPayment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  token = self->_token;
  if (token)
  {
    dictionaryRepresentation = [(PKProtobufPaymentToken *)token dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"token"];
  }

  billingContact = self->_billingContact;
  if (billingContact)
  {
    [dictionary setObject:billingContact forKey:@"billingContact"];
  }

  shippingContact = self->_shippingContact;
  if (shippingContact)
  {
    [dictionary setObject:shippingContact forKey:@"shippingContact"];
  }

  shippingMethod = self->_shippingMethod;
  if (shippingMethod)
  {
    dictionaryRepresentation2 = [(PKProtobufShippingMethod *)shippingMethod dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"shippingMethod"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_token)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_billingContact)
  {
    PBDataWriterWriteDataField();
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_token)
  {
    [toCopy setToken:?];
    toCopy = v5;
  }

  if (self->_billingContact)
  {
    [v5 setBillingContact:?];
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
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKProtobufPaymentToken *)self->_token copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_billingContact copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_shippingContact copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PKProtobufShippingMethod *)self->_shippingMethod copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((token = self->_token, !(token | equalCopy[4])) || -[PKProtobufPaymentToken isEqual:](token, "isEqual:")) && ((billingContact = self->_billingContact, !(billingContact | equalCopy[1])) || -[NSData isEqual:](billingContact, "isEqual:")) && ((shippingContact = self->_shippingContact, !(shippingContact | equalCopy[2])) || -[NSData isEqual:](shippingContact, "isEqual:")))
  {
    shippingMethod = self->_shippingMethod;
    if (shippingMethod | equalCopy[3])
    {
      v9 = [(PKProtobufShippingMethod *)shippingMethod isEqual:?];
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
  v3 = [(PKProtobufPaymentToken *)self->_token hash];
  v4 = [(NSData *)self->_billingContact hash]^ v3;
  v5 = [(NSData *)self->_shippingContact hash];
  return v4 ^ v5 ^ [(PKProtobufShippingMethod *)self->_shippingMethod hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  token = self->_token;
  v9 = fromCopy;
  v6 = fromCopy[4];
  if (token)
  {
    if (v6)
    {
      [(PKProtobufPaymentToken *)token mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PKProtobufPayment *)self setToken:?];
  }

  if (v9[1])
  {
    [(PKProtobufPayment *)self setBillingContact:?];
  }

  if (v9[2])
  {
    [(PKProtobufPayment *)self setShippingContact:?];
  }

  shippingMethod = self->_shippingMethod;
  v8 = v9[3];
  if (shippingMethod)
  {
    if (v8)
    {
      [(PKProtobufShippingMethod *)shippingMethod mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PKProtobufPayment *)self setShippingMethod:?];
  }
}

@end