@interface BCAnnotationRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation BCAnnotationRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BCAnnotationRange;
  v4 = [(BCAnnotationRange *)&v8 description];
  v5 = [(BCAnnotationRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_location];
  [v3 setObject:v4 forKey:@"location"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_length];
  [v3 setObject:v5 forKey:@"length"];

  return v3;
}

- (void)writeTo:(id)a3
{
  location = self->_location;
  v6 = a3;
  PBDataWriterWriteUint64Field();
  length = self->_length;
  PBDataWriterWriteUint64Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_location;
  *(result + 1) = self->_length;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_location == v4[2] && self->_length == v4[1];

  return v5;
}

@end