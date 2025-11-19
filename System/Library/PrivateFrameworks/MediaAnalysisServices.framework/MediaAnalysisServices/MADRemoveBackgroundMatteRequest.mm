@interface MADRemoveBackgroundMatteRequest
- (MADRemoveBackgroundMatteRequest)init;
- (MADRemoveBackgroundMatteRequest)initWithCoder:(id)a3;
- (MADRemoveBackgroundMatteResult)result;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADRemoveBackgroundMatteRequest

- (MADRemoveBackgroundMatteRequest)init
{
  v6.receiver = self;
  v6.super_class = MADRemoveBackgroundMatteRequest;
  v2 = [(MADRemoveBackgroundMatteRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC90] indexSet];
    instances = v2->_instances;
    v2->_instances = v3;
  }

  return v2;
}

- (MADRemoveBackgroundMatteRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADRemoveBackgroundMatteRequest;
  v5 = [(MADRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Instances"];
    instances = v5->_instances;
    v5->_instances = v6;

    v5->_inPlace = [v4 decodeBoolForKey:@"InPlace"];
    v5->_cropResult = [v4 decodeBoolForKey:@"CropResult"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADRemoveBackgroundMatteRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_instances forKey:{@"Instances", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_inPlace forKey:@"InPlace"];
  [v4 encodeBool:self->_cropResult forKey:@"CropResult"];
  [v4 encodeObject:self->_imageType forKey:@"ImageType"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  if (self->_instances)
  {
    [v3 appendFormat:@"instances: %@, ", self->_instances];
  }

  [v3 appendFormat:@"inPlace: %d, ", self->_inPlace];
  [v3 appendFormat:@"cropResult: %d, ", self->_cropResult];
  if (self->_imageType)
  {
    [v3 appendFormat:@"imageType: %@, ", self->_imageType];
  }

  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

- (MADRemoveBackgroundMatteResult)result
{
  v2 = [(MADRequest *)self results];
  v3 = [v2 firstObject];

  return v3;
}

@end