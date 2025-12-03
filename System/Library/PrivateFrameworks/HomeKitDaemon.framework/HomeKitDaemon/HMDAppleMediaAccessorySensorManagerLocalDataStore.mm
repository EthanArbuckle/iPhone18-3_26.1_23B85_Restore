@interface HMDAppleMediaAccessorySensorManagerLocalDataStore
- (HMDAppleMediaAccessorySensorManagerLocalDataStore)init;
- (HMDAppleMediaAccessorySensorManagerLocalDataStore)initWithUserDefaults:(id)defaults;
- (void)fetchSensorUUIDWithCompletion:(id)completion;
- (void)saveSensorUUID:(id)d completion:(id)completion;
@end

@implementation HMDAppleMediaAccessorySensorManagerLocalDataStore

- (void)fetchSensorUUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  defaults = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)self defaults];
  v5 = [defaults stringForKey:@"HMMediaAccessorySensorUUID"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  completionCopy[2](completionCopy, v6);
}

- (void)saveSensorUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  defaults = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)self defaults];
  uUIDString = [dCopy UUIDString];

  [defaults setValue:uUIDString forKey:@"HMMediaAccessorySensorUUID"];
  v9 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v9 = completionCopy;
  }
}

- (HMDAppleMediaAccessorySensorManagerLocalDataStore)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v8.receiver = self;
  v8.super_class = HMDAppleMediaAccessorySensorManagerLocalDataStore;
  v5 = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)v5 setDefaults:defaultsCopy];
  }

  return v6;
}

- (HMDAppleMediaAccessorySensorManagerLocalDataStore)init
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)self initWithUserDefaults:standardUserDefaults];

  return v4;
}

@end