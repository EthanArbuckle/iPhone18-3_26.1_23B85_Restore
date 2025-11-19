@interface PKProtobufShippingMethod
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufShippingMethod

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufShippingMethod;
  v4 = [(PKProtobufShippingMethod *)&v8 description];
  v5 = [(PKProtobufShippingMethod *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [v3 setObject:v4 forKey:@"amount"];
  }

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
    [v3 setObject:v6 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  detail = self->_detail;
  if (detail)
  {
    [v3 setObject:detail forKey:@"detail"];
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount)
  {
    v10 = [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"custom_precision_amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    v12 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"decimal_amount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    v4 = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_detail)
  {
    PBDataWriterWriteStringField();
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
  if (*&self->_has)
  {
    v4[1] = self->_amount;
    *(v4 + 60) |= 1u;
  }

  v5 = v4;
  if (self->_label)
  {
    [v4 setLabel:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 14) = self->_type;
    *(v4 + 60) |= 2u;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    v4 = v5;
  }

  if (self->_detail)
  {
    [v5 setDetail:?];
    v4 = v5;
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
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 60) |= 1u;
  }

  v7 = [(NSString *)self->_label copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 56) = self->_type;
    *(v6 + 60) |= 2u;
  }

  v9 = [(NSString *)self->_identifier copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_detail copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount copyWithZone:a3];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:a3];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(v4 + 60);
  if (has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_amount != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_23;
  }

  label = self->_label;
  if (label | *(v4 + 6))
  {
    if (![(NSString *)label isEqual:?])
    {
LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

    has = self->_has;
    v6 = *(v4 + 60);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_type != *(v4 + 14))
    {
      goto LABEL_23;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_23;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_23;
  }

  detail = self->_detail;
  if (detail | *(v4 + 4))
  {
    if (![(NSString *)detail isEqual:?])
    {
      goto LABEL_23;
    }
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount | *(v4 + 2))
  {
    if (![(PKProtobufCustomPrecisionAmount *)customPrecisionAmount isEqual:?])
    {
      goto LABEL_23;
    }
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(v4 + 3))
  {
    v12 = [(PKProtobufNSDecimalNumber *)decimalAmount isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_amount;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_label hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5;
  v7 = [(NSString *)self->_identifier hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_detail hash];
  v9 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount hash];
  return v8 ^ v9 ^ [(PKProtobufNSDecimalNumber *)self->_decimalAmount hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 60))
  {
    self->_amount = v4[1];
    *&self->_has |= 1u;
  }

  v10 = v4;
  if (v4[6])
  {
    [(PKProtobufShippingMethod *)self setLabel:?];
    v5 = v10;
  }

  if ((v5[15] & 2) != 0)
  {
    self->_type = v5[14];
    *&self->_has |= 2u;
  }

  if (*(v5 + 5))
  {
    [(PKProtobufShippingMethod *)self setIdentifier:?];
    v5 = v10;
  }

  if (*(v5 + 4))
  {
    [(PKProtobufShippingMethod *)self setDetail:?];
    v5 = v10;
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  v7 = *(v5 + 2);
  if (customPrecisionAmount)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    [(PKProtobufShippingMethod *)self setCustomPrecisionAmount:?];
  }

  v5 = v10;
LABEL_17:
  decimalAmount = self->_decimalAmount;
  v9 = *(v5 + 3);
  if (decimalAmount)
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    [(PKProtobufNSDecimalNumber *)decimalAmount mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    [(PKProtobufShippingMethod *)self setDecimalAmount:?];
  }

  v5 = v10;
LABEL_23:
}

@end