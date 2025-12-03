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
  v7.receiver = self;
  v7.super_class = BCAnnotationRange;
  v3 = [(BCAnnotationRange *)&v7 description];
  dictionaryRepresentation = [(BCAnnotationRange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedLongLong:self->_location];
  [v3 setObject:v4 forKey:@"location"];

  v5 = [NSNumber numberWithUnsignedLongLong:self->_length];
  [v3 setObject:v5 forKey:@"length"];

  return v3;
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