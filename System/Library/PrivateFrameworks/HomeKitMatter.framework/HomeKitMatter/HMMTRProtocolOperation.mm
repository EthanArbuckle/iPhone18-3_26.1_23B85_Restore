@interface HMMTRProtocolOperation
+ (id)logCategory;
- (HMMTRClusterDescription)characteristicDescription;
- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)a3 characteristic:(id)a4 matterDevice:(id)a5 clusterIDCharacteristicMap:(id)a6;
- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)a3 characteristic:(id)a4 matterDevice:(id)a5 primaryArgument:(id)a6 clusterIDCharacteristicMap:(id)a7;
- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)a3 characteristicHandlingType:(unint64_t)a4 targetCharacteristic:(id)a5 targetValue:(id)a6 matterDevice:(id)a7 clusterIDCharacteristicMap:(id)a8;
@end

@implementation HMMTRProtocolOperation

- (HMMTRClusterDescription)characteristicDescription
{
  characteristicDescription = self->_characteristicDescription;
  if (!characteristicDescription)
  {
    v4 = +[HMMTRProtocolMap protocolMap];
    v5 = [(HAPCharacteristic *)self->_characteristic type];
    v6 = [v4 descriptionOfMTRClusterForCharacteristicUUID:v5 operation:self->_type value:self->_value endpointID:self->_endpoint clusterIDCharacteristicMap:self->_clusterIDCharacteristicMap];
    v7 = self->_characteristicDescription;
    self->_characteristicDescription = v6;

    characteristicDescription = self->_characteristicDescription;
  }

  return characteristicDescription;
}

- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)a3 characteristicHandlingType:(unint64_t)a4 targetCharacteristic:(id)a5 targetValue:(id)a6 matterDevice:(id)a7 clusterIDCharacteristicMap:(id)a8
{
  v14 = a5;
  obj = a6;
  v34 = a6;
  v15 = a7;
  v16 = a8;
  v17 = [v14 service];
  v18 = [v14 type];
  v19 = [v17 characteristicsOfType:v18];
  v20 = [v19 firstObject];

  if (v20)
  {
    v35.receiver = self;
    v35.super_class = HMMTRProtocolOperation;
    v21 = [(HMMTRProtocolOperation *)&v35 init];
    if (v21)
    {
      v22 = v21;
      v23 = [v14 service];
      v24 = [v14 type];
      v25 = [v23 characteristicsOfType:v24];
      [v25 firstObject];
      v32 = a4;
      v26 = v16;
      v28 = v27 = v15;
      v29 = [(HMMTRProtocolOperation *)v22 initWithOperationOfType:a3 characteristic:v28 matterDevice:v27 clusterIDCharacteristicMap:v26];

      v15 = v27;
      v16 = v26;

      objc_storeStrong((v29 + 48), obj);
      *(v29 + 32) = v32;
    }

    else
    {
      v29 = 0;
    }

    self = v29;
    v30 = self;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)a3 characteristic:(id)a4 matterDevice:(id)a5 primaryArgument:(id)a6 clusterIDCharacteristicMap:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = HMMTRProtocolOperation;
  v16 = [(HMMTRProtocolOperation *)&v19 init];
  if (v16)
  {
    v17 = [(HMMTRProtocolOperation *)v16 initWithOperationOfType:a3 characteristic:v12 matterDevice:v13 clusterIDCharacteristicMap:v15];
    objc_storeStrong(&v17->_value, a6);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (HMMTRProtocolOperation)initWithOperationOfType:(unint64_t)a3 characteristic:(id)a4 matterDevice:(id)a5 clusterIDCharacteristicMap:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = HMMTRProtocolOperation;
  v14 = [(HMMTRProtocolOperation *)&v22 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_characteristic, a4);
    objc_storeStrong(&v15->_matterDevice, a5);
    v15->_endpoint = 1;
    v15->_handlingType = 0;
    objc_storeStrong(&v15->_clusterIDCharacteristicMap, a6);
    v16 = [v11 service];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    v19 = [v18 endpoint];

    if (v19)
    {
      v20 = [v18 endpoint];
      v15->_endpoint = [v20 intValue];
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