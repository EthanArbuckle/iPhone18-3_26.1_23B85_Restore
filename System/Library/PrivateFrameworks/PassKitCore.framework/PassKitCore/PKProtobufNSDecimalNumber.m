@interface PKProtobufNSDecimalNumber
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufNSDecimalNumber

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufNSDecimalNumber;
  v4 = [(PKProtobufNSDecimalNumber *)&v8 description];
  v5 = [(PKProtobufNSDecimalNumber *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_exponent];
  [v3 setObject:v5 forKey:@"exponent"];

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_length];
  [v3 setObject:v6 forKey:@"length"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_isNegative];
  [v3 setObject:v7 forKey:@"isNegative"];

  v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_isCompact];
  [v3 setObject:v8 forKey:@"isCompact"];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_reserved];
  [v3 setObject:v9 forKey:@"reserved"];

  mantissa = self->_mantissa;
  if (mantissa)
  {
    [v3 setObject:mantissa forKey:@"mantissa"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteSint32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 9) = self->_version;
  *(a3 + 2) = self->_exponent;
  *(a3 + 5) = self->_length;
  *(a3 + 4) = self->_isNegative;
  *(a3 + 3) = self->_isCompact;
  *(a3 + 8) = self->_reserved;
  [a3 setMantissa:self->_mantissa];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 36) = self->_version;
  *(v5 + 8) = self->_exponent;
  *(v5 + 20) = self->_length;
  *(v5 + 16) = self->_isNegative;
  *(v5 + 12) = self->_isCompact;
  *(v5 + 32) = self->_reserved;
  v6 = [(NSData *)self->_mantissa copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_version == *(v4 + 9) && self->_exponent == *(v4 + 2) && self->_length == *(v4 + 5) && self->_isNegative == *(v4 + 4) && self->_isCompact == *(v4 + 3) && self->_reserved == *(v4 + 8))
  {
    mantissa = self->_mantissa;
    if (mantissa | v4[3])
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

- (void)mergeFrom:(id)a3
{
  self->_version = *(a3 + 9);
  self->_exponent = *(a3 + 2);
  self->_length = *(a3 + 5);
  self->_isNegative = *(a3 + 4);
  self->_isCompact = *(a3 + 3);
  self->_reserved = *(a3 + 8);
  if (*(a3 + 3))
  {
    [(PKProtobufNSDecimalNumber *)self setMantissa:?];
  }
}

@end