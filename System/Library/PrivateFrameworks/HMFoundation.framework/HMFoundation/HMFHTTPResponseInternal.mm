@interface HMFHTTPResponseInternal
- (HMFHTTPResponseInternal)init;
- (HMFHTTPResponseInternal)initWithStatusCode:(int64_t)code headerFields:(id)fields body:(id)body activity:(id)activity;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setHeaderValue:(id)value forHeaderKey:(id)key;
@end

@implementation HMFHTTPResponseInternal

- (HMFHTTPResponseInternal)init
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

- (HMFHTTPResponseInternal)initWithStatusCode:(int64_t)code headerFields:(id)fields body:(id)body activity:(id)activity
{
  fieldsCopy = fields;
  bodyCopy = body;
  activityCopy = activity;
  v20.receiver = self;
  v20.super_class = HMFHTTPResponseInternal;
  v13 = [(HMFHTTPResponseInternal *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_statusCode = code;
    v15 = [fieldsCopy copy];
    headerFields = v14->_headerFields;
    v14->_headerFields = v15;

    v17 = [bodyCopy copy];
    body = v14->_body;
    v14->_body = v17;

    objc_storeStrong(&v14->_activity, activity);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithStatusCode:headerFields:body:activity:", 0, MEMORY[0x277CBEC10], 0, 0}];
  if (v5)
  {
    v5[2] = [(HMFHTTPResponseInternal *)self statusCode];
    headerFields = [(HMFHTTPResponseInternal *)self headerFields];
    v7 = [headerFields copyWithZone:zone];
    v8 = v5[3];
    v5[3] = v7;

    body = [(HMFHTTPResponseInternal *)self body];
    v10 = [body copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;
  }

  return v5;
}

- (void)setHeaderValue:(id)value forHeaderKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  headerFields = [(HMFHTTPResponseInternal *)self headerFields];
  v8 = [headerFields mutableCopy];

  if (keyCopy)
  {
    if (valueCopy)
    {
      [v8 setObject:valueCopy forKey:keyCopy];
    }

    else
    {
      [v8 removeObjectForKey:keyCopy];
    }
  }

  v9 = [v8 copy];
  headerFields = self->_headerFields;
  self->_headerFields = v9;
}

@end