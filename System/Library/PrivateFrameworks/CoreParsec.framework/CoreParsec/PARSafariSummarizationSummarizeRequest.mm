@interface PARSafariSummarizationSummarizeRequest
- (PARSafariSummarizationSummarizeRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSafariSummarizationSummarizeRequest

- (PARSafariSummarizationSummarizeRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PARSafariSummarizationSummarizeRequest;
  v5 = [(PARRequest *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    localeString = v5->_localeString;
    v5->_localeString = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARSafariSummarizationSummarizeRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_urlString forKey:{@"urlString", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_localeString forKey:@"locale"];
}

@end