@interface HMDUserDefaultDataSource
- (BOOL)isCurrentUser:(id)user;
- (BOOL)isThisDeviceDesignatedFMFDevice;
- (HMDUserDefaultDataSource)init;
- (NSNotificationCenter)notificationCenter;
- (NSString)fmfDeviceName;
- (id)userDataBackingStoreControllerWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name shareMessenger:(id)messenger;
- (id)userDataControllerWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0;
- (void)applyVoucherForModel:(id)model withModelID:(id)d eventType:(int64_t)type storeType:(unint64_t)storeType;
@end

@implementation HMDUserDefaultDataSource

- (id)userDataControllerWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0
{
  LODWORD(v32) = user;
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
  sourceCopy = source;
  swift_unknownObjectRetain();
  queueCopy = queue;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = sub_22A4DB77C();
  v24 = sub_22A4DB77C();
  LOBYTE(v29) = v32;
  v32 = [v31 initWithDelegate:delegate dataSource:sourceCopy queue:queueCopy userID:v23 homeID:v24 sharedSettingsController:controller privateSettingsController:settingsController isCurrentUser:v29];
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

- (id)userDataBackingStoreControllerWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name shareMessenger:(id)messenger
{
  sub_22A4DD5EC();
  v9 = objc_opt_self();
  swift_unknownObjectRetain();
  queueCopy = queue;
  messengerCopy = messenger;
  defaultDatabase = [v9 defaultDatabase];
  v13 = objc_allocWithZone(HMDUserSettingsBackingStoreController);
  v14 = sub_22A4DD5AC();

  v15 = [v13 initWithDelegate:delegate queue:queueCopy zoneName:v14 database:defaultDatabase shareMessenger:messengerCopy];
  swift_unknownObjectRelease();

  return v15;
}

- (void)applyVoucherForModel:(id)model withModelID:(id)d eventType:(int64_t)type storeType:(unint64_t)storeType
{
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v14 = objc_opt_self();
  modelCopy = model;
  sharedInstance = [v14 sharedInstance];
  v17 = sub_22A4DB77C();
  v18 = [sharedInstance applyVoucherForModel:modelCopy withModelID:v17 eventType:type storeType:storeType];

  (*(v10 + 8))(v13, v9);
}

- (BOOL)isCurrentUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  v6 = sub_22979D468(userCopy);

  return v6 & 1;
}

- (NSNotificationCenter)notificationCenter
{
  defaultCenter = [objc_opt_self() defaultCenter];

  return defaultCenter;
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