@interface RTGeoRoadDataEnumerationOptions
- (BOOL)isEqual:(id)a3;
- (RTGeoRoadDataEnumerationOptions)initWithbatchSize:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RTGeoRoadDataEnumerationOptions

- (RTGeoRoadDataEnumerationOptions)initWithbatchSize:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTGeoRoadDataEnumerationOptions;
  result = [(RTGeoRoadDataEnumerationOptions *)&v5 init];
  if (result)
  {
    result->_batchSize = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 initWithbatchSize:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isKindOfClass = 1;
  }

  else if (v4)
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