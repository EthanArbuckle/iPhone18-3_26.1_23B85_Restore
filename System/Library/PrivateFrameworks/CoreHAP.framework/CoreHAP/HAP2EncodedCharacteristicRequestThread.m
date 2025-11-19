@interface HAP2EncodedCharacteristicRequestThread
- (BOOL)isEncrypted;
- (HAP2EncodedCharacteristicRequestThread)initWithBTLERequests:(id)a3 requestType:(unint64_t)a4 enforcePDUBodyLength:(BOOL)a5;
- (NSArray)btleRequests;
- (NSArray)characteristics;
- (id)serialize;
- (unint64_t)type;
@end

@implementation HAP2EncodedCharacteristicRequestThread

- (id)serialize
{
  v3 = [MEMORY[0x277CBEB28] data];
  if (self)
  {
    internalCharacteristics = self->_internalCharacteristics;
  }

  else
  {
    internalCharacteristics = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HAP2EncodedCharacteristicRequestThread_serialize__block_invoke;
  v8[3] = &unk_2786D3518;
  v10 = 0;
  v8[4] = self;
  v9 = v3;
  v5 = v3;
  [(NSArray *)internalCharacteristics hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __51__HAP2EncodedCharacteristicRequestThread_serialize__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 serialize];
  [v4 replaceBytesInRange:0 withBytes:0 length:{a1 + 48, 1}];
  v5 = *(a1 + 32);
  if (v5)
  {
    if (*(v5 + 8) == 1)
    {
      v6 = [v3 body];

      if (!v6)
      {
        v7 = 0;
        [v4 appendBytes:&v7 length:2];
      }
    }
  }

  [*(a1 + 40) appendData:v4];
}

- (NSArray)characteristics
{
  v2 = self;
  v3 = MEMORY[0x277CBEB18];
  if (self)
  {
    internalCharacteristics = self->_internalCharacteristics;
  }

  else
  {
    internalCharacteristics = 0;
  }

  v5 = internalCharacteristics;
  v6 = [v3 arrayWithCapacity:{-[NSArray count](v5, "count")}];

  if (v2)
  {
    v2 = v2->_internalCharacteristics;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__HAP2EncodedCharacteristicRequestThread_characteristics__block_invoke;
  v10[3] = &unk_2786D34F0;
  v11 = v6;
  v7 = v6;
  [(HAP2EncodedCharacteristicRequestThread *)v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];
  v8 = [v7 copy];

  return v8;
}

void __57__HAP2EncodedCharacteristicRequestThread_characteristics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(HAPCharacteristicWriteRequestTuple);
  v4 = [v3 characteristic];
  [(HAPCharacteristicWriteRequestTuple *)v6 setCharacteristic:v4];

  v5 = [v3 requestedValue];

  [(HAPCharacteristicWriteRequestTuple *)v6 setValue:v5];
  [*(a1 + 32) addObject:v6];
}

- (unint64_t)type
{
  if (self)
  {
    return *(self + 24);
  }

  return self;
}

- (BOOL)isEncrypted
{
  if (self)
  {
    self = self->_internalCharacteristics;
  }

  v2 = [(HAP2EncodedCharacteristicRequestThread *)self firstObject];
  v3 = [v2 isEncrypted];

  return v3;
}

- (NSArray)btleRequests
{
  if (self)
  {
    self = self->_internalCharacteristics;
  }

  return self;
}

- (HAP2EncodedCharacteristicRequestThread)initWithBTLERequests:(id)a3 requestType:(unint64_t)a4 enforcePDUBodyLength:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = HAP2EncodedCharacteristicRequestThread;
  v10 = [(HAP2EncodedCharacteristicRequestThread *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_internalCharacteristics, a3);
    v11->_requestType = a4;
    v11->_enforcePDUBodyLength = a5;
  }

  return v11;
}

@end