@interface HAPBTLEControlPacket
+ (id)packetWithSerializedData:(id)data error:(id *)error;
+ (id)shortDescription;
- (HAPBTLEControlPacket)init;
- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier continuationPacket:(BOOL)packet packetPayload:(id)payload maximumLength:(unint64_t)length;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)serialize;
- (id)shortDescription;
@end

@implementation HAPBTLEControlPacket

- (id)serialize
{
  v26 = *MEMORY[0x277D85DE8];
  type = [(HAPBTLEControlPacket *)self type];
  transactionIdentifier = [(HAPBTLEControlPacket *)self transactionIdentifier];
  unsignedCharValue = [transactionIdentifier unsignedCharValue];
  isContinuationPacket = [(HAPBTLEControlPacket *)self isContinuationPacket];
  buf[0] = unsignedCharValue;
  v7 = [MEMORY[0x277CBEB28] dataWithCapacity:2];
  v8 = v7;
  v9 = 2 * type;
  if (isContinuationPacket)
  {
    v9 = (2 * type) | 0x80;
  }

  v19 = v9;
  [v7 appendBytes:&v19 length:1];
  if (isContinuationPacket)
  {
    [v8 appendBytes:buf length:1];
  }

  if (v8)
  {
    v10 = [v8 mutableCopy];
    payload = [(HAPBTLEControlPacket *)self payload];
    [v10 appendData:payload];

    v12 = [v10 copy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      shortDescription = [(HAPBTLEControlPacket *)self shortDescription];
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = shortDescription;
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

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPBTLEControlPacket *)self shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_283E79C60;
  }

  type = [(HAPBTLEControlPacket *)self type];
  v9 = @"unknown";
  if (type == 1)
  {
    v9 = @"response";
  }

  if (!type)
  {
    v9 = @"request";
  }

  v10 = v9;
  transactionIdentifier = [(HAPBTLEControlPacket *)self transactionIdentifier];
  unsignedCharValue = [transactionIdentifier unsignedCharValue];
  payload = [(HAPBTLEControlPacket *)self payload];
  v14 = [v5 stringWithFormat:@"<%@%@, Type = %@, Transaction Identifier = 0x%02x, Payload Length = %tu>", shortDescription, v7, v10, unsignedCharValue, objc_msgSend(payload, "length")];

  if (pointerCopy)
  {
  }

  return v14;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HAPBTLEControlPacket)initWithControlType:(unsigned __int8)type transactionIdentifier:(id)identifier continuationPacket:(BOOL)packet packetPayload:(id)payload maximumLength:(unint64_t)length
{
  packetCopy = packet;
  v36 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  payloadCopy = payload;
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

  v15->_type = type;
  objc_storeStrong(&v15->_transactionIdentifier, identifier);
  v16->_continuationPacket = packetCopy;
  if (packetCopy)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = length >= v17;
  v19 = length - v17;
  if (v18)
  {
    if ([payloadCopy length] < v19)
    {
      v19 = [payloadCopy length];
    }

    v25 = [payloadCopy subdataWithRange:{0, v19}];
    payload = v16->_payload;
    v16->_payload = v25;

    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    shortDescription = [(HAPBTLEControlPacket *)v16 shortDescription];
    *buf = 138543874;
    v31 = v22;
    v32 = 2112;
    v33 = shortDescription;
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

+ (id)packetWithSerializedData:(id)data error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (![dataCopy length])
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = @"The control field length is invalid.";
    goto LABEL_7;
  }

  buf[0] = 0;
  [dataCopy getBytes:buf range:{0, 1}];
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
    if ([dataCopy length] <= 1)
    {
      v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9 description:@"Failed to parse control field." reason:@"The control field length is invalid for a continuation payload." suggestion:0 underlyingError:0];
      v28 = v8;
      goto LABEL_9;
    }

    v29 = 0;
    v11 = 1;
    [dataCopy getBytes:&v29 range:{1, 1}];
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
    v16 = [dataCopy subdataWithRange:{v13, objc_msgSend(dataCopy, "length") - v13}];
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
    if (error)
    {
      v22 = v14;
      v17 = 0;
      *error = v14;
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