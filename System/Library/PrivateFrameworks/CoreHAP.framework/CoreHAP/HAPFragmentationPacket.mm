@interface HAPFragmentationPacket
- (BOOL)isEqual:(id)equal;
- (HAPFragmentationPacket)init;
- (HAPFragmentationPacket)initWithData:(id)data transactionIdentifier:(unsigned __int16)identifier length:(unsigned int)length offset:(unsigned int)offset;
- (HAPFragmentationPacket)initWithFragmentedPacketData:(id)data;
- (id)debugDescription;
- (id)description;
- (id)serialize;
@end

@implementation HAPFragmentationPacket

- (id)serialize
{
  LOWORD(v9) = [(HAPFragmentationPacket *)self transactionIdentifier];
  *(&v9 + 2) = [(HAPFragmentationPacket *)self length];
  *(&v9 + 6) = [(HAPFragmentationPacket *)self offset];
  v10 = v9;
  v11 = WORD4(v9);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:12];
  v4 = MEMORY[0x277CBEB28];
  data = [(HAPFragmentationPacket *)self data];
  v6 = [v4 dataWithCapacity:{objc_msgSend(data, "length") + 12}];

  [v6 appendData:v3];
  data2 = [(HAPFragmentationPacket *)self data];
  [v6 appendData:data2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      transactionIdentifier = [(HAPFragmentationPacket *)self transactionIdentifier];
      v8 = 0;
      if (transactionIdentifier == [(HAPFragmentationPacket *)v5 transactionIdentifier])
      {
        offset = [(HAPFragmentationPacket *)self offset];
        if (offset == [(HAPFragmentationPacket *)v5 offset])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPFragmentationPacket *)self shortDescription];
  transactionIdentifier = [(HAPFragmentationPacket *)self transactionIdentifier];
  v6 = [(HAPFragmentationPacket *)self length];
  offset = [(HAPFragmentationPacket *)self offset];
  data = [(HAPFragmentationPacket *)self data];
  v9 = [v3 stringWithFormat:@"<%@, Transaction Identifier = %u, Transaction Length = %u, Offset = %u, Data Length = %tu>", shortDescription, transactionIdentifier, v6, offset, objc_msgSend(data, "length")];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [(HAPFragmentationPacket *)self shortDescription];
  transactionIdentifier = [(HAPFragmentationPacket *)self transactionIdentifier];
  v6 = [(HAPFragmentationPacket *)self length];
  offset = [(HAPFragmentationPacket *)self offset];
  data = [(HAPFragmentationPacket *)self data];
  v9 = [v3 stringWithFormat:@"<%@ %p, Transaction Identifier = %u, Transaction Length = %u, Offset = %u, Data Length = %tu>", shortDescription, self, transactionIdentifier, v6, offset, objc_msgSend(data, "length")];

  return v9;
}

- (HAPFragmentationPacket)initWithData:(id)data transactionIdentifier:(unsigned __int16)identifier length:(unsigned int)length offset:(unsigned int)offset
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = HAPFragmentationPacket;
  v12 = [(HAPFragmentationPacket *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    v13->_transactionIdentifier = identifier;
    v13->_length = length;
    v13->_offset = offset;
  }

  return v13;
}

- (HAPFragmentationPacket)initWithFragmentedPacketData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v8;
      v9 = "%{public}@[HAPFragmentationPacket] Invalid parameter 'data'";
      v10 = v7;
      v11 = 12;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    selfCopy = 0;
    goto LABEL_17;
  }

  if ([dataCopy length] <= 0xB)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v8;
      v37 = 2048;
      v38 = 12;
      v9 = "%{public}@[HAPFragmentationPacket] Fragmented data must have a length of at least %lu bytes";
      v10 = v7;
      v11 = 22;
LABEL_7:
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = v5;
  memset(v32, 0, 12);
  if ([v13 length] <= 0xB)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid serialized data length %tu", objc_msgSend(v13, "length")];
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v22;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_22AADC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@[HAPFragmentationPacket] %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v23 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = v19;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v25 = [v23 errorWithDomain:@"HAPErrorDomain" code:-6743 userInfo:v24];
    v26 = v25;

    v18 = v25;
    v27 = objc_autoreleasePoolPush();
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v29;
      v37 = 2112;
      v38 = v18;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@[HAPFragmentationPacket] Failed to deserialize packet header with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    selfCopy = 0;
  }

  else
  {
    [v13 getBytes:v32 length:12];
    v14 = LOWORD(v32[0]);
    v15 = *(v32 + 2);
    v16 = *(v32 + 6);

    v17 = [v13 subdataWithRange:{12, objc_msgSend(v13, "length") - 12}];
    self = [(HAPFragmentationPacket *)self initWithData:v17 transactionIdentifier:v14 length:v15 offset:v16];

    v18 = 0;
    selfCopy = self;
  }

LABEL_17:
  v30 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HAPFragmentationPacket)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end