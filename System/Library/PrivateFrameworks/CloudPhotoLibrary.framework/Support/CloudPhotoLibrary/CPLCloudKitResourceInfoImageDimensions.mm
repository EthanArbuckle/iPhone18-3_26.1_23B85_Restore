@interface CPLCloudKitResourceInfoImageDimensions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation CPLCloudKitResourceInfoImageDimensions

- (id)description
{
  v7.receiver = self;
  v7.super_class = CPLCloudKitResourceInfoImageDimensions;
  v3 = [(CPLCloudKitResourceInfoImageDimensions *)&v7 description];
  dictionaryRepresentation = [(CPLCloudKitResourceInfoImageDimensions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  width = self->_width;
  toCopy = to;
  PBDataWriterWriteInt64Field();
  height = self->_height;
  PBDataWriterWriteInt64Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_width;
  *(result + 1) = self->_height;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_width == equalCopy[2] && self->_height == equalCopy[1];

  return v5;
}

@end