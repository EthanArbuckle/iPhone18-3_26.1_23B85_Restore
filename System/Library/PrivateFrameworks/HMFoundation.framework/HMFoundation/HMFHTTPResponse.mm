@interface HMFHTTPResponse
- (HMFHTTPResponse)init;
- (HMFHTTPResponse)initWithRequest:(id)a3 internalResponse:(id)a4;
- (NSData)body;
- (NSDictionary)headerFields;
- (id)attributeDescriptions;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (HMFHTTPResponse)initWithRequest:(id)a3 internalResponse:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMFHTTPResponse;
  v9 = [(HMFHTTPResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_internal, a4);
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
  v7 = [(HMFHTTPResponse *)self headerFields];
  v8 = [(HMFAttributeDescription *)v6 initWithName:@"Headers" value:v7];
  v18[1] = v8;
  v9 = [HMFAttributeDescription alloc];
  v10 = [(HMFHTTPResponse *)self body];
  v11 = [(HMFAttributeDescription *)v9 initWithName:@"Body" value:v10 options:1 formatter:0];
  v18[2] = v11;
  v12 = [HMFAttributeDescription alloc];
  v13 = [(HMFHTTPResponse *)self request];
  v14 = [(HMFAttributeDescription *)v12 initWithName:@"Request" value:v13 options:1 formatter:0];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMFMutableHTTPResponse allocWithZone:a3];
  v5 = [(HMFHTTPResponse *)self request];
  v6 = [(HMFHTTPResponse *)self internal];
  v7 = [v6 copy];
  v8 = [(HMFHTTPResponse *)v4 initWithRequest:v5 internalResponse:v7];

  return v8;
}

- (int64_t)statusCode
{
  v2 = [(HMFHTTPResponse *)self internal];
  v3 = [v2 statusCode];

  return v3;
}

- (NSDictionary)headerFields
{
  v2 = [(HMFHTTPResponse *)self internal];
  v3 = [v2 headerFields];

  return v3;
}

- (NSData)body
{
  v2 = [(HMFHTTPResponse *)self internal];
  v3 = [v2 body];

  return v3;
}

@end