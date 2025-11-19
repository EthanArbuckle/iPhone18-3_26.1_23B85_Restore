@interface _HMDSecureRemoteQueuedMessage
- (NSString)propertyDescription;
- (NSString)shortDescription;
- (_HMDSecureRemoteQueuedMessage)init;
- (_HMDSecureRemoteQueuedMessage)initWithMessage:(id)a3;
@end

@implementation _HMDSecureRemoteQueuedMessage

- (NSString)propertyDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(_HMDSecureRemoteQueuedMessage *)self message];
  v4 = [v2 stringWithFormat:@", Message = %@", v3];

  return v4;
}

- (NSString)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(_HMDSecureRemoteQueuedMessage *)self message];
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  v8 = [v3 stringWithFormat:@"%@ %@", v4, v7];

  return v8;
}

- (_HMDSecureRemoteQueuedMessage)initWithMessage:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = _HMDSecureRemoteQueuedMessage;
  v6 = [(_HMDSecureRemoteQueuedMessage *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
    [v5 timeout];
    if (v8 <= 0.0)
    {
      v10 = *&secureSessionMessageTimeout;
    }

    else
    {
      [v5 timeout];
      v10 = v9;
    }

    v11 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v10];
    timer = v7->_timer;
    v7->_timer = v11;
  }

  return v7;
}

- (_HMDSecureRemoteQueuedMessage)init
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

@end