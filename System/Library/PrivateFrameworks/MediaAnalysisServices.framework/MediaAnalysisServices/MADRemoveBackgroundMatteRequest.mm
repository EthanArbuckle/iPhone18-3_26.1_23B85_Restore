@interface MADRemoveBackgroundMatteRequest
- (MADRemoveBackgroundMatteRequest)init;
- (MADRemoveBackgroundMatteRequest)initWithCoder:(id)coder;
- (MADRemoveBackgroundMatteResult)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADRemoveBackgroundMatteRequest

- (MADRemoveBackgroundMatteRequest)init
{
  v6.receiver = self;
  v6.super_class = MADRemoveBackgroundMatteRequest;
  v2 = [(MADRemoveBackgroundMatteRequest *)&v6 init];
  if (v2)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
    instances = v2->_instances;
    v2->_instances = indexSet;
  }

  return v2;
}

- (MADRemoveBackgroundMatteRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADRemoveBackgroundMatteRequest;
  v5 = [(MADRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Instances"];
    instances = v5->_instances;
    v5->_instances = v6;

    v5->_inPlace = [coderCopy decodeBoolForKey:@"InPlace"];
    v5->_cropResult = [coderCopy decodeBoolForKey:@"CropResult"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADRemoveBackgroundMatteRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_instances forKey:{@"Instances", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_inPlace forKey:@"InPlace"];
  [coderCopy encodeBool:self->_cropResult forKey:@"CropResult"];
  [coderCopy encodeObject:self->_imageType forKey:@"ImageType"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  if (self->_instances)
  {
    [string appendFormat:@"instances: %@, ", self->_instances];
  }

  [string appendFormat:@"inPlace: %d, ", self->_inPlace];
  [string appendFormat:@"cropResult: %d, ", self->_cropResult];
  if (self->_imageType)
  {
    [string appendFormat:@"imageType: %@, ", self->_imageType];
  }

  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

- (MADRemoveBackgroundMatteResult)result
{
  results = [(MADRequest *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

@end