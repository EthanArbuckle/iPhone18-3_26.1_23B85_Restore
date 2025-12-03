@interface MADRemoveBackgroundMaskRequest
- (MADRemoveBackgroundMaskRequest)initWithCoder:(id)coder;
- (MADRemoveBackgroundMaskResult)result;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADRemoveBackgroundMaskRequest

- (MADRemoveBackgroundMaskRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADRemoveBackgroundMaskRequest;
  v5 = [(MADRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADRemoveBackgroundMaskRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageType forKey:{@"ImageType", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

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

- (MADRemoveBackgroundMaskResult)result
{
  results = [(MADRequest *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

@end