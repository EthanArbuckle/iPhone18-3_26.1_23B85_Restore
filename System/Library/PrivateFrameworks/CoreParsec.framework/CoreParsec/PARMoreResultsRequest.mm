@interface PARMoreResultsRequest
- (PARMoreResultsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARMoreResultsRequest

- (PARMoreResultsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PARMoreResultsRequest;
  v5 = [(PARRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moreResults"];
    moreResultsURL = v5->_moreResultsURL;
    v5->_moreResultsURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PARMoreResultsRequest;
  coderCopy = coder;
  [(PARRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_moreResultsURL forKey:{@"moreResults", v5.receiver, v5.super_class}];
}

@end