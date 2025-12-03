@interface MADVIRectangleDetectionRequest
- (MADVIRectangleDetectionRequest)init;
- (MADVIRectangleDetectionRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MADVIRectangleDetectionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADVIRectangleDetectionRequest;
  v5 = [(MADRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"MinimumAspectRatio"];
    v5->_minimumAspectRatio = v6;
    [coderCopy decodeFloatForKey:@"MaximumAspectRatio"];
    v5->_maximumAspectRatio = v7;
    [coderCopy decodeFloatForKey:@"QuadratureTolerance"];
    v5->_quadratureTolerance = v8;
    [coderCopy decodeFloatForKey:@"MinimumSize"];
    v5->_minimumSize = v9;
    [coderCopy decodeFloatForKey:@"MinimumConfidence"];
    v5->_minimumConfidence = v10;
    v5->_maximumObservations = [coderCopy decodeIntegerForKey:@"MaximumObservations"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = MADVIRectangleDetectionRequest;
  coderCopy = coder;
  [(MADRequest *)&v10 encodeWithCoder:coderCopy];
  *&v5 = self->_minimumAspectRatio;
  [coderCopy encodeFloat:@"MinimumAspectRatio" forKey:{v5, v10.receiver, v10.super_class}];
  *&v6 = self->_maximumAspectRatio;
  [coderCopy encodeFloat:@"MaximumAspectRatio" forKey:v6];
  *&v7 = self->_quadratureTolerance;
  [coderCopy encodeFloat:@"QuadratureTolerance" forKey:v7];
  *&v8 = self->_minimumSize;
  [coderCopy encodeFloat:@"MinimumSize" forKey:v8];
  *&v9 = self->_minimumConfidence;
  [coderCopy encodeFloat:@"MinimumConfidence" forKey:v9];
  [coderCopy encodeInteger:self->_maximumObservations forKey:@"MaximumObservations"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"minimumAspectRatio: %0.2f, ", self->_minimumAspectRatio];
  [string appendFormat:@"maximumAspectRatio: %0.2f, ", self->_maximumAspectRatio];
  [string appendFormat:@"quadratureTolerance: %0.2f, ", self->_quadratureTolerance];
  [string appendFormat:@"minimumSize: %0.2f, ", self->_minimumSize];
  [string appendFormat:@"minimumConfidence: %0.2f, ", self->_minimumConfidence];
  [string appendFormat:@"maximumObservations: %lu, ", self->_maximumObservations];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end