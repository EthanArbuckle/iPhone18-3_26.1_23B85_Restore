@interface PARSafariSummarizationSummarizeRequest
- (PARSafariSummarizationSummarizeRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSafariSummarizationSummarizeRequest

- (PARSafariSummarizationSummarizeRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PARSafariSummarizationSummarizeRequest;
  v5 = [(PARRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    urlString = v5->_urlString;
    v5->_urlString = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    localeString = v5->_localeString;
    v5->_localeString = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARSafariSummarizationSummarizeRequest;
  coderCopy = coder;
  [(PARRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_urlString forKey:{@"urlString", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_localeString forKey:@"locale"];
}

@end