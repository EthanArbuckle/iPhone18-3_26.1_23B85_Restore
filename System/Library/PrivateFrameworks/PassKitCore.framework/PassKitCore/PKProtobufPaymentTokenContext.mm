@interface PKProtobufPaymentTokenContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentTokenContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentTokenContext;
  v4 = [(PKProtobufPaymentTokenContext *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentTokenContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier)
  {
    [dictionary setObject:merchantIdentifier forKey:@"merchantIdentifier"];
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier)
  {
    [v4 setObject:externalIdentifier forKey:@"externalIdentifier"];
  }

  merchantName = self->_merchantName;
  if (merchantName)
  {
    [v4 setObject:merchantName forKey:@"merchantName"];
  }

  merchantDomain = self->_merchantDomain;
  if (merchantDomain)
  {
    [v4 setObject:merchantDomain forKey:@"merchantDomain"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [v4 setObject:v9 forKey:@"amount"];
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount)
  {
    dictionaryRepresentation = [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"custom_precision_amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    dictionaryRepresentation2 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"decimal_amount"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_merchantIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_externalIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_merchantName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_merchantDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    toCopy = v5;
  }

  if (self->_customPrecisionAmount)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_decimalAmount)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_merchantIdentifier)
  {
    [toCopy setMerchantIdentifier:?];
    toCopy = v5;
  }

  if (self->_externalIdentifier)
  {
    [v5 setExternalIdentifier:?];
    toCopy = v5;
  }

  if (self->_merchantName)
  {
    [v5 setMerchantName:?];
    toCopy = v5;
  }

  if (self->_merchantDomain)
  {
    [v5 setMerchantDomain:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_amount;
    *(toCopy + 64) |= 1u;
  }

  if (self->_customPrecisionAmount)
  {
    [v5 setCustomPrecisionAmount:?];
    toCopy = v5;
  }

  if (self->_decimalAmount)
  {
    [v5 setDecimalAmount:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_merchantIdentifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_externalIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_merchantName copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_merchantDomain copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 64) |= 1u;
  }

  v14 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)merchantIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)externalIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  merchantName = self->_merchantName;
  if (merchantName | *(equalCopy + 7))
  {
    if (![(NSString *)merchantName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  merchantDomain = self->_merchantDomain;
  if (merchantDomain | *(equalCopy + 5))
  {
    if (![(NSString *)merchantDomain isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_amount != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount | *(equalCopy + 2) && ![(PKProtobufCustomPrecisionAmount *)customPrecisionAmount isEqual:?])
  {
    goto LABEL_19;
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(equalCopy + 3))
  {
    v11 = [(PKProtobufNSDecimalNumber *)decimalAmount isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_merchantIdentifier hash];
  v4 = [(NSString *)self->_externalIdentifier hash];
  v5 = [(NSString *)self->_merchantName hash];
  v6 = [(NSString *)self->_merchantDomain hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_amount;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount hash];
  return v8 ^ v9 ^ [(PKProtobufNSDecimalNumber *)self->_decimalAmount hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v9 = fromCopy;
  if (fromCopy[6])
  {
    [(PKProtobufPaymentTokenContext *)self setMerchantIdentifier:?];
    fromCopy = v9;
  }

  if (fromCopy[4])
  {
    [(PKProtobufPaymentTokenContext *)self setExternalIdentifier:?];
    fromCopy = v9;
  }

  if (fromCopy[7])
  {
    [(PKProtobufPaymentTokenContext *)self setMerchantName:?];
    fromCopy = v9;
  }

  if (fromCopy[5])
  {
    [(PKProtobufPaymentTokenContext *)self setMerchantDomain:?];
    fromCopy = v9;
  }

  if (fromCopy[8])
  {
    self->_amount = fromCopy[1];
    *&self->_has |= 1u;
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  v6 = fromCopy[2];
  if (customPrecisionAmount)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    [(PKProtobufPaymentTokenContext *)self setCustomPrecisionAmount:?];
  }

  fromCopy = v9;
LABEL_17:
  decimalAmount = self->_decimalAmount;
  v8 = fromCopy[3];
  if (decimalAmount)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(PKProtobufNSDecimalNumber *)decimalAmount mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    [(PKProtobufPaymentTokenContext *)self setDecimalAmount:?];
  }

  fromCopy = v9;
LABEL_23:
}

@end