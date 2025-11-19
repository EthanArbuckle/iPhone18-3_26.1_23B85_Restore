@interface HMFHTTPResponseInternal
- (HMFHTTPResponseInternal)init;
- (HMFHTTPResponseInternal)initWithStatusCode:(int64_t)a3 headerFields:(id)a4 body:(id)a5 activity:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setHeaderValue:(id)a3 forHeaderKey:(id)a4;
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

- (HMFHTTPResponseInternal)initWithStatusCode:(int64_t)a3 headerFields:(id)a4 body:(id)a5 activity:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = HMFHTTPResponseInternal;
  v13 = [(HMFHTTPResponseInternal *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_statusCode = a3;
    v15 = [v10 copy];
    headerFields = v14->_headerFields;
    v14->_headerFields = v15;

    v17 = [v11 copy];
    body = v14->_body;
    v14->_body = v17;

    objc_storeStrong(&v14->_activity, a6);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithStatusCode:headerFields:body:activity:", 0, MEMORY[0x277CBEC10], 0, 0}];
  if (v5)
  {
    v5[2] = [(HMFHTTPResponseInternal *)self statusCode];
    v6 = [(HMFHTTPResponseInternal *)self headerFields];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[3];
    v5[3] = v7;

    v9 = [(HMFHTTPResponseInternal *)self body];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[4];
    v5[4] = v10;
  }

  return v5;
}

- (void)setHeaderValue:(id)a3 forHeaderKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(HMFHTTPResponseInternal *)self headerFields];
  v8 = [v7 mutableCopy];

  if (v6)
  {
    if (v11)
    {
      [v8 setObject:v11 forKey:v6];
    }

    else
    {
      [v8 removeObjectForKey:v6];
    }
  }

  v9 = [v8 copy];
  headerFields = self->_headerFields;
  self->_headerFields = v9;
}

@end