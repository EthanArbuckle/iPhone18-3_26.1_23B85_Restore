@interface HMDHAPAccessoryRemoteReadTask
- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list;
- (HMDHAPAccessoryRemoteReadTask)initWithContext:(id)context requests:(id)requests delegateDevice:(id)device completion:(id)completion;
@end

@implementation HMDHAPAccessoryRemoteReadTask

- (BOOL)_appendServiceListWithRequest:(id)request serviceList:(id)list
{
  listCopy = list;
  requestCopy = request;
  service = [requestCopy service];
  instanceID = [service instanceID];

  characteristic = [requestCopy characteristic];

  instanceID2 = [characteristic instanceID];

  stringValue = [instanceID stringValue];
  array = [listCopy hmf_mutableArrayForKey:stringValue];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    stringValue2 = [instanceID stringValue];
    [listCopy setObject:array forKey:stringValue2];
  }

  [array addObject:instanceID2];

  return 0;
}

- (HMDHAPAccessoryRemoteReadTask)initWithContext:(id)context requests:(id)requests delegateDevice:(id)device completion:(id)completion
{
  v10 = MEMORY[0x277D0F8D0];
  completionCopy = completion;
  deviceCopy = device;
  requestsCopy = requests;
  contextCopy = context;
  sharedPreferences = [v10 sharedPreferences];
  v16 = [sharedPreferences preferenceForKey:@"AccessoryReaderWriterMessageDefaultTimeout"];
  numberValue = [v16 numberValue];
  [numberValue doubleValue];
  v19 = v18;

  v22.receiver = self;
  v22.super_class = HMDHAPAccessoryRemoteReadTask;
  v20 = [(HMDHAPAccessoryRemoteOperationTask *)&v22 initWithContext:contextCopy remoteMessageName:@"kMultipleCharacteristicReadRequestKey" requests:requestsCopy delegateDevice:deviceCopy timeout:completionCopy completion:v19];

  return v20;
}

@end