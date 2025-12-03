@interface HMFMutableHTTPRequest
- (HMFMutableHTTPRequest)initWithInternalRequest:(id)request;
- (HMFMutableHTTPRequest)initWithURL:(id)l method:(id)method body:(id)body timeoutInterval:(double)interval;
- (id)responseWithStatusCode:(int64_t)code;
- (void)setBody:(id)body;
- (void)setHeaderValue:(id)value forHeaderKey:(id)key;
@end

@implementation HMFMutableHTTPRequest

- (HMFMutableHTTPRequest)initWithInternalRequest:(id)request
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"Test"];
  v5 = [(HMFMutableHTTPRequest *)self initWithURL:v4 method:@"Test" body:0 timeoutInterval:0.0];

  return v5;
}

- (HMFMutableHTTPRequest)initWithURL:(id)l method:(id)method body:(id)body timeoutInterval:(double)interval
{
  lCopy = l;
  methodCopy = method;
  bodyCopy = body;
  v13 = objc_alloc_init(HMFHTTPRequestInternal);
  v18.receiver = self;
  v18.super_class = HMFMutableHTTPRequest;
  v14 = [(HMFHTTPRequest *)&v18 initWithInternalRequest:v13];

  if (v14)
  {
    internal = [(HMFHTTPRequest *)v14 internal];
    [internal setURL:lCopy];

    internal2 = [(HMFHTTPRequest *)v14 internal];
    [internal2 setMethod:methodCopy];

    [(HMFMutableHTTPRequest *)v14 setBody:bodyCopy];
    [(HMFHTTPRequest *)v14 setTimeoutInterval:interval];
  }

  return v14;
}

- (id)responseWithStatusCode:(int64_t)code
{
  internal = [(HMFHTTPRequest *)self internal];
  v6 = [internal responseWithStatusCode:code];

  v7 = [[HMFHTTPResponse alloc] initWithRequest:self internalResponse:v6];

  return v7;
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  internal = [(HMFHTTPRequest *)self internal];
  [internal setBody:bodyCopy];
}

- (void)setHeaderValue:(id)value forHeaderKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(HMFHTTPRequest *)self internal];
  [internal setHeaderValue:valueCopy forHeaderKey:keyCopy];
}

@end