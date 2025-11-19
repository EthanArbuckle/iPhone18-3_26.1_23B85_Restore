@interface HFFaucetValveServiceState
+ (id)optionalCharacteristicTypes;
+ (id)requiredCharacteristicTypes;
+ (unint64_t)_typeForSystemActiveState:(BOOL)a3 heaterCoolerActiveState:(id)a4 usageState:(int64_t)a5 currentHeaterCoolerState:(id)a6;
- (HFFaucetValveServiceState)initWithBatchReadResponse:(id)a3;
- (id)stateTypeIdentifier;
- (int64_t)primaryState;
- (int64_t)priority;
@end

@implementation HFFaucetValveServiceState

+ (id)requiredCharacteristicTypes
{
  if (qword_280E02670 != -1)
  {
    dispatch_once(&qword_280E02670, &__block_literal_global_113_1);
  }

  v3 = qword_280E02678;

  return v3;
}

void __56__HFFaucetValveServiceState_requiredCharacteristicTypes__block_invoke_2()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCF908];
  v6[0] = *MEMORY[0x277CCF748];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E02678;
  qword_280E02678 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)optionalCharacteristicTypes
{
  if (qword_280E02680 != -1)
  {
    dispatch_once(&qword_280E02680, &__block_literal_global_118_1);
  }

  v3 = qword_280E02688;

  return v3;
}

void __56__HFFaucetValveServiceState_optionalCharacteristicTypes__block_invoke_2()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CCF810];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E02688;
  qword_280E02688 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_typeForSystemActiveState:(BOOL)a3 heaterCoolerActiveState:(id)a4 usageState:(int64_t)a5 currentHeaterCoolerState:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (a5 == 1)
  {
    if (v9)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }
  }

  else if (!a5)
  {
    if (v9)
    {
      v6 = 3;
    }

    else if (v10 && [v10 BOOLValue])
    {
      if (v11 && [v11 unsignedIntegerValue] == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (HFFaucetValveServiceState)initWithBatchReadResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 allServices];
  v6 = [v5 na_any:&__block_literal_global_121_2];

  v7 = MEMORY[0x277CD0F38];
  if (v6)
  {
    v7 = MEMORY[0x277CD0E48];
  }

  v8 = *MEMORY[0x277CCF748];
  v9 = [MEMORY[0x277CBEB98] setWithObject:*v7];
  v10 = [v4 responseForCharacteristicType:v8 inServicesOfTypes:v9];
  v11 = [v10 valueWithExpectedClass:objc_opt_class()];

  v12 = [v4 responseForCharacteristicType:*MEMORY[0x277CCF908]];
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
    v15 = 0;
  }

  else
  {
    if (qword_280E02690 != -1)
    {
      dispatch_once(&qword_280E02690, &__block_literal_global_126_1);
    }

    v16 = qword_280E02698;
    v17 = [v4 responseForCharacteristicType:v8 inServicesOfTypes:v16];
    v18 = [v17 valueWithExpectedClass:objc_opt_class()];

    v19 = *MEMORY[0x277CCF810];
    if (qword_280E026A0 != -1)
    {
      dispatch_once(&qword_280E026A0, &__block_literal_global_130_0);
    }

    v20 = qword_280E026A8;
    v21 = [v4 responseForCharacteristicType:v19 inServicesOfTypes:v20];
    v22 = [v21 valueWithExpectedClass:objc_opt_class()];

    v25.receiver = self;
    v25.super_class = HFFaucetValveServiceState;
    v23 = [(HFFaucetValveServiceState *)&v25 init];
    if (v23)
    {
      v23->_type = [objc_opt_class() _typeForSystemActiveState:objc_msgSend(v11 heaterCoolerActiveState:"BOOLValue") usageState:v18 currentHeaterCoolerState:{objc_msgSend(v13, "unsignedIntegerValue"), v22}];
    }

    self = v23;

    v15 = self;
  }

  return v15;
}

uint64_t __55__HFFaucetValveServiceState_initWithBatchReadResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CD0E48]];

  return v3;
}

void __55__HFFaucetValveServiceState_initWithBatchReadResponse___block_invoke_3()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CD0E60];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E02698;
  qword_280E02698 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

void __55__HFFaucetValveServiceState_initWithBatchReadResponse___block_invoke_5()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CD0E60];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E026A8;
  qword_280E026A8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)stateTypeIdentifier
{
  v2 = [(HFFaucetValveServiceState *)self type];
  if (v2 - 1 > 4)
  {
    return @"Off";
  }

  else
  {
    return off_277DFEB90[v2 - 1];
  }
}

- (int64_t)primaryState
{
  v2 = [(HFFaucetValveServiceState *)self type];
  if (v2 == 3 || v2 == 0)
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
  if ([(HFFaucetValveServiceState *)self type])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

@end