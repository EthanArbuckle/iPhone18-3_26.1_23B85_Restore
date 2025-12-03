@interface HMFHTTPRequest
- (HMFHTTPRequest)init;
- (HMFHTTPRequest)initWithInternalRequest:(id)request;
- (NSData)body;
- (NSDictionary)headerFields;
- (NSString)method;
- (NSURL)URL;
- (NSURLRequest)urlRequest;
- (id)attributeDescriptions;
- (id)responseWithStatusCode:(int64_t)code;
@end

@implementation HMFHTTPRequest

- (HMFHTTPRequest)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMFHTTPRequest)initWithInternalRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = HMFHTTPRequest;
  v6 = [(HMFHTTPRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internal, request);
    v7->_timeoutInterval = 60.0;
  }

  return v7;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFHTTPRequest *)self URL];
  absoluteString = [v4 absoluteString];
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"URL" value:absoluteString];
  v19[0] = v6;
  v7 = [HMFAttributeDescription alloc];
  method = [(HMFHTTPRequest *)self method];
  v9 = [(HMFAttributeDescription *)v7 initWithName:@"Method" value:method];
  v19[1] = v9;
  v10 = [HMFAttributeDescription alloc];
  headerFields = [(HMFHTTPRequest *)self headerFields];
  v12 = [(HMFAttributeDescription *)v10 initWithName:@"Headers" value:headerFields];
  v19[2] = v12;
  v13 = [HMFAttributeDescription alloc];
  body = [(HMFHTTPRequest *)self body];
  v15 = [(HMFAttributeDescription *)v13 initWithName:@"Body" value:body options:1 formatter:0];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)responseWithStatusCode:(int64_t)code
{
  internal = [(HMFHTTPRequest *)self internal];
  v6 = [internal responseWithStatusCode:code];

  v7 = [[HMFHTTPResponse alloc] initWithRequest:self internalResponse:v6];

  return v7;
}

- (NSURL)URL
{
  internal = [(HMFHTTPRequest *)self internal];
  v3 = [internal URL];

  return v3;
}

- (NSString)method
{
  internal = [(HMFHTTPRequest *)self internal];
  method = [internal method];

  return method;
}

- (NSDictionary)headerFields
{
  internal = [(HMFHTTPRequest *)self internal];
  headerFields = [internal headerFields];

  return headerFields;
}

- (NSData)body
{
  internal = [(HMFHTTPRequest *)self internal];
  body = [internal body];

  return body;
}

- (NSURLRequest)urlRequest
{
  v3 = objc_alloc(MEMORY[0x277CBAB50]);
  v4 = [(HMFHTTPRequest *)self URL];
  [(HMFHTTPRequest *)self timeoutInterval];
  v5 = [v3 initWithURL:v4 cachePolicy:1 timeoutInterval:?];

  body = [(HMFHTTPRequest *)self body];
  [v5 setHTTPBody:body];

  method = [(HMFHTTPRequest *)self method];
  [v5 setHTTPMethod:method];

  headerFields = [(HMFHTTPRequest *)self headerFields];
  [v5 setAllHTTPHeaderFields:headerFields];

  v9 = [v5 copy];

  return v9;
}

@end