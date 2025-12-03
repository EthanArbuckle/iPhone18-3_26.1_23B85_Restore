@interface HKCodableMetadataKeyValuePair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableMetadataKeyValuePair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableMetadataKeyValuePair;
  v4 = [(HKCodableMetadataKeyValuePair *)&v8 description];
  dictionaryRepresentation = [(HKCodableMetadataKeyValuePair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
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
    dictionaryRepresentation = [(HKCodableQuantity *)quantityValue dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"quantityValue"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_quantityValue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_numberIntValue;
    *(toCopy + 40) |= 1u;
  }

  if (self->_stringValue)
  {
    [v5 setStringValue:?];
    toCopy = v5;
  }

  if (self->_quantityValue)
  {
    [v5 setQuantityValue:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_numberIntValue;
    *(v5 + 40) |= 1u;
  }

  v8 = [(NSString *)self->_stringValue copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(HKCodableQuantity *)self->_quantityValue copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_numberIntValue != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  stringValue = self->_stringValue;
  if (stringValue | *(equalCopy + 4) && ![(NSString *)stringValue isEqual:?])
  {
    goto LABEL_13;
  }

  quantityValue = self->_quantityValue;
  if (quantityValue | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(HKCodableMetadataKeyValuePair *)self setKey:?];
    fromCopy = v7;
  }

  if (fromCopy[5])
  {
    self->_numberIntValue = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[4])
  {
    [(HKCodableMetadataKeyValuePair *)self setStringValue:?];
    fromCopy = v7;
  }

  quantityValue = self->_quantityValue;
  v6 = fromCopy[3];
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

  fromCopy = v7;
LABEL_13:

  MEMORY[0x1EEE66BB8](quantityValue, fromCopy);
}

@end