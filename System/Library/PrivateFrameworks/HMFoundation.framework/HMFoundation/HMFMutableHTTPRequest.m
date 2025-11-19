@interface HMFMutableHTTPRequest
- (HMFMutableHTTPRequest)initWithInternalRequest:(id)a3;
- (HMFMutableHTTPRequest)initWithURL:(id)a3 method:(id)a4 body:(id)a5 timeoutInterval:(double)a6;
- (id)responseWithStatusCode:(int64_t)a3;
- (void)setBody:(id)a3;
- (void)setHeaderValue:(id)a3 forHeaderKey:(id)a4;
@end

@implementation HMFMutableHTTPRequest

- (HMFMutableHTTPRequest)initWithInternalRequest:(id)a3
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"Test"];
  v5 = [(HMFMutableHTTPRequest *)self initWithURL:v4 method:@"Test" body:0 timeoutInterval:0.0];

  return v5;
}

- (HMFMutableHTTPRequest)initWithURL:(id)a3 method:(id)a4 body:(id)a5 timeoutInterval:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(HMFHTTPRequestInternal);
  v18.receiver = self;
  v18.super_class = HMFMutableHTTPRequest;
  v14 = [(HMFHTTPRequest *)&v18 initWithInternalRequest:v13];

  if (v14)
  {
    v15 = [(HMFHTTPRequest *)v14 internal];
    [v15 setURL:v10];

    v16 = [(HMFHTTPRequest *)v14 internal];
    [v16 setMethod:v11];

    [(HMFMutableHTTPRequest *)v14 setBody:v12];
    [(HMFHTTPRequest *)v14 setTimeoutInterval:a6];
  }

  return v14;
}

- (id)responseWithStatusCode:(int64_t)a3
{
  v5 = [(HMFHTTPRequest *)self internal];
  v6 = [v5 responseWithStatusCode:a3];

  v7 = [[HMFHTTPResponse alloc] initWithRequest:self internalResponse:v6];

  return v7;
}

- (void)setBody:(id)a3
{
  v4 = a3;
  v5 = [(HMFHTTPRequest *)self internal];
  [v5 setBody:v4];
}

- (void)setHeaderValue:(id)a3 forHeaderKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMFHTTPRequest *)self internal];
  [v8 setHeaderValue:v7 forHeaderKey:v6];
}

@end