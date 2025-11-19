@interface HAPBTLEControlPacket
+ (id)packetWithSerializedData:(id)a3 error:(id *)a4;
+ (id)shortDescription;
- (HAPBTLEControlPacket)init;
- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 continuationPacket:(BOOL)a5 packetPayload:(id)a6 maximumLength:(unint64_t)a7;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)serialize;
- (id)shortDescription;
@end

@implementation HAPBTLEControlPacket

- (id)serialize
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(HAPBTLEControlPacket *)self type];
  v4 = [(HAPBTLEControlPacket *)self transactionIdentifier];
  v5 = [v4 unsignedCharValue];
  v6 = [(HAPBTLEControlPacket *)self isContinuationPacket];
  buf[0] = v5;
  v7 = [MEMORY[0x277CBEB28] dataWithCapacity:2];
  v8 = v7;
  v9 = 2 * v3;
  if (v6)
  {
    v9 = (2 * v3) | 0x80;
  }

  v19 = v9;
  [v7 appendBytes:&v19 length:1];
  if (v6)
  {
    [v8 appendBytes:buf length:1];
  }

  if (v8)
  {
    v10 = [v8 mutableCopy];
    v11 = [(HAPBTLEControlPacket *)self payload];
    [v10 appendData:v11];

    v12 = [v10 copy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [(HAPBTLEControlPacket *)self shortDescription];
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = 0;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to create control header with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [(HAPBTLEControlPacket *)self shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  v8 = [(HAPBTLEControlPacket *)self type];
  v9 = @"unknown";
  if (v8 == 1)
  {
    v9 = @"response";
  }

  if (!v8)
  {
    v9 = @"request";
  }

  v10 = v9;
  v11 = [(HAPBTLEControlPacket *)self transactionIdentifier];
  v12 = [v11 unsignedCharValue];
  v13 = [(HAPBTLEControlPacket *)self payload];
  v14 = [v5 stringWithFormat:@"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Payload Length = %tu>", v6, v7, v10, v12, objc_msgSend(v13, "length")];

  if (v3)
  {
  }

  return v14;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)a3 transactionIdentifier:(id)a4 continuationPacket:(BOOL)a5 packetPayload:(id)a6 maximumLength:(unint64_t)a7
{
  v9 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = HAPBTLEControlPacket;
  v15 = [(HAPBTLEControlPacket *)&v29 init];
  v16 = v15;
  if (!v15)
  {
LABEL_12:
    v24 = v16;
    goto LABEL_13;
  }

  v15->_type = a3;
  objc_storeStrong(&v15->_transactionIdentifier, a4);
  v16->_continuationPacket = v9;
  if (v9)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = a7 >= v17;
  v19 = a7 - v17;
  if (v18)
  {
    if ([v14 length] < v19)
    {
      v19 = [v14 length];
    }

    v25 = [v14 subdataWithRange:{0, v19}];
    payload = v16->_payload;
    v16->_payload = v25;

    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [(HAPBTLEControlPacket *)v16 shortDescription];
    *buf = 138543874;
    v31 = v22;
    v32 = 2112;
    v33 = v23;
    v34 = 2048;
    v35 = v17;
    _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%{public}@[%@] The maximum packet length must be greater than the header length: %tu", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = 0;
LABEL_13:

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

- (HAPBTLEControlPacket)init
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

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)packetWithSerializedData:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (![v5 length])
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = @"The control field length is invalid.";
    goto LABEL_7;
  }

  buf[0] = 0;
  [v5 getBytes:buf range:{0, 1}];
  if (buf[0])
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = @"Invalid control field version.";
    goto LABEL_7;
  }

  if ((buf[0] & 0x70) != 0)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = @"Reserved bits must be zero.";
LABEL_7:
    v8 = [v6 hapErrorWithCode:9 description:@"Failed to parse control field." reason:v7 suggestion:0 underlyingError:0];
    v9 = v8;
LABEL_8:
    v10 = 0;
LABEL_9:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_10;
  }

  v10 = (buf[0] >> 1) & 7;
  if (v10 > 1)
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid control type: %u.", v10];
    v8 = [v25 hapErrorWithCode:9 description:@"Failed to parse control field." reason:v26 suggestion:0 underlyingError:0];
    v27 = v8;

    goto LABEL_8;
  }

  if ((buf[0] & 0x80) != 0)
  {
    if ([v5 length] <= 1)
    {
      v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to parse control field." reason:@"The control field length is invalid for a continuation payload." suggestion:0 underlyingError:0];
      v28 = v8;
      goto LABEL_9;
    }

    v29 = 0;
    v11 = 1;
    [v5 getBytes:&v29 range:{1, 1}];
    v8 = 0;
    v12 = v29;
    v13 = 2;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v8 = 0;
    v13 = 1;
  }

LABEL_10:

  v14 = v8;
  if (v13)
  {
    v15 = [[HAPBTLETransactionIdentifier alloc] initWithUnsignedCharValue:v12];
    v16 = [v5 subdataWithRange:{v13, objc_msgSend(v5, "length") - v13}];
    v17 = [[HAPBTLEControlPacket alloc] initWithControlType:v10 transactionIdentifier:v15 continuationPacket:v11 packetPayload:v16 maximumLength:-1];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = +[HAPBTLEControlPacket shortDescription];
      *buf = 138543874;
      v31 = v20;
      v32 = 2112;
      v33 = v21;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@[%@] Failed to parse control field with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    if (a4)
    {
      v22 = v14;
      v17 = 0;
      *a4 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

@end