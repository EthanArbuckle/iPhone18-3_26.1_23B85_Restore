@interface RTPredictedContextTransport
- (BOOL)isEqual:(id)equal;
- (RTPredictedContextTransport)initWithCoder:(id)coder;
- (RTPredictedContextTransport)initWithTransportMode:(int64_t)mode probability:(double)probability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTPredictedContextTransport

- (RTPredictedContextTransport)initWithTransportMode:(int64_t)mode probability:(double)probability
{
  v7.receiver = self;
  v7.super_class = RTPredictedContextTransport;
  result = [(RTPredictedContextTransport *)&v7 init];
  if (result)
  {
    result->_transportMode = mode;
    result->_probability = probability;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  transportMode = self->_transportMode;
  coderCopy = coder;
  [coderCopy encodeInteger:transportMode forKey:@"transportMode"];
  [coderCopy encodeDouble:@"probability" forKey:self->_probability];
}

- (RTPredictedContextTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RTPredictedContextTransport;
  v5 = [(RTPredictedContextTransport *)&v8 init];
  if (v5)
  {
    v5->_transportMode = [coderCopy decodeIntegerForKey:@"transportMode"];
    [coderCopy decodeDoubleForKey:@"probability"];
    v5->_probability = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RTPredictedContextTransport alloc];
  transportMode = self->_transportMode;
  probability = self->_probability;

  return [(RTPredictedContextTransport *)v4 initWithTransportMode:transportMode probability:probability];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    transportMode = [(RTPredictedContextTransport *)self transportMode];
    if (transportMode == [(RTPredictedContextTransport *)v6 transportMode])
    {
      [(RTPredictedContextTransport *)self probability];
      v9 = v8;
      [(RTPredictedContextTransport *)v6 probability];
      v11 = v9 == v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  transportMode = [(RTPredictedContextTransport *)self transportMode];
  [(RTPredictedContextTransport *)self probability];
  return [v3 stringWithFormat:@"predictedTransportMode, %lu, probability, %.2f", transportMode, v5];
}

@end