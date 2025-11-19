@interface HMDMediaBrowserDataSource
- (HMDDevice)currentDevice;
- (id)createUnassociatedAppleMediaAccessory:(id)a3 name:(id)a4 category:(id)a5 productColor:(int64_t)a6 idsIdentifierString:(id)a7 rawAccessoryCapabilities:(id)a8 rawResidentCapabilities:(id)a9 messageDispatcher:(id)a10;
- (id)createUnassociatedHomePodAccessory:(id)a3 name:(id)a4 category:(id)a5 productColor:(int64_t)a6 idsIdentifierString:(id)a7 requiredPairingCapabilities:(unint64_t)a8 minimumPairingSoftware:(id)a9 rawAccessoryCapabilities:(id)a10 rawResidentCapabilities:(id)a11 messageDispatcher:(id)a12;
- (id)performOperation:(id)a3;
@end

@implementation HMDMediaBrowserDataSource

- (id)createUnassociatedHomePodAccessory:(id)a3 name:(id)a4 category:(id)a5 productColor:(int64_t)a6 idsIdentifierString:(id)a7 requiredPairingCapabilities:(unint64_t)a8 minimumPairingSoftware:(id)a9 rawAccessoryCapabilities:(id)a10 rawResidentCapabilities:(id)a11 messageDispatcher:(id)a12
{
  v17 = a12;
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a7;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = [[HMDUnassociatedAppleHomePodAccessory alloc] initWithIdentifier:v24 name:v23 category:v22 productColor:a6 idsIdentifierString:v21 requiredPairingCapabilities:a8 minimumPairingSoftware:v20 rawAccessoryCapabilities:v19 rawResidentCapabilities:v18 messageDispatcher:v17];

  return v25;
}

- (id)createUnassociatedAppleMediaAccessory:(id)a3 name:(id)a4 category:(id)a5 productColor:(int64_t)a6 idsIdentifierString:(id)a7 rawAccessoryCapabilities:(id)a8 rawResidentCapabilities:(id)a9 messageDispatcher:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[HMDUnassociatedAppleMediaAccessory alloc] initWithIdentifier:v22 name:v21 category:v20 productColor:a6 idsIdentifierString:v19 rawAccessoryCapabilities:v18 rawResidentCapabilities:v17 messageDispatcher:v16];

  return v23;
}

- (id)performOperation:(id)a3
{
  v3 = MEMORY[0x277D0F8F0];
  v4 = a3;
  v5 = [v3 defaultScheduler];
  v6 = [v5 performOperation:v4];

  return v6;
}

- (HMDDevice)currentDevice
{
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 device];

  return v3;
}

@end