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
  v7.receiver = self;
  v7.super_class = BCAnnotationRange;
  v3 = [(BCAnnotationRange *)&v7 description];
  v4 = [(BCAnnotationRange *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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