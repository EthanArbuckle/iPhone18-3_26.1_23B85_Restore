@interface MADVIMachineReadableCodeDetectionRequest
- (MADVIMachineReadableCodeDetectionRequest)initWithCoder:(id)coder;
- (MADVIMachineReadableCodeDetectionRequest)initWithSymbologies:(id)symbologies;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIMachineReadableCodeDetectionRequest

- (MADVIMachineReadableCodeDetectionRequest)initWithSymbologies:(id)symbologies
{
  symbologiesCopy = symbologies;
  v9.receiver = self;
  v9.super_class = MADVIMachineReadableCodeDetectionRequest;
  v5 = [(MADVIMachineReadableCodeDetectionRequest *)&v9 init];
  if (v5)
  {
    v6 = [symbologiesCopy copy];
    symbologies = v5->_symbologies;
    v5->_symbologies = v6;
  }

  return v5;
}

- (MADVIMachineReadableCodeDetectionRequest)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADVIMachineReadableCodeDetectionRequest;
  v5 = [(MADRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Symbologies"];
    symbologies = v5->_symbologies;
    v5->_symbologies = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVIMachineReadableCodeDetectionRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_symbologies forKey:{@"Symbologies", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"symbologies: %@, ", self->_symbologies];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end