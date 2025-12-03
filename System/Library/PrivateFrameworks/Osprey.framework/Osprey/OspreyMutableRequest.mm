@interface OspreyMutableRequest
- (OspreyMutableRequest)initWithMethodName:(id)name;
- (id)buildInternalRequest;
- (void)setValue:(id)value forHTTPHeaderField:(id)field;
@end

@implementation OspreyMutableRequest

- (OspreyMutableRequest)initWithMethodName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = OspreyMutableRequest;
  v5 = [(OspreyMutableRequest *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    methodName = v5->_methodName;
    v5->_methodName = v6;

    *&v5->_enableDeviceAuthentication = 16843009;
  }

  return v5;
}

- (void)setValue:(id)value forHTTPHeaderField:(id)field
{
  valueCopy = value;
  fieldCopy = field;
  additionalHeaders = self->_additionalHeaders;
  if (!additionalHeaders)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_additionalHeaders;
    self->_additionalHeaders = v8;

    additionalHeaders = self->_additionalHeaders;
  }

  [(NSMutableDictionary *)additionalHeaders setObject:valueCopy forKey:fieldCopy];
}

- (id)buildInternalRequest
{
  v3 = [OspreyRequest alloc];
  methodName = [(OspreyMutableRequest *)self methodName];
  v5 = [(OspreyRequest *)v3 initWithMethodName:methodName];

  if (self->_clientTraceIdentifier)
  {
    [(OspreyRequest *)v5 setClientTraceId:?];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(OspreyRequest *)v5 setClientTraceId:uUIDString];
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