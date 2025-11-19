@interface CPLCloudKitResourceInfoImageDimensions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation CPLCloudKitResourceInfoImageDimensions

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitResourceInfoImageDimensions;
  v3 = [(CPLCloudKitResourceInfoImageDimensions *)&v7 description];
  v4 = [(CPLCloudKitResourceInfoImageDimensions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithLongLong:self->_width];
  [v3 setObject:v4 forKey:@"width"];

  v5 = [NSNumber numberWithLongLong:self->_height];
  [v3 setObject:v5 forKey:@"height"];

  return v3;
}

- (void)writeTo:(id)a3
{
  width = self->_width;
  v6 = a3;
  PBDataWriterWriteInt64Field();
  height = self->_height;
  PBDataWriterWriteInt64Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_width;
  *(result + 1) = self->_height;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && self->_width == v4[2] && self->_height == v4[1];

  return v5;
}

@end