@interface PKProtobufCustomPrecisionAmount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufCustomPrecisionAmount

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCustomPrecisionAmount;
  v4 = [(PKProtobufCustomPrecisionAmount *)&v8 description];
  v5 = [(PKProtobufCustomPrecisionAmount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_amount];
  [v3 setObject:v4 forKey:@"amount"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_decimalDigitsMultiplier];
  [v3 setObject:v5 forKey:@"decimal_digits_multiplier"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSint64Field();
  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = self->_amount;
  *(result + 4) = self->_decimalDigitsMultiplier;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_amount == *(v4 + 1) && self->_decimalDigitsMultiplier == *(v4 + 4);

  return v5;
}

@end