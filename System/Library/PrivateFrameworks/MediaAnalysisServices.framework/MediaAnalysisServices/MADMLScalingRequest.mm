@interface MADMLScalingRequest
- (MADMLScalingRequest)initWithCoder:(id)coder;
- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)width scaledImageHeight:(unint64_t)height;
- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)width scaledImageHeight:(unint64_t)height scalingModel:(int64_t)model;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMLScalingRequest

- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)width scaledImageHeight:(unint64_t)height scalingModel:(int64_t)model
{
  v9.receiver = self;
  v9.super_class = MADMLScalingRequest;
  result = [(MADMLScalingRequest *)&v9 init];
  if (result)
  {
    result->_scaledImageWidth = width;
    result->_scaledImageHeight = height;
    result->_scalingModelIndex = model;
  }

  return result;
}

- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)width scaledImageHeight:(unint64_t)height
{
  v7.receiver = self;
  v7.super_class = MADMLScalingRequest;
  result = [(MADMLScalingRequest *)&v7 init];
  if (result)
  {
    result->_scaledImageWidth = width;
    result->_scaledImageHeight = height;
    result->_scalingModelIndex = 0;
  }

  return result;
}

- (MADMLScalingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADMLScalingRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_scaledImageWidth = [coderCopy decodeIntegerForKey:@"ScaledImageWidth"];
    v5->_scaledImageHeight = [coderCopy decodeIntegerForKey:@"ScaledImageHeight"];
    v5->_scalingModelIndex = [coderCopy decodeIntegerForKey:@"ScalingModelIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADMLScalingRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_scaledImageWidth forKey:{@"ScaledImageWidth", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_scaledImageHeight forKey:@"ScaledImageHeight"];
  [coderCopy encodeInteger:self->_scalingModelIndex forKey:@"ScalingModelIndex"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  [string appendFormat:@", scaledImageWidth: %lu", self->_scaledImageWidth];
  [string appendFormat:@", scaledImageHeight: %lu", self->_scaledImageHeight];
  [string appendFormat:@", scalingModelIndex: %lu", self->_scalingModelIndex];
  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end