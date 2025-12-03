@interface HMDHAPAccessoryRemoteWriteTask
- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list;
- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)context requests:(id)requests completion:(id)completion;
- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)context requests:(id)requests delegateDevice:(id)device timeout:(double)timeout completion:(id)completion;
@end

@implementation HMDHAPAccessoryRemoteWriteTask

- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list
{
  requestCopy = request;
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = requestCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = v8;
  if (v8)
  {
    characteristic = [v8 characteristic];
    service = [v9 service];
    instanceID = [service instanceID];
    stringValue = [instanceID stringValue];

    instanceID2 = [characteristic instanceID];
    stringValue2 = [instanceID2 stringValue];

    dictionary = [listCopy hmf_mutableDictionaryForKey:stringValue];
    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [listCopy setObject:dictionary forKeyedSubscript:stringValue];
    }

    v30 = requestCopy;
    v31 = stringValue;
    v32 = listCopy;
    authorizationData = [characteristic authorizationData];
    if (authorizationData)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", stringValue2, @"kAuthorizationDataKey"];
      [dictionary setObject:authorizationData forKeyedSubscript:v18];
    }

    accessory = [characteristic accessory];
    home = [accessory home];
    currentUser = [home currentUser];
    [currentUser notificationContextHAPIdentifier];
    v23 = v22 = stringValue2;
    v24 = [characteristic contextDataForWriteRequestWithIdentifier:v23];

    if (v24)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v22, *MEMORY[0x277CD2120]];
      [dictionary setObject:v24 forKeyedSubscript:v25];
    }

    value = [v9 value];
    [dictionary setObject:value forKeyedSubscript:v22];

    v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "includeResponseValue")}];
    [dictionary setObject:v27 forKeyedSubscript:@"HMDCharacteristicWriteRequestIncludeResponseValueKey"];

    v28 = [v9 requestType] == 1;
    listCopy = v32;
    requestCopy = v30;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)context requests:(id)requests delegateDevice:(id)device timeout:(double)timeout completion:(id)completion
{
  v8.receiver = self;
  v8.super_class = HMDHAPAccessoryRemoteWriteTask;
  return [(HMDHAPAccessoryRemoteOperationTask *)&v8 initWithContext:context remoteMessageName:@"kMultipleCharacteristicWriteRequestKey" requests:requests delegateDevice:device timeout:completion completion:timeout];
}

- (HMDHAPAccessoryRemoteWriteTask)initWithContext:(id)context requests:(id)requests completion:(id)completion
{
  v8 = MEMORY[0x277D0F8D0];
  completionCopy = completion;
  requestsCopy = requests;
  contextCopy = context;
  sharedPreferences = [v8 sharedPreferences];
  v13 = [sharedPreferences preferenceForKey:@"AccessoryReaderWriterMessageDefaultTimeout"];
  numberValue = [v13 numberValue];
  [numberValue doubleValue];
  v16 = v15;

  v17 = [(HMDHAPAccessoryRemoteWriteTask *)self initWithContext:contextCopy requests:requestsCopy delegateDevice:0 timeout:completionCopy completion:v16];
  return v17;
}

@end