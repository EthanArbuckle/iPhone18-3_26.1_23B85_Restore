@interface MRUpdateActiveSystemEndpointResponse
- (MRUpdateActiveSystemEndpointResponse)initWithError:(id)a3;
- (id)description;
@end

@implementation MRUpdateActiveSystemEndpointResponse

- (MRUpdateActiveSystemEndpointResponse)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUpdateActiveSystemEndpointResponse;
  v6 = [(MRUpdateActiveSystemEndpointResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_error, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MRUpdateActiveSystemEndpointResponse *)self error];
  v6 = [v3 stringWithFormat:@"<%@: %p error: %@>", v4, self, v5];

  return v6;
}

@end