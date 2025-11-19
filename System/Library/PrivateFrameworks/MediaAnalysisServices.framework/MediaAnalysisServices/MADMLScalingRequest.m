@interface MADMLScalingRequest
- (MADMLScalingRequest)initWithCoder:(id)a3;
- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)a3 scaledImageHeight:(unint64_t)a4;
- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)a3 scaledImageHeight:(unint64_t)a4 scalingModel:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADMLScalingRequest

- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)a3 scaledImageHeight:(unint64_t)a4 scalingModel:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = MADMLScalingRequest;
  result = [(MADMLScalingRequest *)&v9 init];
  if (result)
  {
    result->_scaledImageWidth = a3;
    result->_scaledImageHeight = a4;
    result->_scalingModelIndex = a5;
  }

  return result;
}

- (MADMLScalingRequest)initWithScaledImageWidth:(unint64_t)a3 scaledImageHeight:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MADMLScalingRequest;
  result = [(MADMLScalingRequest *)&v7 init];
  if (result)
  {
    result->_scaledImageWidth = a3;
    result->_scaledImageHeight = a4;
    result->_scalingModelIndex = 0;
  }

  return result;
}

- (MADMLScalingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADMLScalingRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_scaledImageWidth = [v4 decodeIntegerForKey:@"ScaledImageWidth"];
    v5->_scaledImageHeight = [v4 decodeIntegerForKey:@"ScaledImageHeight"];
    v5->_scalingModelIndex = [v4 decodeIntegerForKey:@"ScalingModelIndex"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADMLScalingRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_scaledImageWidth forKey:{@"ScaledImageWidth", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_scaledImageHeight forKey:@"ScaledImageHeight"];
  [v4 encodeInteger:self->_scalingModelIndex forKey:@"ScalingModelIndex"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  [v3 appendFormat:@", scaledImageWidth: %lu", self->_scaledImageWidth];
  [v3 appendFormat:@", scaledImageHeight: %lu", self->_scaledImageHeight];
  [v3 appendFormat:@", scalingModelIndex: %lu", self->_scalingModelIndex];
  v6 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v6];

  return v3;
}

@end