@interface HMFHTTPResponse
- (HMFHTTPResponse)init;
- (HMFHTTPResponse)initWithRequest:(id)request internalResponse:(id)response;
- (NSData)body;
- (NSDictionary)headerFields;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)statusCode;
@end

@implementation HMFHTTPResponse

- (HMFHTTPResponse)init
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

- (HMFHTTPResponse)initWithRequest:(id)request internalResponse:(id)response
{
  requestCopy = request;
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = HMFHTTPResponse;
  v9 = [(HMFHTTPResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_internal, response);
  }

  return v10;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMFHTTPResponse statusCode](self, "statusCode")}];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Status Code" value:v4];
  v18[0] = v5;
  v6 = [HMFAttributeDescription alloc];
  headerFields = [(HMFHTTPResponse *)self headerFields];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Headers" value:headerFields];
  v18[1] = v8;
  v9 = [HMFAttributeDescription alloc];
  body = [(HMFHTTPResponse *)self body];
  v11 = [(HMFAttributeDescription *)v9 initWithName:@"Body" value:body options:1 formatter:0];
  v18[2] = v11;
  v12 = [HMFAttributeDescription alloc];
  request = [(HMFHTTPResponse *)self request];
  v14 = [(HMFAttributeDescription *)v12 initWithName:@"Request" value:request options:1 formatter:0];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMFMutableHTTPResponse allocWithZone:zone];
  request = [(HMFHTTPResponse *)self request];
  internal = [(HMFHTTPResponse *)self internal];
  v7 = [internal copy];
  v8 = [(HMFHTTPResponse *)v4 initWithRequest:request internalResponse:v7];

  return v8;
}

- (int64_t)statusCode
{
  internal = [(HMFHTTPResponse *)self internal];
  statusCode = [internal statusCode];

  return statusCode;
}

- (NSDictionary)headerFields
{
  internal = [(HMFHTTPResponse *)self internal];
  headerFields = [internal headerFields];

  return headerFields;
}

- (NSData)body
{
  internal = [(HMFHTTPResponse *)self internal];
  body = [internal body];

  return body;
}

@end