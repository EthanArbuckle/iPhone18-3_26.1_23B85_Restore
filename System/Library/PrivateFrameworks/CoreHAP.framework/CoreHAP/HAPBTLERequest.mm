@interface HAPBTLERequest
- (HAPBTLERequest)init;
- (HMFBlockOperation)operation;
- (id)_initWithCharacteristic:(id)characteristic requestType:(unsigned __int8)type bodyData:(id)data shouldEncrypt:(BOOL)encrypt timeoutInterval:(double)interval;
- (id)_serializeHeader;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)serialize;
- (id)shortDescription;
- (void)cancelWithError:(id)error;
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
  type = [(HAPBTLERequest *)self type];
  [v3 appendBytes:&type length:1];
  identifier = [(HAPBTLERequest *)self identifier];
  unsignedCharValue = [identifier unsignedCharValue];

  v22 = unsignedCharValue;
  [v3 appendBytes:&v22 length:1];
  if ([(HAPBTLERequest *)self type]== 6 || [(HAPBTLERequest *)self type]== 8)
  {
    service = [(HAPBTLERequest *)self service];
    instanceID = [service instanceID];
    unsignedShortValue = [instanceID unsignedShortValue];

    v21 = unsignedShortValue;
    [v3 appendBytes:&v21 length:2];
  }

  else
  {
    characteristic = [(HAPBTLERequest *)self characteristic];
    v10 = characteristic;
    if (characteristic)
    {
      instanceID2 = [characteristic instanceID];
      unsignedShortValue2 = [instanceID2 unsignedShortValue];
    }

    else
    {
      unsignedShortValue2 = 0;
    }

    v20 = unsignedShortValue2;
    [v3 appendBytes:&v20 length:2];
  }

  body = [(HAPBTLERequest *)self body];
  v14 = [body length];

  if (v14)
  {
    body2 = [(HAPBTLERequest *)self body];
    v16 = [body2 length];

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
    body = [(HAPBTLERequest *)self body];
    v4 = [body mutableCopy];
  }

  else
  {
    _serializeHeader = [(HAPBTLERequest *)self _serializeHeader];
    v4 = [_serializeHeader mutableCopy];

    body2 = [(HAPBTLERequest *)self body];
    v6 = [body2 length];

    if (!v6)
    {
      goto LABEL_6;
    }

    body = [(HAPBTLERequest *)self body];
    [v4 appendData:body];
  }

LABEL_6:

  return v4;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if (![(HAPBTLERequest *)self isFinished])
  {
    operation = [(HAPBTLERequest *)self operation];
    [operation cancelWithError:errorCopy];

    responseTimer = [(HAPBTLERequest *)self responseTimer];
    [responseTimer suspend];
  }
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v19 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPBTLERequest *)self shortDescription];
  if (pointerCopy)
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

  identifier = [(HAPBTLERequest *)self identifier];
  body = [(HAPBTLERequest *)self body];
  v14 = [body length];
  characteristic = [(HAPBTLERequest *)self characteristic];
  shortDescription2 = [characteristic shortDescription];
  v17 = [v19 stringWithFormat:@"<%@%@, Type = %@, Timeout = %f, Encrypted = %@, Request Identifier = %@, Body Length = %tu, Characteristic = %@>", shortDescription, v6, v8, v10, v11, identifier, v14, shortDescription2];

  if (pointerCopy)
  {
  }

  return v17;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_initWithCharacteristic:(id)characteristic requestType:(unsigned __int8)type bodyData:(id)data shouldEncrypt:(BOOL)encrypt timeoutInterval:(double)interval
{
  typeCopy = type;
  v34 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  dataCopy = data;
  v15 = dataCopy;
  if (typeCopy)
  {
    if (interval <= 0.0)
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

    if ([dataCopy length] >= 0x10000)
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
      service = [characteristicCopy service];
      service = v23->_service;
      v23->_service = service;

      objc_storeStrong(&v23->_characteristic, characteristic);
      v23->_type = typeCopy;
      v26 = [v15 copy];
      body = v23->_body;
      v23->_body = v26;

      v23->_encrypted = encrypt;
      v23->_timeoutInterval = interval;
      if (typeCopy != 255)
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
    selfCopy = self;
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
  selfCopy = 0;
LABEL_12:

  v21 = *MEMORY[0x277D85DE8];
  return selfCopy;
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