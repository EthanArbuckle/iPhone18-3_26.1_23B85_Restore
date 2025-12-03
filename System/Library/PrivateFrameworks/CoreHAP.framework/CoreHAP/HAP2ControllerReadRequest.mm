@interface HAP2ControllerReadRequest
- (HAP2ControllerReadRequest)initWithCharacteristics:(id)characteristics;
- (NSArray)characteristics;
- (id)serialize;
@end

@implementation HAP2ControllerReadRequest

- (NSArray)characteristics
{
  v3 = MEMORY[0x277CBEB18];
  originalCharacteristics = [(HAP2ControllerReadRequest *)self originalCharacteristics];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(originalCharacteristics, "count")}];

  originalCharacteristics2 = [(HAP2ControllerReadRequest *)self originalCharacteristics];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HAP2ControllerReadRequest_characteristics__block_invoke;
  v10[3] = &unk_2786D60B0;
  v11 = v5;
  v7 = v5;
  [originalCharacteristics2 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __44__HAP2ControllerReadRequest_characteristics__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HAPCharacteristicWriteRequestTuple);
  [(HAPCharacteristicWriteRequestTuple *)v4 setCharacteristic:v3];

  [*(a1 + 32) addObject:v4];
}

- (id)serialize
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

- (HAP2ControllerReadRequest)initWithCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v9.receiver = self;
  v9.super_class = HAP2ControllerReadRequest;
  v6 = [(HAP2ControllerReadRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalCharacteristics, characteristics);
  }

  return v7;
}

@end