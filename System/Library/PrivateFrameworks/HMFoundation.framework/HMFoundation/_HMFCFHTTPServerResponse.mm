@interface _HMFCFHTTPServerResponse
- (_CFHTTPServerResponse)responseRef;
- (_HMFCFHTTPServerResponse)initWithRequest:(id)request statusCode:(int64_t)code;
- (id)attributeDescriptions;
- (id)body;
- (id)copyWithZone:(_NSZone *)zone;
- (id)headerFields;
- (void)dealloc;
- (void)setBody:(id)body;
- (void)setHeaderValue:(id)value forHeaderKey:(id)key;
@end

@implementation _HMFCFHTTPServerResponse

- (_HMFCFHTTPServerResponse)initWithRequest:(id)request statusCode:(int64_t)code
{
  v27 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v8 = [HMFActivity alloc];
  activity = [requestCopy activity];
  v10 = [(HMFActivity *)v8 initWithName:@"HTTPResponse" parent:activity options:1];

  v24.receiver = self;
  v24.super_class = _HMFCFHTTPServerResponse;
  v11 = [(HMFHTTPResponseInternal *)&v24 initWithStatusCode:code headerFields:MEMORY[0x277CBEC10] body:0 activity:v10];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v11->_request, request);
  [requestCopy requestRef];
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
  request = [(_HMFCFHTTPServerResponse *)self request];
  v6 = [v4 stringWithFormat:@"%@", request];
  v7 = [(HMFAttributeDescription *)v3 initWithName:@"Request" value:v6];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = _HMFCFHTTPServerResponse;
  v4 = [(HMFHTTPResponseInternal *)&v10 copyWithZone:zone];
  if (v4)
  {
    request = [(_HMFCFHTTPServerResponse *)self request];
    v6 = v4[6];
    v4[6] = request;

    response = [(_HMFCFHTTPServerResponse *)self response];
    v8 = v4[8];
    v4[8] = response;
  }

  return v4;
}

- (id)headerFields
{
  response = [(_HMFCFHTTPServerResponse *)self response];
  headerFields = [response headerFields];

  return headerFields;
}

- (void)setHeaderValue:(id)value forHeaderKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  response = [(_HMFCFHTTPServerResponse *)self response];
  [response setValue:valueCopy forHeaderField:keyCopy];
}

- (id)body
{
  response = [(_HMFCFHTTPServerResponse *)self response];

  if (response)
  {
    response2 = [(_HMFCFHTTPServerResponse *)self response];
    body = [response2 body];
    v6 = [body copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setBody:(id)body
{
  bodyCopy = body;
  response = [(_HMFCFHTTPServerResponse *)self response];

  if (response)
  {
    response2 = [(_HMFCFHTTPServerResponse *)self response];
    [response2 setBody:bodyCopy];
  }
}

- (_CFHTTPServerResponse)responseRef
{
  result = self->_responseRef;
  if (!result)
  {
    request = [(_HMFCFHTTPServerResponse *)self request];
    [request requestRef];
    response = [(_HMFCFHTTPServerResponse *)self response];
    [response message];
    response2 = [(_HMFCFHTTPServerResponse *)self response];
    [response2 body];
    self->_responseRef = _CFHTTPServerResponseCreateWithData();

    [(_HMFCFHTTPServerResponse *)self responseRef];
    _CFHTTPServerResponseSetClient();
    return self->_responseRef;
  }

  return result;
}

@end