@interface _HMFCFHTTPServerResponse
- (_CFHTTPServerResponse)responseRef;
- (_HMFCFHTTPServerResponse)initWithRequest:(id)a3 statusCode:(int64_t)a4;
- (id)attributeDescriptions;
- (id)body;
- (id)copyWithZone:(_NSZone *)a3;
- (id)headerFields;
- (void)dealloc;
- (void)setBody:(id)a3;
- (void)setHeaderValue:(id)a3 forHeaderKey:(id)a4;
@end

@implementation _HMFCFHTTPServerResponse

- (_HMFCFHTTPServerResponse)initWithRequest:(id)a3 statusCode:(int64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [HMFActivity alloc];
  v9 = [v7 activity];
  v10 = [(HMFActivity *)v8 initWithName:@"HTTPResponse" parent:v9 options:1];

  v24.receiver = self;
  v24.super_class = _HMFCFHTTPServerResponse;
  v11 = [(HMFHTTPResponseInternal *)&v24 initWithStatusCode:a4 headerFields:MEMORY[0x277CBEC10] body:0 activity:v10];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v11->_request, a3);
  [v7 requestRef];
  ResponseMessage = _CFHTTPServerRequestCreateResponseMessage();
  if (ResponseMessage)
  {
    v14 = ResponseMessage;
    v15 = [[_HMFCFHTTPMessage alloc] initWithMessageRef:ResponseMessage];
    response = v12->_response;
    v12->_response = v15;

    CFRelease(v14);
LABEL_4:
    v17 = v12;
    goto LABEL_8;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v12;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier(v19);
    *buf = 138543362;
    v26 = v21;
    _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to create message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 0;
LABEL_8:

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  responseRef = self->_responseRef;
  if (responseRef)
  {
    CFRelease(responseRef);
  }

  v4.receiver = self;
  v4.super_class = _HMFCFHTTPServerResponse;
  [(_HMFCFHTTPServerResponse *)&v4 dealloc];
}

- (id)attributeDescriptions
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(_HMFCFHTTPServerResponse *)self request];
  v6 = [v4 stringWithFormat:@"%@", v5];
  v7 = [(HMFAttributeDescription *)v3 initWithName:@"Request" value:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = _HMFCFHTTPServerResponse;
  v4 = [(HMFHTTPResponseInternal *)&v10 copyWithZone:a3];
  if (v4)
  {
    v5 = [(_HMFCFHTTPServerResponse *)self request];
    v6 = v4[6];
    v4[6] = v5;

    v7 = [(_HMFCFHTTPServerResponse *)self response];
    v8 = v4[8];
    v4[8] = v7;
  }

  return v4;
}

- (id)headerFields
{
  v2 = [(_HMFCFHTTPServerResponse *)self response];
  v3 = [v2 headerFields];

  return v3;
}

- (void)setHeaderValue:(id)a3 forHeaderKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_HMFCFHTTPServerResponse *)self response];
  [v8 setValue:v7 forHeaderField:v6];
}

- (id)body
{
  v3 = [(_HMFCFHTTPServerResponse *)self response];

  if (v3)
  {
    v4 = [(_HMFCFHTTPServerResponse *)self response];
    v5 = [v4 body];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setBody:(id)a3
{
  v6 = a3;
  v4 = [(_HMFCFHTTPServerResponse *)self response];

  if (v4)
  {
    v5 = [(_HMFCFHTTPServerResponse *)self response];
    [v5 setBody:v6];
  }
}

- (_CFHTTPServerResponse)responseRef
{
  result = self->_responseRef;
  if (!result)
  {
    v4 = [(_HMFCFHTTPServerResponse *)self request];
    [v4 requestRef];
    v5 = [(_HMFCFHTTPServerResponse *)self response];
    [v5 message];
    v6 = [(_HMFCFHTTPServerResponse *)self response];
    [v6 body];
    self->_responseRef = _CFHTTPServerResponseCreateWithData();

    [(_HMFCFHTTPServerResponse *)self responseRef];
    _CFHTTPServerResponseSetClient();
    return self->_responseRef;
  }

  return result;
}

@end