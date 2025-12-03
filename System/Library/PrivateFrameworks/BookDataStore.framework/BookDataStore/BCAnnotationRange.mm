@interface BCAnnotationRange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation BCAnnotationRange

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BCAnnotationRange;
  v4 = [(BCAnnotationRange *)&v8 description];
  dictionaryRepresentation = [(BCAnnotationRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_location];
  [dictionary setObject:v4 forKey:@"location"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_length];
  [dictionary setObject:v5 forKey:@"length"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  location = self->_location;
  toCopy = to;
  PBDataWriterWriteUint64Field();
  length = self->_length;
  PBDataWriterWriteUint64Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_location;
  *(result + 1) = self->_length;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_location == equalCopy[2] && self->_length == equalCopy[1];

  return v5;
}

@end