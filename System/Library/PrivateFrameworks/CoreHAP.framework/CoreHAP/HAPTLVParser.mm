@interface HAPTLVParser
+ (id)parserWithData:(id)data;
- (HAPTLVParser)initWithData:(id)data;
- (id)parseResponseForArray:(unint64_t)array;
- (id)parseResponseForData:(unint64_t)data;
- (id)parseResponseForNumber:(unint64_t)number;
- (id)parseResponseForString:(unint64_t)string;
- (id)parseResponseForUInt16:(unint64_t)int16;
- (id)parseResponseForUInt8:(unint64_t)int8;
- (id)parseResponseForUUID:(unint64_t)d;
@end

@implementation HAPTLVParser

- (id)parseResponseForArray:(unint64_t)array
{
  v22 = *MEMORY[0x277D85DE8];
  [(NSData *)self->_tlvData bytes];
  [(NSData *)self->_tlvData length];
  array = [MEMORY[0x277CBEB18] array];
  while (1)
  {
    v6 = TLV8Get();
    if (v6)
    {
      break;
    }

    v7 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
    [array addObject:v7];
  }

  if (!array)
  {
    v8 = v6;
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [v9 initWithDomain:*MEMORY[0x277CCA590] code:v8 userInfo:0];
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v13;
      v18 = 2048;
      arrayCopy = array;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse array for TLV: %tu %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v14 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)parseResponseForUUID:(unint64_t)d
{
  v3 = [(HAPTLVParser *)self parseResponseForData:d];
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v3, "bytes")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseResponseForString:(unint64_t)string
{
  v3 = [(HAPTLVParser *)self parseResponseForData:string];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)parseResponseForUInt16:(unint64_t)int16
{
  v3 = [(HAPTLVParser *)self parseResponseForData:int16];
  if ([v3 length] == 2)
  {
    bytes = [v3 bytes];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*bytes];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseResponseForUInt8:(unint64_t)int8
{
  v3 = [(HAPTLVParser *)self parseResponseForData:int8];
  if ([v3 length] == 1)
  {
    bytes = [v3 bytes];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*bytes];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)parseResponseForNumber:(unint64_t)number
{
  v7 = *MEMORY[0x277D85DE8];
  [(NSData *)self->_tlvData bytes];
  [(NSData *)self->_tlvData length];
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:TLV8GetUInt64()];
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)parseResponseForData:(unint64_t)data
{
  v21 = *MEMORY[0x277D85DE8];
  [(NSData *)self->_tlvData bytes];
  [(NSData *)self->_tlvData length];
  v5 = TLV8Get();
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = [v7 initWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v16 = v11;
      v17 = 2048;
      dataCopy = data;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse data for TLV: %tu %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CBEA90] dataWithBytes:0 length:0];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HAPTLVParser)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HAPTLVParser;
  v6 = [(HAPTLVParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tlvData, data);
  }

  return v7;
}

+ (id)parserWithData:(id)data
{
  dataCopy = data;
  v4 = [[HAPTLVParser alloc] initWithData:dataCopy];

  return v4;
}

@end