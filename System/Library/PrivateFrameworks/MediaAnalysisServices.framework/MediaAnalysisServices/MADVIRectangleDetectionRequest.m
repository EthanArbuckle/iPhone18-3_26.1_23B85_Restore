@interface MADVIRectangleDetectionRequest
- (MADVIRectangleDetectionRequest)init;
- (MADVIRectangleDetectionRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIRectangleDetectionRequest

- (MADVIRectangleDetectionRequest)init
{
  v3.receiver = self;
  v3.super_class = MADVIRectangleDetectionRequest;
  result = [(MADVIRectangleDetectionRequest *)&v3 init];
  if (result)
  {
    result->_minimumAspectRatio = 0.5;
    result->_maximumAspectRatio = 1.0;
    result->_quadratureTolerance = 30.0;
    result->_minimumSize = 0.2;
    result->_minimumConfidence = 0.0;
    result->_maximumObservations = 1;
  }

  return result;
}

- (MADVIRectangleDetectionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADVIRectangleDetectionRequest;
  v5 = [(MADRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeFloatForKey:@"MinimumAspectRatio"];
    v5->_minimumAspectRatio = v6;
    [v4 decodeFloatForKey:@"MaximumAspectRatio"];
    v5->_maximumAspectRatio = v7;
    [v4 decodeFloatForKey:@"QuadratureTolerance"];
    v5->_quadratureTolerance = v8;
    [v4 decodeFloatForKey:@"MinimumSize"];
    v5->_minimumSize = v9;
    [v4 decodeFloatForKey:@"MinimumConfidence"];
    v5->_minimumConfidence = v10;
    v5->_maximumObservations = [v4 decodeIntegerForKey:@"MaximumObservations"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = MADVIRectangleDetectionRequest;
  v4 = a3;
  [(MADRequest *)&v10 encodeWithCoder:v4];
  *&v5 = self->_minimumAspectRatio;
  [v4 encodeFloat:@"MinimumAspectRatio" forKey:{v5, v10.receiver, v10.super_class}];
  *&v6 = self->_maximumAspectRatio;
  [v4 encodeFloat:@"MaximumAspectRatio" forKey:v6];
  *&v7 = self->_quadratureTolerance;
  [v4 encodeFloat:@"QuadratureTolerance" forKey:v7];
  *&v8 = self->_minimumSize;
  [v4 encodeFloat:@"MinimumSize" forKey:v8];
  *&v9 = self->_minimumConfidence;
  [v4 encodeFloat:@"MinimumConfidence" forKey:v9];
  [v4 encodeInteger:self->_maximumObservations forKey:@"MaximumObservations"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"minimumAspectRatio: %0.2f, ", self->_minimumAspectRatio];
  [v3 appendFormat:@"maximumAspectRatio: %0.2f, ", self->_maximumAspectRatio];
  [v3 appendFormat:@"quadratureTolerance: %0.2f, ", self->_quadratureTolerance];
  [v3 appendFormat:@"minimumSize: %0.2f, ", self->_minimumSize];
  [v3 appendFormat:@"minimumConfidence: %0.2f, ", self->_minimumConfidence];
  [v3 appendFormat:@"maximumObservations: %lu, ", self->_maximumObservations];
  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end