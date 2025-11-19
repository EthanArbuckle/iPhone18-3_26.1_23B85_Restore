@interface MADVIMachineReadableCodeDetectionRequest
- (MADVIMachineReadableCodeDetectionRequest)initWithCoder:(id)a3;
- (MADVIMachineReadableCodeDetectionRequest)initWithSymbologies:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIMachineReadableCodeDetectionRequest

- (MADVIMachineReadableCodeDetectionRequest)initWithSymbologies:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADVIMachineReadableCodeDetectionRequest;
  v5 = [(MADVIMachineReadableCodeDetectionRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    symbologies = v5->_symbologies;
    v5->_symbologies = v6;
  }

  return v5;
}

- (MADVIMachineReadableCodeDetectionRequest)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADVIMachineReadableCodeDetectionRequest;
  v5 = [(MADRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Symbologies"];
    symbologies = v5->_symbologies;
    v5->_symbologies = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIMachineReadableCodeDetectionRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_symbologies forKey:{@"Symbologies", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"symbologies: %@, ", self->_symbologies];
  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end