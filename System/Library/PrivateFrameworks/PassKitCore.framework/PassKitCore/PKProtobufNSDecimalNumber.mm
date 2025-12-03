@interface PKProtobufNSDecimalNumber
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufNSDecimalNumber

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufNSDecimalNumber;
  v4 = [(PKProtobufNSDecimalNumber *)&v8 description];
  dictionaryRepresentation = [(PKProtobufNSDecimalNumber *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_exponent];
  [dictionary setObject:v5 forKey:@"exponent"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_length];
  [dictionary setObject:v6 forKey:@"length"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_isNegative];
  [dictionary setObject:v7 forKey:@"isNegative"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_isCompact];
  [dictionary setObject:v8 forKey:@"isCompact"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_reserved];
  [dictionary setObject:v9 forKey:@"reserved"];

  mantissa = self->_mantissa;
  if (mantissa)
  {
    [dictionary setObject:mantissa forKey:@"mantissa"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteSint32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  *(to + 9) = self->_version;
  *(to + 2) = self->_exponent;
  *(to + 5) = self->_length;
  *(to + 4) = self->_isNegative;
  *(to + 3) = self->_isCompact;
  *(to + 8) = self->_reserved;
  [to setMantissa:self->_mantissa];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 36) = self->_version;
  *(v5 + 8) = self->_exponent;
  *(v5 + 20) = self->_length;
  *(v5 + 16) = self->_isNegative;
  *(v5 + 12) = self->_isCompact;
  *(v5 + 32) = self->_reserved;
  v6 = [(NSData *)self->_mantissa copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_version == *(equalCopy + 9) && self->_exponent == *(equalCopy + 2) && self->_length == *(equalCopy + 5) && self->_isNegative == *(equalCopy + 4) && self->_isCompact == *(equalCopy + 3) && self->_reserved == *(equalCopy + 8))
  {
    mantissa = self->_mantissa;
    if (mantissa | equalCopy[3])
    {
      v6 = [(NSData *)mantissa isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = (2654435761 * self->_exponent) ^ (2654435761 * self->_version) ^ (2654435761 * self->_length) ^ (2654435761 * self->_isNegative);
  v3 = (2654435761 * self->_isCompact) ^ (2654435761 * self->_reserved);
  return v2 ^ v3 ^ [(NSData *)self->_mantissa hash];
}

- (void)mergeFrom:(id)from
{
  self->_version = *(from + 9);
  self->_exponent = *(from + 2);
  self->_length = *(from + 5);
  self->_isNegative = *(from + 4);
  self->_isCompact = *(from + 3);
  self->_reserved = *(from + 8);
  if (*(from + 3))
  {
    [(PKProtobufNSDecimalNumber *)self setMantissa:?];
  }
}

@end