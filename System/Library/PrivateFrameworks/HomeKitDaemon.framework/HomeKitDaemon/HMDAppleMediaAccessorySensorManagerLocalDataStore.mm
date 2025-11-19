@interface HMDAppleMediaAccessorySensorManagerLocalDataStore
- (HMDAppleMediaAccessorySensorManagerLocalDataStore)init;
- (HMDAppleMediaAccessorySensorManagerLocalDataStore)initWithUserDefaults:(id)a3;
- (void)fetchSensorUUIDWithCompletion:(id)a3;
- (void)saveSensorUUID:(id)a3 completion:(id)a4;
@end

@implementation HMDAppleMediaAccessorySensorManagerLocalDataStore

- (void)fetchSensorUUIDWithCompletion:(id)a3
{
  v7 = a3;
  v4 = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)self defaults];
  v5 = [v4 stringForKey:@"HMMediaAccessorySensorUUID"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
}

- (void)saveSensorUUID:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)self defaults];
  v8 = [v6 UUIDString];

  [v7 setValue:v8 forKey:@"HMMediaAccessorySensorUUID"];
  v9 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, 0);
    v9 = v10;
  }
}

- (HMDAppleMediaAccessorySensorManagerLocalDataStore)initWithUserDefaults:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDAppleMediaAccessorySensorManagerLocalDataStore;
  v5 = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)v5 setDefaults:v4];
  }

  return v6;
}

- (HMDAppleMediaAccessorySensorManagerLocalDataStore)init
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [(HMDAppleMediaAccessorySensorManagerLocalDataStore *)self initWithUserDefaults:v3];

  return v4;
}

@end