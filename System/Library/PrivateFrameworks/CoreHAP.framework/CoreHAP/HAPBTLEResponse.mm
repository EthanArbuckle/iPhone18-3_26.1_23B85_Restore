@interface HAPBTLEResponse
- (BOOL)isBodyComplete;
- (BOOL)isComplete;
- (BOOL)isEncrypted;
- (BOOL)isValid;
- (HAPBTLEResponse)init;
- (HAPBTLEResponse)initWithRequest:(id)request;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)_deserializeHeaderBodyLengthWithData:(id)data error:(id *)error;
- (unint64_t)_deserializeHeaderWithData:(id)data error:(id *)error;
- (unint64_t)_remainingBodyLength;
- (unint64_t)appendData:(id)data error:(id *)error;
@end

@implementation HAPBTLEResponse

- (unint64_t)_deserializeHeaderBodyLengthWithData:(id)data error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length] > 1)
  {
    LOWORD(v14) = 0;
    v11 = 2;
    [dataCopy getBytes:&v14 range:{0, 2}];
    self->_bodyLength = v14;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [(HAPBTLEResponse *)self shortDescription];
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = shortDescription;
      v18 = 2112;
      v19 = dataCopy;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse header body length with control body: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:15 description:@"Failed to parse response." reason:@"Failed to parse header body length." suggestion:0 underlyingError:0];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)_deserializeHeaderWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = 2;
  [dataCopy getBytes:v14 length:2];
  v8 = [HAPBTLETransactionIdentifier alloc];
  v9 = [(HAPBTLETransactionIdentifier *)v8 initWithUnsignedCharValue:v14[0]];
  identifier = self->_identifier;
  self->_identifier = v9;

  self->_statusCode = v14[1];
  if ([dataCopy length] >= 3)
  {
    v11 = [dataCopy subdataWithRange:{2, objc_msgSend(dataCopy, "length") - 2}];
    v12 = [(HAPBTLEResponse *)self _deserializeHeaderBodyLengthWithData:v11 error:error];

    if (!v12)
    {
      v7 = 0;
      goto LABEL_5;
    }

    v7 = v12 + 2;
  }

  [(HAPBTLEResponse *)self setHeaderComplete:1];
LABEL_5:

  return v7;
}

- (unint64_t)appendData:(id)data error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(HAPBTLEResponse *)self isComplete])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      shortDescription = [(HAPBTLEResponse *)self shortDescription];
      v29 = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = shortDescription;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not appending data, the response is complete", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = @"Response is complete.";
      v13 = 237;
LABEL_6:
      [v11 hapErrorWithCode:3 description:@"Failed to parse response." reason:v12 suggestion:0 underlyingError:0 marker:v13];
      *error = v14 = 0;
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if ([(HAPBTLEResponse *)self isHeaderComplete])
  {
    v14 = 0;
  }

  else
  {
    if ([dataCopy length] <= 1)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        shortDescription2 = [(HAPBTLEResponse *)self shortDescription];
        v29 = 138543874;
        v30 = v17;
        v31 = 2112;
        v32 = shortDescription2;
        v33 = 2112;
        v34 = dataCopy;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] The data, %@, does not contain the entire response header", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      if (error)
      {
        v11 = MEMORY[0x277CCA9B8];
        v12 = @"The entire header was not present.";
        v13 = 238;
        goto LABEL_6;
      }

LABEL_14:
      v14 = 0;
      goto LABEL_27;
    }

    v14 = [(HAPBTLEResponse *)self _deserializeHeaderWithData:dataCopy error:error];
    if (!v14)
    {
      goto LABEL_27;
    }
  }

  v19 = [dataCopy length];
  if (![(HAPBTLEResponse *)self isBodyComplete]&& v19 != v14)
  {
    _remainingBodyLength = [(HAPBTLEResponse *)self _remainingBodyLength];
    if (_remainingBodyLength)
    {
      if (_remainingBodyLength >= v19 - v14)
      {
        v21 = v19 - v14;
      }

      else
      {
        v21 = _remainingBodyLength;
      }

      _internalBody = [(HAPBTLEResponse *)self _internalBody];

      if (!_internalBody)
      {
        v23 = [MEMORY[0x277CBEB28] dataWithCapacity:{-[HAPBTLEResponse bodyLength](self, "bodyLength")}];
        [(HAPBTLEResponse *)self _setInternalBody:v23];
      }

      _internalBody2 = [(HAPBTLEResponse *)self _internalBody];
      v25 = [dataCopy subdataWithRange:{v14, v21}];
      [_internalBody2 appendData:v25];

      v14 += v21;
    }

    if (![(HAPBTLEResponse *)self _remainingBodyLength])
    {
      _internalBody3 = [(HAPBTLEResponse *)self _internalBody];
      [(HAPBTLEResponse *)self setBody:_internalBody3];

      [(HAPBTLEResponse *)self _setInternalBody:0];
    }
  }

LABEL_27:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)_remainingBodyLength
{
  body = [(HAPBTLEResponse *)self body];

  if (body)
  {
    return 0;
  }

  bodyLength = [(HAPBTLEResponse *)self bodyLength];
  _internalBody = [(HAPBTLEResponse *)self _internalBody];
  v4 = bodyLength - [_internalBody length];

  return v4;
}

- (BOOL)isValid
{
  isComplete = [(HAPBTLEResponse *)self isComplete];
  if (isComplete)
  {
    identifier = [(HAPBTLEResponse *)self identifier];
    request = [(HAPBTLEResponse *)self request];
    identifier2 = [request identifier];
    v7 = [identifier isEqual:identifier2];

    LOBYTE(isComplete) = v7;
  }

  return isComplete;
}

- (BOOL)isBodyComplete
{
  if (![(HAPBTLEResponse *)self isHeaderComplete])
  {
    return 0;
  }

  bodyLength = [(HAPBTLEResponse *)self bodyLength];
  body = [(HAPBTLEResponse *)self body];
  v5 = bodyLength == [body length];

  return v5;
}

- (BOOL)isComplete
{
  isHeaderComplete = [(HAPBTLEResponse *)self isHeaderComplete];
  if (isHeaderComplete)
  {

    LOBYTE(isHeaderComplete) = [(HAPBTLEResponse *)self isBodyComplete];
  }

  return isHeaderComplete;
}

- (BOOL)isEncrypted
{
  request = [(HAPBTLEResponse *)self request];
  isEncrypted = [request isEncrypted];

  return isEncrypted;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPBTLEResponse *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  if ([(HAPBTLEResponse *)self isEncrypted])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  identifier = [(HAPBTLEResponse *)self identifier];
  bodyLength = [(HAPBTLEResponse *)self bodyLength];
  request = [(HAPBTLEResponse *)self request];
  body = [(HAPBTLEResponse *)self body];
  v13 = [v5 stringWithFormat:@"<%@%@, Encrypted = %@, Response Identifier = %@, Body Length = %tu, Request = %@> <Body: %@>", shortDescription, v7, v8, identifier, bodyLength, request, body];

  if (pointerCopy)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HAPBTLEResponse)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = HAPBTLEResponse;
  v6 = [(HAPBTLEResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, request);
  }

  return v7;
}

- (HAPBTLEResponse)init
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