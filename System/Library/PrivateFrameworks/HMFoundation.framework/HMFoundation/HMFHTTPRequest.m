@interface HMFHTTPRequest
- (HMFHTTPRequest)init;
- (HMFHTTPRequest)initWithInternalRequest:(id)a3;
- (NSData)body;
- (NSDictionary)headerFields;
- (NSString)method;
- (NSURL)URL;
- (NSURLRequest)urlRequest;
- (id)attributeDescriptions;
- (id)responseWithStatusCode:(int64_t)a3;
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

- (HMFHTTPRequest)initWithInternalRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMFHTTPRequest;
  v6 = [(HMFHTTPRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_internal, a3);
    v7->_timeoutInterval = 60.0;
  }

  return v7;
}

- (id)attributeDescriptions
{
  v19[4] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [(HMFHTTPRequest *)self URL];
  v5 = [v4 absoluteString];
  v6 = [(HMFAttributeDescription *)v3 initWithName:@"URL" value:v5];
  v19[0] = v6;
  v7 = [HMFAttributeDescription alloc];
  v8 = [(HMFHTTPRequest *)self method];
  v9 = [(HMFAttributeDescription *)v7 initWithName:@"Method" value:v8];
  v19[1] = v9;
  v10 = [HMFAttributeDescription alloc];
  v11 = [(HMFHTTPRequest *)self headerFields];
  v12 = [(HMFAttributeDescription *)v10 initWithName:@"Headers" value:v11];
  v19[2] = v12;
  v13 = [HMFAttributeDescription alloc];
  v14 = [(HMFHTTPRequest *)self body];
  v15 = [(HMFAttributeDescription *)v13 initWithName:@"Body" value:v14 options:1 formatter:0];
  v19[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)responseWithStatusCode:(int64_t)a3
{
  v5 = [(HMFHTTPRequest *)self internal];
  v6 = [v5 responseWithStatusCode:a3];

  v7 = [[HMFHTTPResponse alloc] initWithRequest:self internalResponse:v6];

  return v7;
}

- (NSURL)URL
{
  v2 = [(HMFHTTPRequest *)self internal];
  v3 = [v2 URL];

  return v3;
}

- (NSString)method
{
  v2 = [(HMFHTTPRequest *)self internal];
  v3 = [v2 method];

  return v3;
}

- (NSDictionary)headerFields
{
  v2 = [(HMFHTTPRequest *)self internal];
  v3 = [v2 headerFields];

  return v3;
}

- (NSData)body
{
  v2 = [(HMFHTTPRequest *)self internal];
  v3 = [v2 body];

  return v3;
}

- (NSURLRequest)urlRequest
{
  v3 = objc_alloc(MEMORY[0x277CBAB50]);
  v4 = [(HMFHTTPRequest *)self URL];
  [(HMFHTTPRequest *)self timeoutInterval];
  v5 = [v3 initWithURL:v4 cachePolicy:1 timeoutInterval:?];

  v6 = [(HMFHTTPRequest *)self body];
  [v5 setHTTPBody:v6];

  v7 = [(HMFHTTPRequest *)self method];
  [v5 setHTTPMethod:v7];

  v8 = [(HMFHTTPRequest *)self headerFields];
  [v5 setAllHTTPHeaderFields:v8];

  v9 = [v5 copy];

  return v9;
}

@end