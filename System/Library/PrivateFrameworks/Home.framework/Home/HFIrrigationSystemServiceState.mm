@interface HFIrrigationSystemServiceState
+ (id)requiredCharacteristicTypes;
+ (unint64_t)_typeForActiveState:(BOOL)a3 usageState:(int64_t)a4 programMode:(int64_t)a5;
- (HFIrrigationSystemServiceState)initWithBatchReadResponse:(id)a3;
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

+ (unint64_t)_typeForActiveState:(BOOL)a3 usageState:(int64_t)a4 programMode:(int64_t)a5
{
  if (!a4)
  {
    goto LABEL_6;
  }

  if (a4 != 1)
  {
    return result;
  }

  if (a5 < 3)
  {
    return qword_20DD975F0[a5];
  }

LABEL_6:
  if (a3)
  {
    return a5 != 0;
  }

  return 0;
}

- (HFIrrigationSystemServiceState)initWithBatchReadResponse:(id)a3
{
  v4 = *MEMORY[0x277CCF748];
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CD0E80];
  v7 = a3;
  v8 = [v5 setWithObject:v6];
  v9 = [v7 responseForCharacteristicType:v4 inServicesOfTypes:v8];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = *MEMORY[0x277CCF9F8];
  v12 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v13 = [v7 responseForCharacteristicType:v11 inServicesOfTypes:v12];
  v14 = [v13 valueWithExpectedClass:objc_opt_class()];

  v15 = *MEMORY[0x277CCF908];
  if (qword_280E026D0 != -1)
  {
    dispatch_once(&qword_280E026D0, &__block_literal_global_193_0);
  }

  v16 = qword_280E026D8;
  v17 = [v7 responseForCharacteristicType:v15 inServicesOfTypes:v16];

  v18 = [v17 valueWithExpectedClass:objc_opt_class()];

  v19 = 0;
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
    v19 = self;
  }

  return v19;
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
  v2 = [(HFIrrigationSystemServiceState *)self type];
  if (v2 - 1 > 2)
  {
    return @"Off";
  }

  else
  {
    return off_277DFEBD0[v2 - 1];
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