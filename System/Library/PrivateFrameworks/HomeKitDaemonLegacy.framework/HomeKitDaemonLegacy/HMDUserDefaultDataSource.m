@interface HMDUserDefaultDataSource
- (BOOL)isCurrentUser:(id)a3;
- (BOOL)isThisDeviceDesignatedFMFDevice;
- (HMDUserDefaultDataSource)init;
- (NSNotificationCenter)notificationCenter;
- (NSString)fmfDeviceName;
- (id)userDataBackingStoreControllerWithDelegate:(id)a3 queue:(id)a4 zoneName:(id)a5 shareMessenger:(id)a6;
- (id)userDataControllerWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 isCurrentUser:(BOOL)a10;
@end

@implementation HMDUserDefaultDataSource

- (id)userDataControllerWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 isCurrentUser:(BOOL)a10
{
  LODWORD(v32) = a10;
  v33 = sub_253CCFF58();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_253CCFF38();
  sub_253CCFF38();
  v31 = objc_allocWithZone(HMDUserDataController);
  swift_unknownObjectRetain();
  v21 = a4;
  swift_unknownObjectRetain();
  v22 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = sub_253CCFF18();
  v24 = sub_253CCFF18();
  LOBYTE(v29) = v32;
  v32 = [v31 initWithDelegate:a3 dataSource:v21 queue:v22 userID:v23 homeID:v24 sharedSettingsController:a8 privateSettingsController:a9 isCurrentUser:v29];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v25 = *(v14 + 8);
  v26 = v33;
  v25(v18, v33);
  v25(v20, v26);
  v27 = v32;

  return v27;
}

- (id)userDataBackingStoreControllerWithDelegate:(id)a3 queue:(id)a4 zoneName:(id)a5 shareMessenger:(id)a6
{
  sub_253CD0968();
  v9 = objc_opt_self();
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a6;
  v12 = [v9 defaultDatabase];
  v13 = objc_allocWithZone(HMDUserSettingsBackingStoreController);
  v14 = sub_253CD0938();

  v15 = [v13 initWithDelegate:a3 queue:v10 zoneName:v14 database:v12 shareMessenger:v11];
  swift_unknownObjectRelease();

  return v15;
}

- (BOOL)isCurrentUser:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_25322E4AC(v4);

  return v6 & 1;
}

- (NSNotificationCenter)notificationCenter
{
  v2 = [objc_opt_self() defaultCenter];

  return v2;
}

- (BOOL)isThisDeviceDesignatedFMFDevice
{
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  v2 = qword_281532BF0;
  os_unfair_lock_lock((qword_281532BF0 + 128));
  v3 = *(v2 + 136) == 2;
  os_unfair_lock_unlock((v2 + 128));
  return v3;
}

- (NSString)fmfDeviceName
{
  sub_25322E5B4();
  if (v2)
  {
    v3 = sub_253CD0938();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDUserDefaultDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDUserDefaultDataSource;
  return [(HMDUserDefaultDataSource *)&v3 init];
}

@end