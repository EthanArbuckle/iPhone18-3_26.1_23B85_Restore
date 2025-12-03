@interface HUHomePodServiceDetails
+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type;
+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius;
+ (id)SAHomePodCardWithQuickControlsForDeviceUUID:(id)d inHomeWithUUID:(id)iD cornerRadius:(double)radius;
+ (id)homePodCardForDeviceUUID:(id)d inHomeWithUUID:(id)iD;
+ (id)homePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type;
+ (id)homePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius;
+ (id)homePodCardWithQuickControlsForDeviceUUID:(id)d inHomeWithUUID:(id)iD cornerRadius:(double)radius;
+ (id)homePodDetailsViewControllerForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius;
+ (void)_homePodDetailsViewControllerForMediaRoutingIdentifier:(NSString *)identifier deviceName:(NSString *)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius completionHandler:(id)handler;
- (HUHomePodServiceDetails)init;
@end

@implementation HUHomePodServiceDetails

+ (id)homePodCardWithQuickControlsForDeviceUUID:(id)d inHomeWithUUID:(id)iD cornerRadius:(double)radius
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v31 = &v28 - v16;
  sub_20D5637E8();
  v30 = v14;
  sub_20D5637E8();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v18 = *(v7 + 16);
  v18(v11, v17, v6);
  v18(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v6);
  v19 = *(v7 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = (v8 + v19 + v20) & ~v19;
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = *(v7 + 32);
  v24(v23 + v20, v11, v6);
  v24(v23 + v21, v28, v6);
  *(v23 + v22) = ObjCClassMetadata;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = radius;
  sub_20CECF940(0, &qword_27C820940);
  v25 = sub_20D5659C8();

  v26 = *(v7 + 8);
  v26(v30, v6);
  v26(v31, v6);

  return v25;
}

+ (id)SAHomePodCardWithQuickControlsForDeviceUUID:(id)d inHomeWithUUID:(id)iD cornerRadius:(double)radius
{
  v7 = sub_20D563818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_20D5637E8();
  sub_20D5637E8();
  sharedInstance = [objc_opt_self() sharedInstance];
  [sharedInstance setUseSAConfig_];
  v15 = sub_20D5637C8();
  v16 = sub_20D5637C8();
  v17 = [self homePodCardWithQuickControlsForDeviceUUID:v15 inHomeWithUUID:v16 cornerRadius:radius];

  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);

  return v17;
}

+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type
{
  v5 = [self SAHomePodCardForMediaRoutingIdentifier:identifier deviceName:name mediaAccessoryItemType:type cornerRadius:20.0];

  return v5;
}

+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius
{
  v11 = objc_opt_self();
  identifierCopy = identifier;
  nameCopy = name;
  sharedInstance = [v11 sharedInstance];
  [sharedInstance setUseSAConfig_];
  v15 = [self homePodCardForMediaRoutingIdentifier:identifierCopy deviceName:nameCopy mediaAccessoryItemType:type cornerRadius:radius];

  return v15;
}

+ (id)homePodCardForDeviceUUID:(id)d inHomeWithUUID:(id)iD
{
  v4 = sub_20D563818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  sub_20D5637E8();
  sub_20D5637E8();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v17 = *(v5 + 16);
  v17(v9, v15, v4);
  v17(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v4);
  v18 = *(v5 + 80);
  v19 = (v18 + 24) & ~v18;
  v20 = (v6 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  *(v21 + 16) = ObjCClassMetadata;
  v22 = *(v5 + 32);
  v22(v21 + v19, v9, v4);
  v22(v21 + v20, v27, v4);
  sub_20CECF940(0, &qword_27C81EC50);
  v23 = sub_20D5659C8();

  v24 = *(v5 + 8);
  v24(v12, v4);
  v24(v15, v4);

  return v23;
}

+ (id)homePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type
{
  v5 = [self homePodCardForMediaRoutingIdentifier:identifier deviceName:name mediaAccessoryItemType:type cornerRadius:20.0];

  return v5;
}

+ (id)homePodCardForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius
{
  v8 = sub_20D567838();
  v10 = v9;
  v11 = sub_20D567838();
  v13 = v12;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v15 = swift_allocObject();
  *(v15 + 16) = ObjCClassMetadata;
  *(v15 + 24) = v8;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  *(v15 + 48) = v13;
  *(v15 + 56) = type;
  *(v15 + 64) = radius;
  sub_20CECF940(0, &qword_27C820940);
  v16 = sub_20D5659C8();

  return v16;
}

+ (void)_homePodDetailsViewControllerForMediaRoutingIdentifier:(NSString *)identifier deviceName:(NSString *)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = identifier;
  *(v17 + 24) = name;
  *(v17 + 32) = type;
  *(v17 + 40) = radius;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_20D567C58();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_20D5C7C80;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_20D5C5200;
  v20[5] = v19;
  identifierCopy = identifier;
  nameCopy = name;
  sub_20D11C1C8(0, 0, v15, &unk_20D5BCD00, v20);
}

+ (id)homePodDetailsViewControllerForMediaRoutingIdentifier:(id)identifier deviceName:(id)name mediaAccessoryItemType:(int64_t)type cornerRadius:(double)radius
{
  v8 = sub_20D567838();
  v10 = v9;
  v11 = sub_20D567838();
  v13 = sub_20D091C20(radius, v8, v10, v11, v12, type);

  return v13;
}

- (HUHomePodServiceDetails)init
{
  v3.receiver = self;
  v3.super_class = HUHomePodServiceDetails;
  return [(HUHomePodServiceDetails *)&v3 init];
}

@end