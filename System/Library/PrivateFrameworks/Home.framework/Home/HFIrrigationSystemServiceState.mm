@interface HFIrrigationSystemServiceState
+ (id)requiredCharacteristicTypes;
+ (unint64_t)_typeForActiveState:(BOOL)state usageState:(int64_t)usageState programMode:(int64_t)mode;
- (HFIrrigationSystemServiceState)initWithBatchReadResponse:(id)response;
- (id)stateTypeIdentifier;
- (int64_t)primaryState;
- (int64_t)priority;
@end

@implementation HFIrrigationSystemServiceState

+ (id)requiredCharacteristicTypes
{
  if (qword_280E026C0 != -1)
  {
    dispatch_once(&qword_280E026C0, &__block_literal_global_189_2);
  }

  v3 = qword_280E026C8;

  return v3;
}

void __61__HFIrrigationSystemServiceState_requiredCharacteristicTypes__block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF908];
  v6[0] = *MEMORY[0x277CCF748];
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CCF9F8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E026C8;
  qword_280E026C8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_typeForActiveState:(BOOL)state usageState:(int64_t)usageState programMode:(int64_t)mode
{
  if (!usageState)
  {
    goto LABEL_6;
  }

  if (usageState != 1)
  {
    return result;
  }

  if (mode < 3)
  {
    return qword_20DD975F0[mode];
  }

LABEL_6:
  if (state)
  {
    return mode != 0;
  }

  return 0;
}

- (HFIrrigationSystemServiceState)initWithBatchReadResponse:(id)response
{
  v4 = *MEMORY[0x277CCF748];
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CD0E80];
  responseCopy = response;
  v8 = [v5 setWithObject:v6];
  v9 = [responseCopy responseForCharacteristicType:v4 inServicesOfTypes:v8];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = *MEMORY[0x277CCF9F8];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v13 = [responseCopy responseForCharacteristicType:v11 inServicesOfTypes:v12];
  v14 = [v13 valueWithExpectedClass:objc_opt_class()];

  v15 = *MEMORY[0x277CCF908];
  if (qword_280E026D0 != -1)
  {
    dispatch_once(&qword_280E026D0, &__block_literal_global_193_0);
  }

  v16 = qword_280E026D8;
  v17 = [responseCopy responseForCharacteristicType:v15 inServicesOfTypes:v16];

  v18 = [v17 valueWithExpectedClass:objc_opt_class()];

  selfCopy = 0;
  if (v10 && v18 && v14)
  {
    v22.receiver = self;
    v22.super_class = HFIrrigationSystemServiceState;
    v20 = [(HFIrrigationSystemServiceState *)&v22 init];
    if (v20)
    {
      v20->_type = [objc_opt_class() _typeForActiveState:objc_msgSend(v10 usageState:"BOOLValue") programMode:{objc_msgSend(v18, "unsignedIntegerValue"), objc_msgSend(v14, "unsignedIntegerValue")}];
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

void __60__HFIrrigationSystemServiceState_initWithBatchReadResponse___block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CD0F38];
  v6[0] = *MEMORY[0x277CD0E80];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E026D8;
  qword_280E026D8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

- (id)stateTypeIdentifier
{
  type = [(HFIrrigationSystemServiceState *)self type];
  if (type - 1 > 2)
  {
    return @"Off";
  }

  else
  {
    return off_277DFEBD0[type - 1];
  }
}

- (int64_t)primaryState
{
  if ([(HFIrrigationSystemServiceState *)self type]< 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)priority
{
  if ([(HFIrrigationSystemServiceState *)self type])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

@end