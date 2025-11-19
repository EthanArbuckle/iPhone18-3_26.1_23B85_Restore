@interface PARSafariSummarizationPrefetchRequest
- (PARSafariSummarizationPrefetchRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSafariSummarizationPrefetchRequest

- (PARSafariSummarizationPrefetchRequest)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PARSafariSummarizationPrefetchRequest;
  v5 = [(PARRequest *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"urlVariants"];
    urlVariants = v5->_urlVariants;
    v5->_urlVariants = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    urlString = v5->_urlString;
    v5->_urlString = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    localeString = v5->_localeString;
    v5->_localeString = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARSafariSummarizationPrefetchRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_urlString forKey:{@"urlString", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_urlVariants forKey:@"urlVariants"];
  [v4 encodeObject:self->_localeString forKey:@"locale"];
}

@end