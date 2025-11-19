@interface HAPBTLERequest
- (HAPBTLERequest)init;
- (HMFBlockOperation)operation;
- (id)_initWithCharacteristic:(id)a3 requestType:(unsigned __int8)a4 bodyData:(id)a5 shouldEncrypt:(BOOL)a6 timeoutInterval:(double)a7;
- (id)_serializeHeader;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)serialize;
- (id)shortDescription;
- (void)cancelWithError:(id)a3;
@end

@implementation HAPBTLERequest

- (HMFBlockOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

- (id)_serializeHeader
{
  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:6];
  v23 = [(HAPBTLERequest *)self type];
  [v3 appendBytes:&v23 length:1];
  v4 = [(HAPBTLERequest *)self identifier];
  v5 = [v4 unsignedCharValue];

  v22 = v5;
  [v3 appendBytes:&v22 length:1];
  if ([(HAPBTLERequest *)self type]== 6 || [(HAPBTLERequest *)self type]== 8)
  {
    v6 = [(HAPBTLERequest *)self service];
    v7 = [v6 instanceID];
    v8 = [v7 unsignedShortValue];

    v21 = v8;
    [v3 appendBytes:&v21 length:2];
  }

  else
  {
    v9 = [(HAPBTLERequest *)self characteristic];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 instanceID];
      v12 = [v11 unsignedShortValue];
    }

    else
    {
      v12 = 0;
    }

    v20 = v12;
    [v3 appendBytes:&v20 length:2];
  }

  v13 = [(HAPBTLERequest *)self body];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(HAPBTLERequest *)self body];
    v16 = [v15 length];

    v19 = v16;
    [v3 appendBytes:&v19 length:2];
  }

  v17 = [v3 copy];

  return v17;
}

- (id)serialize
{
  if ([(HAPBTLERequest *)self type]== 255)
  {
    v7 = [(HAPBTLERequest *)self body];
    v4 = [v7 mutableCopy];
  }

  else
  {
    v3 = [(HAPBTLERequest *)self _serializeHeader];
    v4 = [v3 mutableCopy];

    v5 = [(HAPBTLERequest *)self body];
    v6 = [v5 length];

    if (!v6)
    {
      goto LABEL_6;
    }

    v7 = [(HAPBTLERequest *)self body];
    [v4 appendData:v7];
  }

LABEL_6:

  return v4;
}

- (void)cancelWithError:(id)a3
{
  v6 = a3;
  if (![(HAPBTLERequest *)self isFinished])
  {
    v4 = [(HAPBTLERequest *)self operation];
    [v4 cancelWithError:v6];

    v5 = [(HAPBTLERequest *)self responseTimer];
    [v5 suspend];
  }
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v19 = MEMORY[0x277CCACA8];
  v5 = [(HAPBTLERequest *)self shortDescription];
  if (v3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v6 = &stru_283E79C60;
  }

  v7 = [(HAPBTLERequest *)self type]+ 1;
  if (v7 > 9u)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_2786D4FF8[v7];
  }

  [(HAPBTLERequest *)self timeoutInterval];
  v10 = v9;
  if ([(HAPBTLERequest *)self isEncrypted])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(HAPBTLERequest *)self identifier];
  v13 = [(HAPBTLERequest *)self body];
  v14 = [v13 length];
  v15 = [(HAPBTLERequest *)self characteristic];
  v16 = [v15 shortDescription];
  v17 = [v19 stringWithFormat:@"<%@%@, Type = %@, Timeout = %f, Encrypted = %@, Request Identifier = %@, Body Length = %tu, Characteristic = %@>", v5, v6, v8, v10, v11, v12, v14, v16];

  if (v3)
  {
  }

  return v17;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_initWithCharacteristic:(id)a3 requestType:(unsigned __int8)a4 bodyData:(id)a5 shouldEncrypt:(BOOL)a6 timeoutInterval:(double)a7
{
  v10 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = v14;
  if (v10)
  {
    if (a7 <= 0.0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v18;
        v19 = "%{public}@[HAPBTLERequest] A timeout > 0 is required";
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if ([v14 length] >= 0x10000)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v18;
        v19 = "%{public}@[HAPBTLERequest] The body length must not exceed 64KB";
LABEL_10:
        _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);

        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v31.receiver = self;
    v31.super_class = HAPBTLERequest;
    v23 = [(HAPBTLERequest *)&v31 init];
    if (v23)
    {
      v24 = [v13 service];
      service = v23->_service;
      v23->_service = v24;

      objc_storeStrong(&v23->_characteristic, a3);
      v23->_type = v10;
      v26 = [v15 copy];
      body = v23->_body;
      v23->_body = v26;

      v23->_encrypted = a6;
      v23->_timeoutInterval = a7;
      if (v10 != 255)
      {
        v28 = +[HAPBTLETransactionIdentifier randomTransactionIdentifier];
LABEL_18:
        identifier = v23->_identifier;
        v23->_identifier = v28;

        goto LABEL_19;
      }

      if ([v15 length] >= 2)
      {
        buf[0] = 0;
        [v15 getBytes:buf range:{1, 1}];
        v29 = [HAPBTLETransactionIdentifier alloc];
        v28 = [(HAPBTLETransactionIdentifier *)v29 initWithUnsignedCharValue:buf[0]];
        goto LABEL_18;
      }
    }

LABEL_19:
    self = v23;
    v20 = self;
    goto LABEL_12;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v18;
    v19 = "%{public}@[HAPBTLERequest] A request type is required";
    goto LABEL_10;
  }

LABEL_11:

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (HAPBTLERequest)init
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