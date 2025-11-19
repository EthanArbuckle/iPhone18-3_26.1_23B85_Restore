@interface HMFHTTPRequestHandler
- (HMFHTTPRequestHandler)init;
- (HMFHTTPRequestHandler)initWithMethodPredicate:(id)a3 URLPredicate:(id)a4 matchBlock:(id)a5;
@end

@implementation HMFHTTPRequestHandler

- (HMFHTTPRequestHandler)init
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

- (HMFHTTPRequestHandler)initWithMethodPredicate:(id)a3 URLPredicate:(id)a4 matchBlock:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v22 = HMFGetLogIdentifier(v18);
    *buf = 138543362;
    v28 = v22;
    v23 = "%{public}@Parameter is requred: 'methodPredicate'";
LABEL_16:
    _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);

    goto LABEL_17;
  }

  if (![HMFHTTPRequestHandler _isValidMethodPrediate:v8])
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v22 = HMFGetLogIdentifier(v18);
    *buf = 138543362;
    v28 = v22;
    v23 = "%{public}@Invalid method predicate";
    goto LABEL_16;
  }

  if (!v9)
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v22 = HMFGetLogIdentifier(v18);
    *buf = 138543362;
    v28 = v22;
    v23 = "%{public}@Parameter is requred: 'URLPredicate'";
    goto LABEL_16;
  }

  if (![HMFHTTPRequestHandler _isValidURLPredicate:v9])
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier(v18);
      *buf = 138543362;
      v28 = v22;
      v23 = "%{public}@Invalid URL predicate";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v20);
    v19 = 0;
    goto LABEL_18;
  }

  v26.receiver = self;
  v26.super_class = HMFHTTPRequestHandler;
  v11 = [(HMFHTTPRequestHandler *)&v26 init];
  if (v11)
  {
    v12 = [v8 copy];
    methodPredicate = v11->_methodPredicate;
    v11->_methodPredicate = v12;

    v14 = [v9 copy];
    URLPredicate = v11->_URLPredicate;
    v11->_URLPredicate = v14;

    v16 = [v10 copy];
    matchBlock = v11->_matchBlock;
    v11->_matchBlock = v16;
  }

  v18 = v11;
  v19 = v18;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

@end