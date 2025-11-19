@interface HAPBTLEResponse
- (BOOL)isBodyComplete;
- (BOOL)isComplete;
- (BOOL)isEncrypted;
- (BOOL)isValid;
- (HAPBTLEResponse)init;
- (HAPBTLEResponse)initWithRequest:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)_deserializeHeaderBodyLengthWithData:(id)a3 error:(id *)a4;
- (unint64_t)_deserializeHeaderWithData:(id)a3 error:(id *)a4;
- (unint64_t)_remainingBodyLength;
- (unint64_t)appendData:(id)a3 error:(id *)a4;
@end

@implementation HAPBTLEResponse

- (unint64_t)_deserializeHeaderBodyLengthWithData:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 length] > 1)
  {
    LOWORD(v14) = 0;
    v11 = 2;
    [v6 getBytes:&v14 range:{0, 2}];
    self->_bodyLength = v14;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HAPBTLEResponse *)self shortDescription];
      v14 = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse header body length with control body: %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hapErrorWithCode:15 description:@"Failed to parse response." reason:@"Failed to parse header body length." suggestion:0 underlyingError:0];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)_deserializeHeaderWithData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = 2;
  [v6 getBytes:v14 length:2];
  v8 = [HAPBTLETransactionIdentifier alloc];
  v9 = [(HAPBTLETransactionIdentifier *)v8 initWithUnsignedCharValue:v14[0]];
  identifier = self->_identifier;
  self->_identifier = v9;

  self->_statusCode = v14[1];
  if ([v6 length] >= 3)
  {
    v11 = [v6 subdataWithRange:{2, objc_msgSend(v6, "length") - 2}];
    v12 = [(HAPBTLEResponse *)self _deserializeHeaderBodyLengthWithData:v11 error:a4];

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

- (unint64_t)appendData:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HAPBTLEResponse *)self isComplete])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HAPBTLEResponse *)self shortDescription];
      v29 = 138543618;
      v30 = v9;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Not appending data, the response is complete", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    if (a4)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = @"Response is complete.";
      v13 = 237;
LABEL_6:
      [v11 hapErrorWithCode:3 description:@"Failed to parse response." reason:v12 suggestion:0 underlyingError:0 marker:v13];
      *a4 = v14 = 0;
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
    if ([v6 length] <= 1)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [(HAPBTLEResponse *)self shortDescription];
        v29 = 138543874;
        v30 = v17;
        v31 = 2112;
        v32 = v18;
        v33 = 2112;
        v34 = v6;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%{public}@[%@] The data, %@, does not contain the entire response header", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      if (a4)
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

    v14 = [(HAPBTLEResponse *)self _deserializeHeaderWithData:v6 error:a4];
    if (!v14)
    {
      goto LABEL_27;
    }
  }

  v19 = [v6 length];
  if (![(HAPBTLEResponse *)self isBodyComplete]&& v19 != v14)
  {
    v20 = [(HAPBTLEResponse *)self _remainingBodyLength];
    if (v20)
    {
      if (v20 >= v19 - v14)
      {
        v21 = v19 - v14;
      }

      else
      {
        v21 = v20;
      }

      v22 = [(HAPBTLEResponse *)self _internalBody];

      if (!v22)
      {
        v23 = [MEMORY[0x277CBEB28] dataWithCapacity:{-[HAPBTLEResponse bodyLength](self, "bodyLength")}];
        [(HAPBTLEResponse *)self _setInternalBody:v23];
      }

      v24 = [(HAPBTLEResponse *)self _internalBody];
      v25 = [v6 subdataWithRange:{v14, v21}];
      [v24 appendData:v25];

      v14 += v21;
    }

    if (![(HAPBTLEResponse *)self _remainingBodyLength])
    {
      v26 = [(HAPBTLEResponse *)self _internalBody];
      [(HAPBTLEResponse *)self setBody:v26];

      [(HAPBTLEResponse *)self _setInternalBody:0];
    }
  }

LABEL_27:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (unint64_t)_remainingBodyLength
{
  v3 = [(HAPBTLEResponse *)self body];

  if (v3)
  {
    return 0;
  }

  v5 = [(HAPBTLEResponse *)self bodyLength];
  v6 = [(HAPBTLEResponse *)self _internalBody];
  v4 = v5 - [v6 length];

  return v4;
}

- (BOOL)isValid
{
  v3 = [(HAPBTLEResponse *)self isComplete];
  if (v3)
  {
    v4 = [(HAPBTLEResponse *)self identifier];
    v5 = [(HAPBTLEResponse *)self request];
    v6 = [v5 identifier];
    v7 = [v4 isEqual:v6];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (BOOL)isBodyComplete
{
  if (![(HAPBTLEResponse *)self isHeaderComplete])
  {
    return 0;
  }

  v3 = [(HAPBTLEResponse *)self bodyLength];
  v4 = [(HAPBTLEResponse *)self body];
  v5 = v3 == [v4 length];

  return v5;
}

- (BOOL)isComplete
{
  v3 = [(HAPBTLEResponse *)self isHeaderComplete];
  if (v3)
  {

    LOBYTE(v3) = [(HAPBTLEResponse *)self isBodyComplete];
  }

  return v3;
}

- (BOOL)isEncrypted
{
  v2 = [(HAPBTLEResponse *)self request];
  v3 = [v2 isEncrypted];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HAPBTLEResponse *)self shortDescription];
  if (v3)
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

  v9 = [(HAPBTLEResponse *)self identifier];
  v10 = [(HAPBTLEResponse *)self bodyLength];
  v11 = [(HAPBTLEResponse *)self request];
  v12 = [(HAPBTLEResponse *)self body];
  v13 = [v5 stringWithFormat:@"<%@%@, Encrypted = %@, Response Identifier = %@, Body Length = %tu, Request = %@> <Body: %@>", v6, v7, v8, v9, v10, v11, v12];

  if (v3)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HAPBTLEResponse)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HAPBTLEResponse;
  v6 = [(HAPBTLEResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
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