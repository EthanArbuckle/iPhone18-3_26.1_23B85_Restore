@interface HFNetworkRouterServiceState
+ (id)optionalCharacteristicTypes;
+ (unint64_t)_typeForStatus:(unint64_t)status;
- (HFNetworkRouterServiceState)initWithBatchReadResponse:(id)response;
- (id)stateTypeIdentifier;
- (int64_t)primaryState;
- (int64_t)priority;
@end

@implementation HFNetworkRouterServiceState

+ (id)optionalCharacteristicTypes
{
  if (qword_280E026E0 != -1)
  {
    dispatch_once(&qword_280E026E0, &__block_literal_global_216_2);
  }

  v3 = qword_280E026E8;

  return v3;
}

void __58__HFNetworkRouterServiceState_optionalCharacteristicTypes__block_invoke_2()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCFBC8];
  v6[0] = *MEMORY[0x277CCFA28];
  v6[1] = v1;
  v6[2] = *MEMORY[0x277CCFBB8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E026E8;
  qword_280E026E8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)_typeForStatus:(unint64_t)status
{
  v3 = 1;
  v4 = 3;
  if ((status & 0x20000000) == 0)
  {
    v4 = 4;
  }

  v5 = 2;
  if ((status & 0x40000002) == 0)
  {
    v5 = v4;
  }

  if ((status & 1) == 0)
  {
    v3 = v5;
  }

  if (status)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (HFNetworkRouterServiceState)initWithBatchReadResponse:(id)response
{
  v4 = *MEMORY[0x277CCFA28];
  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CD0F48];
  responseCopy = response;
  v8 = [v5 setWithObject:v6];
  v9 = [responseCopy responseForCharacteristicType:v4 inServicesOfTypes:v8];
  v10 = [v9 valueWithExpectedClass:objc_opt_class()];

  v11 = *MEMORY[0x277CCFBC8];
  v12 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0F50]];
  v13 = [responseCopy responseForCharacteristicType:v11 inServicesOfTypes:v12];
  v14 = [v13 valueWithExpectedClass:objc_opt_class()];

  v15 = *MEMORY[0x277CCFBB8];
  v16 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v17 = [responseCopy responseForCharacteristicType:v15 inServicesOfTypes:v16];

  v18 = [v17 valueWithExpectedClass:objc_opt_class()];

  if (v10)
  {
    v19 = v18 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (v20 == 1 && v14 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    if (v20)
    {
      integerValue = [v14 integerValue];
      v23 = [MEMORY[0x277CD1650] networkRouterStatusFromWiFiSatelliteStatus:integerValue];
    }

    else
    {
      integerValue2 = [v10 integerValue];
      v23 = [MEMORY[0x277CD1650] networkRouterStatusFromRouterStatus:integerValue2 wanStatusListData:v18];
    }

    v26 = v23;
    v30.receiver = self;
    v30.super_class = HFNetworkRouterServiceState;
    v27 = [(HFNetworkRouterServiceState *)&v30 init];
    v28 = v27;
    if (v27)
    {
      v27->_underlyingStatus = v26;
      v27->_type = [objc_opt_class() _typeForStatus:v26];
    }

    self = v28;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)stateTypeIdentifier
{
  type = [(HFNetworkRouterServiceState *)self type];
  v3 = @"Connected";
  if (type > 2)
  {
    if (type == 3)
    {
      v3 = @"NotReady";
    }

    else if (type == 4)
    {
      v3 = +[HFNetworkRouterServiceState combinedStateTypeIdentifier];
    }
  }

  else
  {
    v4 = @"NotConnected";
    if (type != 2)
    {
      v4 = @"Connected";
    }

    if (type == 1)
    {
      v3 = @"Unknown";
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

- (int64_t)primaryState
{
  if ([(HFNetworkRouterServiceState *)self type])
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
  if ([(HFNetworkRouterServiceState *)self type])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

@end