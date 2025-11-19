@interface PKProtobufPayment
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPayment

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPayment;
  v4 = [(PKProtobufPayment *)&v8 description];
  v5 = [(PKProtobufPayment *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  token = self->_token;
  if (token)
  {
    v5 = [(PKProtobufPaymentToken *)token dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"token"];
  }

  billingContact = self->_billingContact;
  if (billingContact)
  {
    [v3 setObject:billingContact forKey:@"billingContact"];
  }

  shippingContact = self->_shippingContact;
  if (shippingContact)
  {
    [v3 setObject:shippingContact forKey:@"shippingContact"];
  }

  shippingMethod = self->_shippingMethod;
  if (shippingMethod)
  {
    v9 = [(PKProtobufShippingMethod *)shippingMethod dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"shippingMethod"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_token)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_billingContact)
  {
    PBDataWriterWriteDataField();
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
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_token)
  {
    [v4 setToken:?];
    v4 = v5;
  }

  if (self->_billingContact)
  {
    [v5 setBillingContact:?];
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
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKProtobufPaymentToken *)self->_token copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_billingContact copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_shippingContact copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PKProtobufShippingMethod *)self->_shippingMethod copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((token = self->_token, !(token | v4[4])) || -[PKProtobufPaymentToken isEqual:](token, "isEqual:")) && ((billingContact = self->_billingContact, !(billingContact | v4[1])) || -[NSData isEqual:](billingContact, "isEqual:")) && ((shippingContact = self->_shippingContact, !(shippingContact | v4[2])) || -[NSData isEqual:](shippingContact, "isEqual:")))
  {
    shippingMethod = self->_shippingMethod;
    if (shippingMethod | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  token = self->_token;
  v9 = v4;
  v6 = v4[4];
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