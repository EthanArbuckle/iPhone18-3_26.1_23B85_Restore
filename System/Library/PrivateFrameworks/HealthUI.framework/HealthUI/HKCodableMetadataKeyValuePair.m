@interface HKCodableMetadataKeyValuePair
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableMetadataKeyValuePair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableMetadataKeyValuePair;
  v4 = [(HKCodableMetadataKeyValuePair *)&v8 description];
  v5 = [(HKCodableMetadataKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_numberIntValue];
    [v4 setObject:v6 forKey:@"numberIntValue"];
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    [v4 setObject:stringValue forKey:@"stringValue"];
  }

  quantityValue = self->_quantityValue;
  if (quantityValue)
  {
    v9 = [(HKCodableQuantity *)quantityValue dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"quantityValue"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_key)
  {
    [v4 setKey:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_numberIntValue;
    *(v4 + 40) |= 1u;
  }

  if (self->_stringValue)
  {
    [v5 setStringValue:?];
    v4 = v5;
  }

  if (self->_quantityValue)
  {
    [v5 setQuantityValue:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_numberIntValue;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_stringValue copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(HKCodableQuantity *)self->_quantityValue copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(v4 + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_numberIntValue != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(v4 + 4) && ![(NSString *)stringValue isEqual:?])
  {
    goto LABEL_13;
  }

  quantityValue = self->_quantityValue;
  if (quantityValue | *(v4 + 3))
  {
    v8 = [(HKCodableQuantity *)quantityValue isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_numberIntValue;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_stringValue hash];
  return v5 ^ v6 ^ [(HKCodableQuantity *)self->_quantityValue hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(HKCodableMetadataKeyValuePair *)self setKey:?];
    v4 = v7;
  }

  if (v4[5])
  {
    self->_numberIntValue = v4[1];
    *&self->_has |= 1u;
  }

  if (v4[4])
  {
    [(HKCodableMetadataKeyValuePair *)self setStringValue:?];
    v4 = v7;
  }

  quantityValue = self->_quantityValue;
  v6 = v4[3];
  if (quantityValue)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    quantityValue = [(HKCodableQuantity *)quantityValue mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    quantityValue = [(HKCodableMetadataKeyValuePair *)self setQuantityValue:?];
  }

  v4 = v7;
LABEL_13:

  MEMORY[0x1EEE66BB8](quantityValue, v4);
}

@end