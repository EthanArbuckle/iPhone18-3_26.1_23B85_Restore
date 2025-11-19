@interface MarketingPlacementObserver
- (_TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver)init;
- (void)engagement:(AMSEngagement *)a3 didUpdateEngagementRequest:(AMSEngagementRequest *)a4 placement:(NSString *)a5 serviceType:(NSString *)a6 completion:(id)a7;
- (void)engagement:(AMSEngagement *)a3 handleDialogRequest:(AMSDialogRequest *)a4 completion:(id)a5;
- (void)engagement:(AMSEngagement *)a3 handleEngagementRequest:(AMSEngagementRequest *)a4 completion:(id)a5;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
@end

@implementation MarketingPlacementObserver

- (_TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_1E65E5C78();
  v11 = v10;
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1E659AC58(a4, v9, v11);
}

- (void)engagement:(AMSEngagement *)a3 didUpdateEngagementRequest:(AMSEngagementRequest *)a4 placement:(NSString *)a5 serviceType:(NSString *)a6 completion:(id)a7
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1E660D278;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1E660D280;
  v21[5] = v20;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = self;
  sub_1E6198E90(0, 0, v16, &unk_1E660D288, v21);
}

- (void)engagement:(AMSEngagement *)a3 handleDialogRequest:(AMSDialogRequest *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1E660D258;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1E660D260;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1E6198E90(0, 0, v12, &unk_1E660D268, v17);
}

- (void)engagement:(AMSEngagement *)a3 handleEngagementRequest:(AMSEngagementRequest *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1E660D210;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1E660D220;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_1E6198E90(0, 0, v12, &unk_1E660D230, v17);
}

@end