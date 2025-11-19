@interface _HMFCFHTTPServerRequest
- (_HMFCFHTTPServerConnection)connection;
- (_HMFCFHTTPServerRequest)init;
- (_HMFCFHTTPServerRequest)initWithConnection:(id)a3 requestRef:(_CFHTTPServerRequest *)a4;
- (id)URL;
- (id)attributeDescriptions;
- (id)body;
- (id)headerFields;
- (id)method;
- (id)responseWithStatusCode:(int64_t)a3;
- (void)dealloc;
- (void)setBody:(id)a3;
- (void)setHeaders:(id)a3;
- (void)setMethod:(id)a3;
- (void)setURL:(id)a3;
@end

@implementation _HMFCFHTTPServerRequest

- (_HMFCFHTTPServerRequest)init
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

- (_HMFCFHTTPServerRequest)initWithConnection:(id)a3 requestRef:(_CFHTTPServerRequest *)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _HMFCFHTTPServerRequest;
  v7 = [(HMFHTTPRequestInternal *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_connection, v6);
    v8->_requestRef = CFRetain(a4);
    v8->_bodyStream = _CFHTTPServerRequestCopyBodyStream();
    v9 = [MEMORY[0x277CBEB28] data];
    bodyData = v8->_bodyData;
    v8->_bodyData = v9;
  }

  return v8;
}

- (void)dealloc
{
  requestRef = self->_requestRef;
  if (requestRef)
  {
    CFRelease(requestRef);
    self->_requestRef = 0;
  }

  bodyStream = self->_bodyStream;
  if (bodyStream)
  {
    CFReadStreamClose(bodyStream);
    CFRelease(self->_bodyStream);
    self->_bodyStream = 0;
  }

  v5.receiver = self;
  v5.super_class = _HMFCFHTTPServerRequest;
  [(_HMFCFHTTPServerRequest *)&v5 dealloc];
}

- (id)attributeDescriptions
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [HMFAttributeDescription alloc];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", -[_HMFCFHTTPServerRequest requestRef](self, "requestRef")];
  v5 = [(HMFAttributeDescription *)v3 initWithName:@"Request" value:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)responseWithStatusCode:(int64_t)a3
{
  v3 = [[_HMFCFHTTPServerResponse alloc] initWithRequest:self statusCode:a3];

  return v3;
}

- (id)URL
{
  [(_HMFCFHTTPServerRequest *)self requestRef];
  v2 = *MEMORY[0x277CBAC40];
  v3 = _CFHTTPServerRequestCopyProperty();

  return v3;
}

- (id)method
{
  [(_HMFCFHTTPServerRequest *)self requestRef];
  v2 = *MEMORY[0x277CBAC30];
  v3 = _CFHTTPServerRequestCopyProperty();

  return v3;
}

- (id)headerFields
{
  [(_HMFCFHTTPServerRequest *)self requestRef];
  v2 = *MEMORY[0x277CBAC28];
  v3 = _CFHTTPServerRequestCopyProperty();
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 objectForKey:*MEMORY[0x277CBAC20]];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (id)body
{
  v3 = [(_HMFCFHTTPServerRequest *)self bodyData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(NSMutableData *)self->_bodyData copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setURL:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setMethod:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setHeaders:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setBody:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (_HMFCFHTTPServerConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end