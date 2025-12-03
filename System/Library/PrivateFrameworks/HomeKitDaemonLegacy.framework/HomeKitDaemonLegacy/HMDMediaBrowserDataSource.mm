@interface HMDMediaBrowserDataSource
- (HMDDevice)currentDevice;
- (id)createUnassociatedAppleMediaAccessory:(id)accessory name:(id)name category:(id)category productColor:(int64_t)color idsIdentifierString:(id)string rawAccessoryCapabilities:(id)capabilities rawResidentCapabilities:(id)residentCapabilities messageDispatcher:(id)self0;
- (id)createUnassociatedHomePodAccessory:(id)accessory name:(id)name category:(id)category productColor:(int64_t)color idsIdentifierString:(id)string requiredPairingCapabilities:(unint64_t)capabilities minimumPairingSoftware:(id)software rawAccessoryCapabilities:(id)self0 rawResidentCapabilities:(id)self1 messageDispatcher:(id)self2;
- (id)performOperation:(id)operation;
@end

@implementation HMDMediaBrowserDataSource

- (id)createUnassociatedHomePodAccessory:(id)accessory name:(id)name category:(id)category productColor:(int64_t)color idsIdentifierString:(id)string requiredPairingCapabilities:(unint64_t)capabilities minimumPairingSoftware:(id)software rawAccessoryCapabilities:(id)self0 rawResidentCapabilities:(id)self1 messageDispatcher:(id)self2
{
  dispatcherCopy = dispatcher;
  residentCapabilitiesCopy = residentCapabilities;
  accessoryCapabilitiesCopy = accessoryCapabilities;
  softwareCopy = software;
  stringCopy = string;
  categoryCopy = category;
  nameCopy = name;
  accessoryCopy = accessory;
  v25 = [[HMDUnassociatedAppleHomePodAccessory alloc] initWithIdentifier:accessoryCopy name:nameCopy category:categoryCopy productColor:color idsIdentifierString:stringCopy requiredPairingCapabilities:capabilities minimumPairingSoftware:softwareCopy rawAccessoryCapabilities:accessoryCapabilitiesCopy rawResidentCapabilities:residentCapabilitiesCopy messageDispatcher:dispatcherCopy];

  return v25;
}

- (id)createUnassociatedAppleMediaAccessory:(id)accessory name:(id)name category:(id)category productColor:(int64_t)color idsIdentifierString:(id)string rawAccessoryCapabilities:(id)capabilities rawResidentCapabilities:(id)residentCapabilities messageDispatcher:(id)self0
{
  dispatcherCopy = dispatcher;
  residentCapabilitiesCopy = residentCapabilities;
  capabilitiesCopy = capabilities;
  stringCopy = string;
  categoryCopy = category;
  nameCopy = name;
  accessoryCopy = accessory;
  v23 = [[HMDUnassociatedAppleMediaAccessory alloc] initWithIdentifier:accessoryCopy name:nameCopy category:categoryCopy productColor:color idsIdentifierString:stringCopy rawAccessoryCapabilities:capabilitiesCopy rawResidentCapabilities:residentCapabilitiesCopy messageDispatcher:dispatcherCopy];

  return v23;
}

- (id)performOperation:(id)operation
{
  v3 = MEMORY[0x277D0F8F0];
  operationCopy = operation;
  defaultScheduler = [v3 defaultScheduler];
  v6 = [defaultScheduler performOperation:operationCopy];

  return v6;
}

- (HMDDevice)currentDevice
{
  v2 = +[HMDAppleAccountManager sharedManager];
  device = [v2 device];

  return device;
}

@end