@interface MADRichLabelClassificationRequest
- (MADRichLabelClassificationRequest)initWithCoder:(id)a3;
- (MADRichLabelClassificationResult)richLabelResult;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADRichLabelClassificationRequest

- (MADRichLabelClassificationRequest)initWithCoder:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADRichLabelClassificationRequest;
  v5 = [(MADRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Domains"];
    domains = v5->_domains;
    v5->_domains = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADRichLabelClassificationRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_domains forKey:{@"Domains", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  if (self->_domains)
  {
    [v3 appendFormat:@"domains: %@, ", self->_domains];
  }

  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

- (MADRichLabelClassificationResult)richLabelResult
{
  v2 = [(MADRequest *)self results];
  v3 = [v2 firstObject];

  return v3;
}

@end