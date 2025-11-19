@interface PKProtobufPaymentTokenContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentTokenContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentTokenContext;
  v4 = [(PKProtobufPaymentTokenContext *)&v8 description];
  v5 = [(PKProtobufPaymentTokenContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier)
  {
    [v3 setObject:merchantIdentifier forKey:@"merchantIdentifier"];
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
    v11 = [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"custom_precision_amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    v13 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [v4 setObject:v13 forKey:@"decimal_amount"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_merchantIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_externalIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_merchantName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_merchantDomain)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    v4 = v5;
  }

  if (self->_customPrecisionAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_decimalAmount)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_merchantIdentifier)
  {
    [v4 setMerchantIdentifier:?];
    v4 = v5;
  }

  if (self->_externalIdentifier)
  {
    [v5 setExternalIdentifier:?];
    v4 = v5;
  }

  if (self->_merchantName)
  {
    [v5 setMerchantName:?];
    v4 = v5;
  }

  if (self->_merchantDomain)
  {
    [v5 setMerchantDomain:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_amount;
    *(v4 + 64) |= 1u;
  }

  if (self->_customPrecisionAmount)
  {
    [v5 setCustomPrecisionAmount:?];
    v4 = v5;
  }

  if (self->_decimalAmount)
  {
    [v5 setDecimalAmount:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_externalIdentifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_merchantName copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_merchantDomain copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 64) |= 1u;
  }

  v14 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  merchantIdentifier = self->_merchantIdentifier;
  if (merchantIdentifier | *(v4 + 6))
  {
    if (![(NSString *)merchantIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  externalIdentifier = self->_externalIdentifier;
  if (externalIdentifier | *(v4 + 4))
  {
    if (![(NSString *)externalIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  merchantName = self->_merchantName;
  if (merchantName | *(v4 + 7))
  {
    if (![(NSString *)merchantName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  merchantDomain = self->_merchantDomain;
  if (merchantDomain | *(v4 + 5))
  {
    if (![(NSString *)merchantDomain isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_amount != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount | *(v4 + 2) && ![(PKProtobufCustomPrecisionAmount *)customPrecisionAmount isEqual:?])
  {
    goto LABEL_19;
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4[6])
  {
    [(PKProtobufPaymentTokenContext *)self setMerchantIdentifier:?];
    v4 = v9;
  }

  if (v4[4])
  {
    [(PKProtobufPaymentTokenContext *)self setExternalIdentifier:?];
    v4 = v9;
  }

  if (v4[7])
  {
    [(PKProtobufPaymentTokenContext *)self setMerchantName:?];
    v4 = v9;
  }

  if (v4[5])
  {
    [(PKProtobufPaymentTokenContext *)self setMerchantDomain:?];
    v4 = v9;
  }

  if (v4[8])
  {
    self->_amount = v4[1];
    *&self->_has |= 1u;
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  v6 = v4[2];
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

  v4 = v9;
LABEL_17:
  decimalAmount = self->_decimalAmount;
  v8 = v4[3];
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

  v4 = v9;
LABEL_23:
}

@end