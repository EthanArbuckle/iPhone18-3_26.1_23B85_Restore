@interface HUHomePodServiceDetails
+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5;
+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6;
+ (id)SAHomePodCardWithQuickControlsForDeviceUUID:(id)a3 inHomeWithUUID:(id)a4 cornerRadius:(double)a5;
+ (id)homePodCardForDeviceUUID:(id)a3 inHomeWithUUID:(id)a4;
+ (id)homePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5;
+ (id)homePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6;
+ (id)homePodCardWithQuickControlsForDeviceUUID:(id)a3 inHomeWithUUID:(id)a4 cornerRadius:(double)a5;
+ (id)homePodDetailsViewControllerForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6;
+ (void)_homePodDetailsViewControllerForMediaRoutingIdentifier:(NSString *)a3 deviceName:(NSString *)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6 completionHandler:(id)a7;
- (HUHomePodServiceDetails)init;
@end

@implementation HUHomePodServiceDetails

+ (id)homePodCardWithQuickControlsForDeviceUUID:(id)a3 inHomeWithUUID:(id)a4 cornerRadius:(double)a5
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
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  sub_20CECF940(0, &qword_27C820940);
  v25 = sub_20D5659C8();

  v26 = *(v7 + 8);
  v26(v30, v6);
  v26(v31, v6);

  return v25;
}

+ (id)SAHomePodCardWithQuickControlsForDeviceUUID:(id)a3 inHomeWithUUID:(id)a4 cornerRadius:(double)a5
{
  v7 = sub_20D563818();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_20D5637E8();
  sub_20D5637E8();
  v14 = [objc_opt_self() sharedInstance];
  [v14 setUseSAConfig_];
  v15 = sub_20D5637C8();
  v16 = sub_20D5637C8();
  v17 = [a1 homePodCardWithQuickControlsForDeviceUUID:v15 inHomeWithUUID:v16 cornerRadius:a5];

  v18 = *(v8 + 8);
  v18(v10, v7);
  v18(v13, v7);

  return v17;
}

+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5
{
  v5 = [a1 SAHomePodCardForMediaRoutingIdentifier:a3 deviceName:a4 mediaAccessoryItemType:a5 cornerRadius:20.0];

  return v5;
}

+ (id)SAHomePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6
{
  v11 = objc_opt_self();
  v12 = a3;
  v13 = a4;
  v14 = [v11 sharedInstance];
  [v14 setUseSAConfig_];
  v15 = [a1 homePodCardForMediaRoutingIdentifier:v12 deviceName:v13 mediaAccessoryItemType:a5 cornerRadius:a6];

  return v15;
}

+ (id)homePodCardForDeviceUUID:(id)a3 inHomeWithUUID:(id)a4
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

+ (id)homePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5
{
  v5 = [a1 homePodCardForMediaRoutingIdentifier:a3 deviceName:a4 mediaAccessoryItemType:a5 cornerRadius:20.0];

  return v5;
}

+ (id)homePodCardForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6
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
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  sub_20CECF940(0, &qword_27C820940);
  v16 = sub_20D5659C8();

  return v16;
}

+ (void)_homePodDetailsViewControllerForMediaRoutingIdentifier:(NSString *)a3 deviceName:(NSString *)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = v16;
  *(v17 + 56) = a1;
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
  v21 = a3;
  v22 = a4;
  sub_20D11C1C8(0, 0, v15, &unk_20D5BCD00, v20);
}

+ (id)homePodDetailsViewControllerForMediaRoutingIdentifier:(id)a3 deviceName:(id)a4 mediaAccessoryItemType:(int64_t)a5 cornerRadius:(double)a6
{
  v8 = sub_20D567838();
  v10 = v9;
  v11 = sub_20D567838();
  v13 = sub_20D091C20(a6, v8, v10, v11, v12, a5);

  return v13;
}

- (HUHomePodServiceDetails)init
{
  v3.receiver = self;
  v3.super_class = HUHomePodServiceDetails;
  return [(HUHomePodServiceDetails *)&v3 init];
}

@end