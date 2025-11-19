@interface HMDUserDefaultDataSource
- (BOOL)isCurrentUser:(id)a3;
- (BOOL)isThisDeviceDesignatedFMFDevice;
- (HMDUserDefaultDataSource)init;
- (NSNotificationCenter)notificationCenter;
- (NSString)fmfDeviceName;
- (id)userDataBackingStoreControllerWithDelegate:(id)a3 queue:(id)a4 zoneName:(id)a5 shareMessenger:(id)a6;
- (id)userDataControllerWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 isCurrentUser:(BOOL)a10;
- (void)applyVoucherForModel:(id)a3 withModelID:(id)a4 eventType:(int64_t)a5 storeType:(unint64_t)a6;
@end

@implementation HMDUserDefaultDataSource

- (id)userDataControllerWithDelegate:(id)a3 dataSource:(id)a4 queue:(id)a5 userID:(id)a6 homeID:(id)a7 sharedSettingsController:(id)a8 privateSettingsController:(id)a9 isCurrentUser:(BOOL)a10
{
  LODWORD(v32) = a10;
  v33 = sub_22A4DB7DC();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v33);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_22A4DB79C();
  sub_22A4DB79C();
  v31 = objc_allocWithZone(HMDUserDataController);
  swift_unknownObjectRetain();
  v21 = a4;
  swift_unknownObjectRetain();
  v22 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = sub_22A4DB77C();
  v24 = sub_22A4DB77C();
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
  sub_22A4DD5EC();
  v9 = objc_opt_self();
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a6;
  v12 = [v9 defaultDatabase];
  v13 = objc_allocWithZone(HMDUserSettingsBackingStoreController);
  v14 = sub_22A4DD5AC();

  v15 = [v13 initWithDelegate:a3 queue:v10 zoneName:v14 database:v12 shareMessenger:v11];
  swift_unknownObjectRelease();

  return v15;
}

- (void)applyVoucherForModel:(id)a3 withModelID:(id)a4 eventType:(int64_t)a5 storeType:(unint64_t)a6
{
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v14 = objc_opt_self();
  v15 = a3;
  v16 = [v14 sharedInstance];
  v17 = sub_22A4DB77C();
  v18 = [v16 applyVoucherForModel:v15 withModelID:v17 eventType:a5 storeType:a6];

  (*(v10 + 8))(v13, v9);
}

- (BOOL)isCurrentUser:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_22979D468(v4);

  return v6 & 1;
}

- (NSNotificationCenter)notificationCenter
{
  v2 = [objc_opt_self() defaultCenter];

  return v2;
}

- (BOOL)isThisDeviceDesignatedFMFDevice
{
  if (qword_281402D50 != -1)
  {
    swift_once();
  }

  v2 = qword_2814050C8;
  os_unfair_lock_lock((qword_2814050C8 + 128));
  v3 = *(v2 + 136) == 2;
  os_unfair_lock_unlock((v2 + 128));
  return v3;
}

- (NSString)fmfDeviceName
{
  sub_22979D56C();
  if (v2)
  {
    v3 = sub_22A4DD5AC();
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