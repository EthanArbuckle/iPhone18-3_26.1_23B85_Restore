@interface MADRemoveBackgroundMaskRequest
- (MADRemoveBackgroundMaskRequest)initWithCoder:(id)a3;
- (MADRemoveBackgroundMaskResult)result;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADRemoveBackgroundMaskRequest

- (MADRemoveBackgroundMaskRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADRemoveBackgroundMaskRequest;
  v5 = [(MADRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ImageType"];
    imageType = v5->_imageType;
    v5->_imageType = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADRemoveBackgroundMaskRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_imageType forKey:{@"ImageType", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

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

- (MADRemoveBackgroundMaskResult)result
{
  v2 = [(MADRequest *)self results];
  v3 = [v2 firstObject];

  return v3;
}

@end