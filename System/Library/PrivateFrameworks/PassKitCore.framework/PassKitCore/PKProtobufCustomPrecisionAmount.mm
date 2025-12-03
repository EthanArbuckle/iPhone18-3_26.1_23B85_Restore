@interface PKProtobufCustomPrecisionAmount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufCustomPrecisionAmount

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCustomPrecisionAmount;
  v4 = [(PKProtobufCustomPrecisionAmount *)&v8 description];
  dictionaryRepresentation = [(PKProtobufCustomPrecisionAmount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
  [dictionary setObject:v4 forKey:@"amount"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_decimalDigitsMultiplier];
  [dictionary setObject:v5 forKey:@"decimal_digits_multiplier"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSint64Field();
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 1) = self->_amount;
  *(result + 4) = self->_decimalDigitsMultiplier;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_amount == *(equalCopy + 1) && self->_decimalDigitsMultiplier == *(equalCopy + 4);

  return v5;
}

@end