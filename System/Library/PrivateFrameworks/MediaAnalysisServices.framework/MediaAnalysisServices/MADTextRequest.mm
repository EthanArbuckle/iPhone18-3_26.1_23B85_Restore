@interface MADTextRequest
- (MADTextRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADTextRequest

- (MADTextRequest)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MADTextRequest;
  v5 = [(MADTextRequest *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Results"];
    results = v5->_results;
    v5->_results = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Error"];
    error = v5->_error;
    v5->_error = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  results = self->_results;
  coderCopy = coder;
  [coderCopy encodeObject:results forKey:@"Results"];
  [coderCopy encodeObject:self->_error forKey:@"Error"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"results: %@, ", self->_results];
  [string appendFormat:@"error: %@>", self->_error];

  return string;
}

@end