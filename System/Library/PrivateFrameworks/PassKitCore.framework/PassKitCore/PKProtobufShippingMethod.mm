@interface PKProtobufShippingMethod
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufShippingMethod

- (void)setHasType:(BOOL)type
{
  if (type)
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
  dictionaryRepresentation = [(PKProtobufShippingMethod *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
    [dictionary setObject:v4 forKey:@"amount"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_type];
    [dictionary setObject:v6 forKey:@"type"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  detail = self->_detail;
  if (detail)
  {
    [dictionary setObject:detail forKey:@"detail"];
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount)
  {
    dictionaryRepresentation = [(PKProtobufCustomPrecisionAmount *)customPrecisionAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"custom_precision_amount"];
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount)
  {
    dictionaryRepresentation2 = [(PKProtobufNSDecimalNumber *)decimalAmount dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"decimal_amount"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteSint64Field();
    toCopy = v5;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_detail)
  {
    PBDataWriterWriteStringField();
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
  if (*&self->_has)
  {
    toCopy[1] = self->_amount;
    *(toCopy + 60) |= 1u;
  }

  v5 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 14) = self->_type;
    *(toCopy + 60) |= 2u;
  }

  if (self->_identifier)
  {
    [v5 setIdentifier:?];
    toCopy = v5;
  }

  if (self->_detail)
  {
    [v5 setDetail:?];
    toCopy = v5;
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
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_amount;
    *(v5 + 60) |= 1u;
  }

  v7 = [(NSString *)self->_label copyWithZone:zone];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 56) = self->_type;
    *(v6 + 60) |= 2u;
  }

  v9 = [(NSString *)self->_identifier copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_detail copyWithZone:zone];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v13 = [(PKProtobufCustomPrecisionAmount *)self->_customPrecisionAmount copyWithZone:zone];
  v14 = *(v6 + 16);
  *(v6 + 16) = v13;

  v15 = [(PKProtobufNSDecimalNumber *)self->_decimalAmount copyWithZone:zone];
  v16 = *(v6 + 24);
  *(v6 + 24) = v15;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = *(equalCopy + 60);
  if (has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_amount != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_23;
  }

  label = self->_label;
  if (label | *(equalCopy + 6))
  {
    if (![(NSString *)label isEqual:?])
    {
LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

    has = self->_has;
    v6 = *(equalCopy + 60);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_type != *(equalCopy + 14))
    {
      goto LABEL_23;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_23;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_23;
  }

  detail = self->_detail;
  if (detail | *(equalCopy + 4))
  {
    if (![(NSString *)detail isEqual:?])
    {
      goto LABEL_23;
    }
  }

  customPrecisionAmount = self->_customPrecisionAmount;
  if (customPrecisionAmount | *(equalCopy + 2))
  {
    if (![(PKProtobufCustomPrecisionAmount *)customPrecisionAmount isEqual:?])
    {
      goto LABEL_23;
    }
  }

  decimalAmount = self->_decimalAmount;
  if (decimalAmount | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 60))
  {
    self->_amount = fromCopy[1];
    *&self->_has |= 1u;
  }

  v10 = fromCopy;
  if (fromCopy[6])
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