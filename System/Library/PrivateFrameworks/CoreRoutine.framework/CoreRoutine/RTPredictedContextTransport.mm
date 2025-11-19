@interface RTPredictedContextTransport
- (BOOL)isEqual:(id)a3;
- (RTPredictedContextTransport)initWithCoder:(id)a3;
- (RTPredictedContextTransport)initWithTransportMode:(int64_t)a3 probability:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTPredictedContextTransport

- (RTPredictedContextTransport)initWithTransportMode:(int64_t)a3 probability:(double)a4
{
  v7.receiver = self;
  v7.super_class = RTPredictedContextTransport;
  result = [(RTPredictedContextTransport *)&v7 init];
  if (result)
  {
    result->_transportMode = a3;
    result->_probability = a4;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  transportMode = self->_transportMode;
  v5 = a3;
  [v5 encodeInteger:transportMode forKey:@"transportMode"];
  [v5 encodeDouble:@"probability" forKey:self->_probability];
}

- (RTPredictedContextTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RTPredictedContextTransport;
  v5 = [(RTPredictedContextTransport *)&v8 init];
  if (v5)
  {
    v5->_transportMode = [v4 decodeIntegerForKey:@"transportMode"];
    [v4 decodeDoubleForKey:@"probability"];
    v5->_probability = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RTPredictedContextTransport alloc];
  transportMode = self->_transportMode;
  probability = self->_probability;

  return [(RTPredictedContextTransport *)v4 initWithTransportMode:transportMode probability:probability];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(RTPredictedContextTransport *)self transportMode];
    if (v7 == [(RTPredictedContextTransport *)v6 transportMode])
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
  v4 = [(RTPredictedContextTransport *)self transportMode];
  [(RTPredictedContextTransport *)self probability];
  return [v3 stringWithFormat:@"predictedTransportMode, %lu, probability, %.2f", v4, v5];
}

@end