@interface HMDHAPAccessoryLocalReadTask
- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion;
@end

@implementation HMDHAPAccessoryLocalReadTask

- (void)_dispatchToAccessory:(id)accessory requests:(id)requests logEvent:(id)event completion:(id)completion
{
  completionCopy = completion;
  eventCopy = event;
  requestsCopy = requests;
  accessoryCopy = accessory;
  sourceType = [(HMDHAPAccessoryTask *)self sourceType];
  context = [(HMDHAPAccessoryTask *)self context];
  requestMessage = [context requestMessage];
  workQueue = [(HMDHAPAccessoryTask *)self workQueue];
  [accessoryCopy readCharacteristicValues:requestsCopy source:sourceType message:requestMessage queue:workQueue logEvent:eventCopy completionHandler:completionCopy];
}

@end