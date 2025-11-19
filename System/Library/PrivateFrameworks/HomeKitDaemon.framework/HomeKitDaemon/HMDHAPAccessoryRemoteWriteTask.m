@interface HMDHAPAccessoryRemoteWriteTask
- (BOOL)_appendServiceListWithRequest:(id)a3 serviceList:(id)a4;
- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)a3 requests:(id)a4 completion:(id)a5;
- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)a3 requests:(id)a4 delegateDevice:(id)a5 timeout:(double)a6 completion:(id)a7;
@end

@implementation HMDHAPAccessoryRemoteWriteTask

- (BOOL)_appendServiceListWithRequest:(id)a3 serviceList:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 characteristic];
    v11 = [v9 service];
    v12 = [v11 instanceID];
    v13 = [v12 stringValue];

    v14 = [v10 instanceID];
    v15 = [v14 stringValue];

    v16 = [v6 hmf_mutableDictionaryForKey:v13];
    if (!v16)
    {
      v16 = [MEMORY[0x277CBEB38] dictionary];
      [v6 setObject:v16 forKeyedSubscript:v13];
    }

    v30 = v5;
    v31 = v13;
    v32 = v6;
    v17 = [v10 authorizationData];
    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v15, @"kAuthorizationDataKey"];
      [v16 setObject:v17 forKeyedSubscript:v18];
    }

    v19 = [v10 accessory];
    v20 = [v19 home];
    v21 = [v20 currentUser];
    [v21 notificationContextHAPIdentifier];
    v23 = v22 = v15;
    v24 = [v10 contextDataForWriteRequestWithIdentifier:v23];

    if (v24)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v22, *MEMORY[0x277CD2120]];
      [v16 setObject:v24 forKeyedSubscript:v25];
    }

    v26 = [v9 value];
    [v16 setObject:v26 forKeyedSubscript:v22];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "includeResponseValue")}];
    [v16 setObject:v27 forKeyedSubscript:@"HMDCharacteristicWriteRequestIncludeResponseValueKey"];

    v28 = [v9 requestType] == 1;
    v6 = v32;
    v5 = v30;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)a3 requests:(id)a4 delegateDevice:(id)a5 timeout:(double)a6 completion:(id)a7
{
  v8.receiver = self;
  v8.super_class = HMDHAPAccessoryRemoteWriteTask;
  return [(HMDHAPAccessoryRemoteOperationTask *)&v8 initWithContext:a3 remoteMessageName:@"kMultipleCharacteristicWriteRequestKey" requests:a4 delegateDevice:a5 timeout:a7 completion:a6];
}

- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)a3 requests:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277D0F8D0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 sharedPreferences];
  v13 = [v12 preferenceForKey:@"AccessoryReaderWriterMessageDefaultTimeout"];
  v14 = [v13 numberValue];
  [v14 doubleValue];
  v16 = v15;

  v17 = [(HMDHAPAccessoryRemoteWriteTask *)self initWithContext:v11 requests:v10 delegateDevice:0 timeout:v9 completion:v16];
  return v17;
}

@end