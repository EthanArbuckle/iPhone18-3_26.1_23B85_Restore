@interface HMMTRProtocolOperation
+ (id)logCategory;
- (HMMTRClusterDescription)characteristicDescription;
- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)type characteristic:(id)characteristic matterDevice:(id)device clusterIDCharacteristicMap:(id)map;
- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)type characteristic:(id)characteristic matterDevice:(id)device primaryArgument:(id)argument clusterIDCharacteristicMap:(id)map;
- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)type characteristicHandlingType:(unint64_t)handlingType targetCharacteristic:(id)characteristic targetValue:(id)value matterDevice:(id)device clusterIDCharacteristicMap:(id)map;
@end

@implementation HMMTRProtocolOperation

- (HMMTRClusterDescription)characteristicDescription
{
  characteristicDescription = self->_characteristicDescription;
  if (!characteristicDescription)
  {
    v4 = +[HMMTRProtocolMap protocolMap];
    type = [(HAPCharacteristic *)self->_characteristic type];
    v6 = [v4 descriptionOfMTRClusterForCharacteristicUUID:type operation:self->_type value:self->_value endpointID:self->_endpoint clusterIDCharacteristicMap:self->_clusterIDCharacteristicMap];
    v7 = self->_characteristicDescription;
    self->_characteristicDescription = v6;

    characteristicDescription = self->_characteristicDescription;
  }

  return characteristicDescription;
}

- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)type characteristicHandlingType:(unint64_t)handlingType targetCharacteristic:(id)characteristic targetValue:(id)value matterDevice:(id)device clusterIDCharacteristicMap:(id)map
{
  characteristicCopy = characteristic;
  obj = value;
  valueCopy = value;
  deviceCopy = device;
  mapCopy = map;
  service = [characteristicCopy service];
  type = [characteristicCopy type];
  v19 = [service characteristicsOfType:type];
  firstObject = [v19 firstObject];

  if (firstObject)
  {
    v35.receiver = self;
    v35.super_class = HMMTRProtocolOperation;
    v21 = [(HMMTRProtocolOperation *)&v35 init];
    if (v21)
    {
      v22 = v21;
      service2 = [characteristicCopy service];
      type2 = [characteristicCopy type];
      v25 = [service2 characteristicsOfType:type2];
      [v25 firstObject];
      handlingTypeCopy = handlingType;
      v26 = mapCopy;
      v28 = v27 = deviceCopy;
      v29 = [(HMMTRProtocolOperation *)v22 initWithOperationOfType:type characteristic:v28 matterDevice:v27 clusterIDCharacteristicMap:v26];

      deviceCopy = v27;
      mapCopy = v26;

      objc_storeStrong((v29 + 48), obj);
      *(v29 + 32) = handlingTypeCopy;
    }

    else
    {
      v29 = 0;
    }

    self = v29;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)type characteristic:(id)characteristic matterDevice:(id)device primaryArgument:(id)argument clusterIDCharacteristicMap:(id)map
{
  characteristicCopy = characteristic;
  deviceCopy = device;
  argumentCopy = argument;
  mapCopy = map;
  v19.receiver = self;
  v19.super_class = HMMTRProtocolOperation;
  v16 = [(HMMTRProtocolOperation *)&v19 init];
  if (v16)
  {
    v17 = [(HMMTRProtocolOperation *)v16 initWithOperationOfType:type characteristic:characteristicCopy matterDevice:deviceCopy clusterIDCharacteristicMap:mapCopy];
    objc_storeStrong(&v17->_value, argument);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)type characteristic:(id)characteristic matterDevice:(id)device clusterIDCharacteristicMap:(id)map
{
  characteristicCopy = characteristic;
  deviceCopy = device;
  mapCopy = map;
  v22.receiver = self;
  v22.super_class = HMMTRProtocolOperation;
  v14 = [(HMMTRProtocolOperation *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_characteristic, characteristic);
    objc_storeStrong(&v15->_matterDevice, device);
    v15->_endpoint = 1;
    v15->_handlingType = 0;
    objc_storeStrong(&v15->_clusterIDCharacteristicMap, map);
    service = [characteristicCopy service];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = service;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    endpoint = [v18 endpoint];

    if (endpoint)
    {
      endpoint2 = [v18 endpoint];
      v15->_endpoint = [endpoint2 intValue];
    }
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1, &__block_literal_global_5059);
  }

  v3 = logCategory__hmf_once_v2;

  return v3;
}

uint64_t __37__HMMTRProtocolOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v2 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end