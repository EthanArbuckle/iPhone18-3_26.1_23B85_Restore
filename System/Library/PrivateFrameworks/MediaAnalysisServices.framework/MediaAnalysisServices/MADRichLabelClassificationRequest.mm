@interface MADRichLabelClassificationRequest
- (MADRichLabelClassificationRequest)initWithCoder:(id)coder;
- (MADRichLabelClassificationResult)richLabelResult;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADRichLabelClassificationRequest

- (MADRichLabelClassificationRequest)initWithCoder:(id)coder
{
  v13[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADRichLabelClassificationRequest;
  v5 = [(MADRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Domains"];
    domains = v5->_domains;
    v5->_domains = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADRichLabelClassificationRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_domains forKey:{@"Domains", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  if (self->_domains)
  {
    [string appendFormat:@"domains: %@, ", self->_domains];
  }

  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

- (MADRichLabelClassificationResult)richLabelResult
{
  results = [(MADRequest *)self results];
  firstObject = [results firstObject];

  return firstObject;
}

@end