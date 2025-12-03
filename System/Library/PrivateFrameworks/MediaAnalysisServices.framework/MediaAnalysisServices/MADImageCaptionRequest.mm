@interface MADImageCaptionRequest
- (MADImageCaptionRequest)initWithCoder:(id)coder;
- (MADImageCaptionRequest)initWithModelType:(int64_t)type safetyType:(int64_t)safetyType;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADImageCaptionRequest

- (MADImageCaptionRequest)initWithModelType:(int64_t)type safetyType:(int64_t)safetyType
{
  v7.receiver = self;
  v7.super_class = MADImageCaptionRequest;
  result = [(MADImageCaptionRequest *)&v7 init];
  if (result)
  {
    result->_modelType = type;
    result->_safetyType = safetyType;
  }

  return result;
}

- (MADImageCaptionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADImageCaptionRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_modelType = [coderCopy decodeIntegerForKey:@"ImageCaptionModelType"];
    v5->_safetyType = [coderCopy decodeIntegerForKey:@"ImageCaptionSafetyType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADImageCaptionRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_modelType forKey:{@"ImageCaptionModelType", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_safetyType forKey:@"ImageCaptionSafetyType"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"imageCaptionModelType: %ld, ", -[MADImageCaptionRequest modelType](self, "modelType")];
  [string appendFormat:@"imageCaptionSafetyType: %ld, ", -[MADImageCaptionRequest safetyType](self, "safetyType")];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end