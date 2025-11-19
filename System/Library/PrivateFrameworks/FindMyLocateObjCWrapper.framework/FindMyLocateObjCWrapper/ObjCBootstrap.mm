@interface ObjCBootstrap
- (id)cachedLocationFor:(id)a3 includeAddress:(BOOL)a4;
- (id)cachedOfferExpirationFor:(id)a3 groupId:(id)a4;
- (id)friendshipUpdateCallback;
- (id)locationUpdateCallback;
- (id)meDeviceUpdateCallback;
- (int64_t)cachedCanShareLocationWithHandle:(id)a3 isFromGroup:(BOOL)a4;
- (void)canShareLocationWithHandle:(FMLHandle *)a3 isFromGroup:(BOOL)a4 completionHandler:(id)a5;
- (void)friendshipStateWithHandle:(FMLHandle *)a3 isFromGroup:(BOOL)a4 completionHandler:(id)a5;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)a3;
- (void)getFriendsWith:(int64_t)a3 completionHandler:(id)a4;
- (void)getOfferExpirationForHandle:(FMLHandle *)a3 groupId:(NSString *)a4 completionHandler:(id)a5;
- (void)sendFriendshipInviteTo:(FMLHandle *)a3 from:(FMLHandle *)a4 isFromGroup:(BOOL)a5 completionHandler:(id)a6;
- (void)sendFriendshipOfferTo:(NSArray *)a3 from:(FMLHandle *)a4 end:(int64_t)a5 isFromGroup:(BOOL)a6 completionHandler:(id)a7;
- (void)setActiveLocationSharingDevice:(NSString *)a3 completionHandler:(id)a4;
- (void)setFriendshipUpdateCallback:(id)a3;
- (void)setLocationUpdateCallback:(id)a3;
- (void)setMeDeviceUpdateCallback:(id)a3;
- (void)startMonitoringActiveLocationSharingDeviceWithCompletionHandler:(id)a3;
- (void)startRefreshingLocationFor:(NSArray *)a3 priority:(int64_t)a4 isFromGroup:(BOOL)a5 reverseGeocode:(BOOL)a6 completionHandler:(id)a7;
- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)a3 completionHandler:(id)a4;
- (void)stopRefreshingLocationFor:(NSArray *)a3 priority:(int64_t)a4 isFromGroup:(BOOL)a5 completionHandler:(id)a6;
- (void)stopRefreshingLocationWithCompletionHandler:(id)a3;
- (void)stopSharingLocationWith:(NSArray *)a3 from:(FMLHandle *)a4 isFromGroup:(BOOL)a5 completionHandler:(id)a6;
- (void)stopUpdatingFriendsWithCompletionHandler:(id)a3;
@end

@implementation ObjCBootstrap

- (id)locationUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AEA18A0;
    aBlock[3] = &block_descriptor_53;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLocationUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24AEA5154;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_locationUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_24AE9C8F8(v7);
}

- (id)friendshipUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AEA1CCC;
    aBlock[3] = &block_descriptor_47;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFriendshipUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24AEA5154;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_friendshipUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_24AE9C8F8(v7);
}

- (id)meDeviceUpdateCallback
{
  v2 = (self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AEA214C;
    aBlock[3] = &block_descriptor_41;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMeDeviceUpdateCallback:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24AEA5140;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_meDeviceUpdateCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_24AE9C8F8(v7);
}

- (void)sendFriendshipOfferTo:(NSArray *)a3 from:(FMLHandle *)a4 end:(int64_t)a5 isFromGroup:(BOOL)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = v17;
  *(v18 + 56) = self;
  v19 = sub_24AEC63EC();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_24AEC8C80;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_24AEC8C88;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = self;
  sub_24AEBFA28(0, 0, v16, &unk_24AEC8C90, v21);
}

- (void)sendFriendshipInviteTo:(FMLHandle *)a3 from:(FMLHandle *)a4 isFromGroup:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_24AEC63EC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_24AEC8C60;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_24AEC8C68;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_24AEBFA28(0, 0, v14, &unk_24AEC8C70, v19);
}

- (void)stopSharingLocationWith:(NSArray *)a3 from:(FMLHandle *)a4 isFromGroup:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_24AEC63EC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_24AEC8C40;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_24AEC8C48;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_24AEBFA28(0, 0, v14, &unk_24AEC8C50, v19);
}

