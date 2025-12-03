@interface RTGeoRoadDataEnumerationOptions
- (BOOL)isEqual:(id)equal;
- (RTGeoRoadDataEnumerationOptions)initWithbatchSize:(unint64_t)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation RTGeoRoadDataEnumerationOptions

- (RTGeoRoadDataEnumerationOptions)initWithbatchSize:(unint64_t)size
{
  v5.receiver = self;
  v5.super_class = RTGeoRoadDataEnumerationOptions;
  result = [(RTGeoRoadDataEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = size;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 initWithbatchSize:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isKindOfClass = 1;
  }

  else if (equalCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_batchSize];
  v3 = [v2 hash];

  return v3;
}

@end