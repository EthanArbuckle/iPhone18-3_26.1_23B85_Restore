@interface FeatureRequestHandler
- (_TtC25CloudSubscriptionFeatures21FeatureRequestHandler)init;
- (void)clearCFUWithId:(id)id completion:(id)completion;
- (void)clearCacheAndNotify;
- (void)clearTicketCacheAndNotify;
- (void)getFeatureEligibilityFor:(id)for bundleID:(id)d completion:(id)completion;
- (void)getTicketForFeature:(id)feature completion:(id)completion;
- (void)getTicketStatusForFeature:(id)feature completion:(id)completion;
- (void)getTicketStatusFromCacheForFeature:(id)feature completion:(id)completion;
- (void)gmOptInToggleWithCompletion:(id)completion;
- (void)performInternalValidationForFeature:(id)feature completion:(id)completion;
- (void)postCFUIfEligibleWithFeature:(id)feature completion:(id)completion;
- (void)requestFeatureWithId:(id)id ignoreCache:(BOOL)cache allowStale:(BOOL)stale completion:(id)completion;
- (void)requestGeoClassificationFor:(id)for bundleID:(id)d altDSID:(id)iD ignoreCache:(BOOL)cache completion:(id)completion;
- (void)revalidateCFU;
- (void)signupForWaitlistWithFeatureID:(id)d completion:(id)completion;
- (void)waitlistStatusWithFeatureID:(id)d completion:(id)completion;
@end

@implementation FeatureRequestHandler

- (void)requestFeatureWithId:(id)id ignoreCache:(BOOL)cache allowStale:(BOOL)stale completion:(id)completion
{
  cacheCopy = cache;
  v9 = _Block_copy(completion);
  v10 = sub_1DF564944();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  selfCopy = self;
  sub_1DF487318(v10, v12, cacheCopy, stale, 1, sub_1DF48C8FC, v13);
}

- (void)getFeatureEligibilityFor:(id)for bundleID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_1DF564944();
  v9 = v8;
  v10 = sub_1DF564944();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  selfCopy = self;
  sub_1DF492558(v7, v9, v10, v12, sub_1DF4D8568, v13);
}

- (void)clearCacheAndNotify
{
  selfCopy = self;
  sub_1DF4CBC30();
}

- (void)requestGeoClassificationFor:(id)for bundleID:(id)d altDSID:(id)iD ignoreCache:(BOOL)cache completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_1DF564944();
  v12 = v11;
  v13 = sub_1DF564944();
  v15 = v14;
  v16 = sub_1DF564944();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  selfCopy = self;
  sub_1DF4CCE4C(v10, v12, v13, v15, v16, v18, cache, sub_1DF4D8564, v19);
}

- (void)getTicketStatusForFeature:(id)feature completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DF564944();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1DF4CF17C(v6, v8, sub_1DF4D8564, v9, "Fetching ticket %s", &unk_1F5A89828, &unk_1DF568D28);
}

- (void)getTicketStatusFromCacheForFeature:(id)feature completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DF564944();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1DF4D6334(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)getTicketForFeature:(id)feature completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DF564944();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1DF4CF17C(v6, v8, sub_1DF4D8564, v9, "Getting or fetching ticket %s", &unk_1F5A89788, &unk_1DF568CF0);
}

- (void)clearCFUWithId:(id)id completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = sub_1DF564944();
  v7 = v6;
  if (_s25CloudSubscriptionFeatures8FollowUpCACSgycfC_0())
  {
    sub_1DF52D8B4(v5, v7);

    v4[2](v4, 0);
    _Block_release(v4);
  }

  else
  {

    v8 = sub_1DF4B3AA0(7);
    (v4)[2](v4, v8);
    _Block_release(v4);
  }
}

- (void)postCFUIfEligibleWithFeature:(id)feature completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DF564944();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1DF4D1128(v6, v8, sub_1DF49BC58, v9);
}

- (void)gmOptInToggleWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = _s25CloudSubscriptionFeatures7GMOptInC7currentACSgvgZ_0();
  v5 = sub_1DF4BFA44();

  (*(v3 + 2))(v3, v5 & 1, 0);

  _Block_release(v3);
}

- (void)signupForWaitlistWithFeatureID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DF564944();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1DF4D33BC(v6, v8, sub_1DF4D8564, v9, "Signing up for ticket %{public}s", &unk_1F5A89530, &unk_1DF568C48);
}

- (void)waitlistStatusWithFeatureID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1DF564944();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_1DF4D33BC(v6, v8, sub_1DF4D8564, v9, "Getting status for ticket %{public}s", &unk_1F5A894B8, &unk_1DF568C20);
}

- (void)performInternalValidationForFeature:(id)feature completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  featureCopy = feature;
  selfCopy = self;
  sub_1DF4D5744(featureCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC25CloudSubscriptionFeatures21FeatureRequestHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clearTicketCacheAndNotify
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED955E10);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "Ticket cache clear message received.", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  if (qword_1ED954C18 != -1)
  {
    swift_once();
  }

  sub_1DF4C5BD4();

  sub_1DF4FB984();
}

- (void)revalidateCFU
{
  if (qword_1ED9556D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED9556D8);
  oslog = sub_1DF564794();
  v1 = sub_1DF564C44();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446210;
    *(v2 + 4) = sub_1DF47EF6C(0x6164696C61766572, 0xEF29285546436574, &v5);
    _os_log_impl(&dword_1DF47C000, oslog, v1, "%{public}s called. Method is empty so nothing will happen.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1E12D75F0](v3, -1, -1);
    MEMORY[0x1E12D75F0](v2, -1, -1);
  }
}

@end