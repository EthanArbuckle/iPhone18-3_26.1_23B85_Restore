@interface PARMoreResultsRequest
- (PARMoreResultsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARMoreResultsRequest

- (PARMoreResultsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PARMoreResultsRequest;
  v5 = [(PARRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"moreResults"];
    moreResultsURL = v5->_moreResultsURL;
    v5->_moreResultsURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PARMoreResultsRequest;
  v4 = a3;
  [(PARRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_moreResultsURL forKey:{@"moreResults", v5.receiver, v5.super_class}];
}

@end