- (void)startRefreshingLocationFor:(NSArray *)a3 priority:(int64_t)a4 isFromGroup:(BOOL)a5 reverseGeocode:(BOOL)a6 completionHandler:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 33) = a6;
  *(v18 + 40) = v17;
  *(v18 + 48) = self;
  v19 = sub_24AEC63EC();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_24AEC8C20;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_24AEC8C28;
  v21[5] = v20;
  v22 = a3;
  v23 = self;
  sub_24AEBFA28(0, 0, v16, &unk_24AEC8C30, v21);
}

- (void)stopRefreshingLocationFor:(NSArray *)a3 priority:(int64_t)a4 isFromGroup:(BOOL)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_24AEC63EC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_24AEC8C00;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_24AEC8C08;
  v19[5] = v18;
  v20 = a3;
  v21 = self;
  sub_24AEBFA28(0, 0, v14, &unk_24AEC8C10, v19);
}

- (void)stopRefreshingLocationWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24AEC63EC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24AEC8BE0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AEC8BE8;
  v13[5] = v12;
  v14 = self;
  sub_24AEBFA28(0, 0, v8, &unk_24AEC8BF0, v13);
}

- (void)startUpdatingFriendsWithInitialUpdates:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_24AEC63EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AEC8BC0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AEC8BC8;
  v15[5] = v14;
  v16 = self;
  sub_24AEBFA28(0, 0, v10, &unk_24AEC8BD0, v15);
}

- (void)stopUpdatingFriendsWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24AEC63EC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24AEC8BA0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AEC8BA8;
  v13[5] = v12;
  v14 = self;
  sub_24AEBFA28(0, 0, v8, &unk_24AEC8BB0, v13);
}

- (void)startMonitoringActiveLocationSharingDeviceWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24AEC63EC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24AEC8B80;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AEC8B88;
  v13[5] = v12;
  v14 = self;
  sub_24AEBFA28(0, 0, v8, &unk_24AEC8B90, v13);
}

- (void)setActiveLocationSharingDevice:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24AEC63EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AEC8B60;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AEC8B68;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_24AEBFA28(0, 0, v10, &unk_24AEC8B70, v15);
}

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_24AEC63EC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24AEC8B40;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24AEC8B48;
  v13[5] = v12;
  v14 = self;
  sub_24AEBFA28(0, 0, v8, &unk_24AEC8B50, v13);
}

- (void)getFriendsWith:(int64_t)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24AEC63EC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24AEC8B20;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24AEC8B28;
  v15[5] = v14;
  v16 = self;
  sub_24AEBFA28(0, 0, v10, &unk_24AEC8B30, v15);
}

- (void)canShareLocationWithHandle:(FMLHandle *)a3 isFromGroup:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_24AEC63EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AEC8B00;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AEC8B08;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_24AEBFA28(0, 0, v12, &unk_24AEC8B10, v17);
}

- (void)friendshipStateWithHandle:(FMLHandle *)a3 isFromGroup:(BOOL)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_24AEC63EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AEC8AE0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AEC8AE8;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_24AEBFA28(0, 0, v12, &unk_24AEC8AF0, v17);
}

- (void)getOfferExpirationForHandle:(FMLHandle *)a3 groupId:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0090, &qword_24AEC88F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_24AEC63EC();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24AEC8A98;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_24AEC8AA8;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_24AEBFA28(0, 0, v12, &unk_24AEC8AB8, v17);
}

- (id)cachedLocationFor:(id)a3 includeAddress:(BOOL)a4
{
  swift_getObjectType();
  v6 = *(self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  v7 = a3;
  v8 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0168, &qword_24AEC8A80);
  sub_24AEC648C();

  return v10;
}

- (id)cachedOfferExpirationFor:(id)a3 groupId:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBFFD8, &qword_24AEC8568);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-v10];
  if (a4)
  {
    v12 = sub_24AEC62FC();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  *&v23[-48] = MEMORY[0x28223BE20](v12);
  *&v23[-40] = a4;
  *&v23[-32] = self;
  *&v23[-24] = a3;
  *&v23[-16] = ObjectType;
  v15 = a3;
  v16 = self;
  sub_24AEC648C();

  v17 = sub_24AEC5CDC();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v11, 1, v17);
  v20 = 0;
  if (v19 != 1)
  {
    v21 = sub_24AEC5CAC();
    (*(v18 + 8))(v11, v17);
    v20 = v21;
  }

  return v20;
}

- (int64_t)cachedCanShareLocationWithHandle:(id)a3 isFromGroup:(BOOL)a4
{
  swift_getObjectType();
  v6 = *(self + OBJC_IVAR____TtC23FindMyLocateObjCWrapper13ObjCBootstrap_serialQueue);
  type metadata accessor for FMLLocationShareState(0);
  v7 = a3;
  v8 = self;
  sub_24AEC648C();

  return v10;
}

@end