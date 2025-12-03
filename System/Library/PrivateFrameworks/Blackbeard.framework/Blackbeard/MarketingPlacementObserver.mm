@interface MarketingPlacementObserver
- (_TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver)init;
- (void)engagement:(AMSEngagement *)engagement didUpdateEngagementRequest:(AMSEngagementRequest *)request placement:(NSString *)placement serviceType:(NSString *)type completion:(id)completion;
- (void)engagement:(AMSEngagement *)engagement handleDialogRequest:(AMSDialogRequest *)request completion:(id)completion;
- (void)engagement:(AMSEngagement *)engagement handleEngagementRequest:(AMSEngagementRequest *)request completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation MarketingPlacementObserver

- (_TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_1E65E5C78();
  v11 = v10;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E659AC58(request, v9, v11);
}

- (void)engagement:(AMSEngagement *)engagement didUpdateEngagementRequest:(AMSEngagementRequest *)request placement:(NSString *)placement serviceType:(NSString *)type completion:(id)completion
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v27 - v15;
  v17 = _Block_copy(completion);
  v18 = swift_allocObject();
  v18[2] = engagement;
  v18[3] = request;
  v18[4] = placement;
  v18[5] = type;
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
  engagementCopy = engagement;
  requestCopy = request;
  placementCopy = placement;
  typeCopy = type;
  selfCopy = self;
  sub_1E6198E90(0, 0, v16, &unk_1E660D288, v21);
}

- (void)engagement:(AMSEngagement *)engagement handleDialogRequest:(AMSDialogRequest *)request completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = engagement;
  v14[3] = request;
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
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E6198E90(0, 0, v12, &unk_1E660D268, v17);
}

- (void)engagement:(AMSEngagement *)engagement handleEngagementRequest:(AMSEngagementRequest *)request completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = engagement;
  v14[3] = request;
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
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E6198E90(0, 0, v12, &unk_1E660D230, v17);
}

@end