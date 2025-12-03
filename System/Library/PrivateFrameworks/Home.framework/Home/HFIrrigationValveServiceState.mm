@interface HFIrrigationValveServiceState
+ (id)requiredCharacteristicTypes;
+ (unint64_t)_typeForSystemActiveState:(BOOL)state usageState:(int64_t)usageState;
- (HFIrrigationValveServiceState)initWithBatchReadResponse:(id)response;
- (id)stateTypeIdentifier;
- (int64_t)primaryState;
- (int64_t)priority;
@end

@implementation HFIrrigationValveServiceState

+ (id)requiredCharacteristicTypes
{
  if (qword_280E026B0 != -1)
  {
    dispatch_once(&qword_280E026B0, &__block_literal_global_170_0);
  }

  v3 = qword_280E026B8;

  return v3;
}

void __60__HFIrrigationValveServiceState_requiredCharacteristicTypes__block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF908];
  v6[0] = *MEMORY[0x277CCF748];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E026B8;
  qword_280E026B8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_typeForSystemActiveState:(BOOL)state usageState:(int64_t)usageState
{
  v4 = 2;
  if (state)
  {
    v4 = 3;
  }

  stateCopy = state;
  if (usageState)
  {
    stateCopy = v4;
  }

  if (usageState == 1)
  {
    return v4;
  }

  else
  {
    return stateCopy;
  }
}

- (HFIrrigationValveServiceState)initWithBatchReadResponse:(id)response
{
  responseCopy = response;
  allServices = [responseCopy allServices];
  v6 = [allServices na_any:&__block_literal_global_172_3];

  v7 = MEMORY[0x277CD0F38];
  if (v6)
  {
    v7 = MEMORY[0x277CD0E80];
  }

  v8 = *MEMORY[0x277CCF748];
  v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
  v10 = [responseCopy responseForCharacteristicType:v8 inServicesOfTypes:v9];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [responseCopy responseForCharacteristicType:*MEMORY[0x277CCF908]];

  v13 = [v12 valueWithExpectedClass:objc_opt_class()];

  if (v11)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    selfCopy = 0;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = HFIrrigationValveServiceState;
    v16 = [(HFIrrigationValveServiceState *)&v19 init];
    v17 = v16;
    if (v16)
    {
      v16->_type = [objc_opt_class() _typeForSystemActiveState:objc_msgSend(v11 usageState:{"BOOLValue"), objc_msgSend(v13, "unsignedIntegerValue")}];
    }

    self = v17;
    selfCopy = self;
  }

  return selfCopy;
}

uint64_t __59__HFIrrigationValveServiceState_initWithBatchReadResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E80]];

  return v3;
}

- (id)stateTypeIdentifier
{
  type = [(HFIrrigationValveServiceState *)self type];
  if (type - 1 > 2)
  {
    return @"Off";
  }

  else
  {
    return off_277DFEBB8[type - 1];
  }
}

- (int64_t)primaryState
{
  if ([(HFIrrigationValveServiceState *)self type])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)priority
{
  if ([(HFIrrigationValveServiceState *)self type])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

@end