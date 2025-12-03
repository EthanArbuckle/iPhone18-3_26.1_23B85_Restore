@interface MRUpdateActiveSystemEndpointResponse
- (MRUpdateActiveSystemEndpointResponse)initWithError:(id)error;
- (id)description;
@end

@implementation MRUpdateActiveSystemEndpointResponse

- (MRUpdateActiveSystemEndpointResponse)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = MRUpdateActiveSystemEndpointResponse;
  v6 = [(MRUpdateActiveSystemEndpointResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, error);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  error = [(MRUpdateActiveSystemEndpointResponse *)self error];
  v6 = [v3 stringWithFormat:@"<%@: %p error: %@>", v4, self, error];

  return v6;
}

@end