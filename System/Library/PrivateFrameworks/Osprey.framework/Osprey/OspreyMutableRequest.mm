@interface OspreyMutableRequest
- (OspreyMutableRequest)initWithMethodName:(id)a3;
- (id)buildInternalRequest;
- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4;
@end

@implementation OspreyMutableRequest

- (OspreyMutableRequest)initWithMethodName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OspreyMutableRequest;
  v5 = [(OspreyMutableRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    methodName = v5->_methodName;
    v5->_methodName = v6;

    *&v5->_enableDeviceAuthentication = 16843009;
  }

  return v5;
}

- (void)setValue:(id)a3 forHTTPHeaderField:(id)a4
{
  v10 = a3;
  v6 = a4;
  additionalHeaders = self->_additionalHeaders;
  if (!additionalHeaders)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_additionalHeaders;
    self->_additionalHeaders = v8;

    additionalHeaders = self->_additionalHeaders;
  }

  [(NSMutableDictionary *)additionalHeaders setObject:v10 forKey:v6];
}

- (id)buildInternalRequest
{
  v3 = [OspreyRequest alloc];
  v4 = [(OspreyMutableRequest *)self methodName];
  v5 = [(OspreyRequest *)v3 initWithMethodName:v4];

  if (self->_clientTraceIdentifier)
  {
    [(OspreyRequest *)v5 setClientTraceId:?];
  }

  else
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    [(OspreyRequest *)v5 setClientTraceId:v7];
  }

  [(OspreyRequest *)v5 setEnableDeviceAuthentication:self->_enableDeviceAuthentication];
  [(OspreyRequest *)v5 setAllowsCellularAccess:self->_allowsCellularAccess];
  [(OspreyRequest *)v5 setUseCompression:[(OspreyMutableRequest *)self isCompressionEnabled]];
  [(OspreyRequest *)v5 setForceHTTPv2:[(OspreyMutableRequest *)self forceHTTPv2]];
  if (self->_additionalHeaders)
  {
    [(OspreyRequest *)v5 setHeaders:?];
  }

  return v5;
}

@end