@interface CSFFeatureManager
+ (id)addFeatureChangeObserverWithChange:(id)a3;
+ (id)addTicketChangeObserverWithFeatureName:(id)a3 change:(id)a4;
+ (id)cachedFeatureObjectWithId:(id)a3;
+ (id)urlForRSVPDataDetectorsWithContext:(id)a3;
+ (unint64_t)_statusFromSwiftTicketStatus:(id)a3;
+ (void)clearCFUWithCompletionHandler:(id)a3;
+ (void)deviceHasAnyTicketWithCompletionHandler:(id)a3;
+ (void)getFeatureEligibilityForFeatureWithId:(id)a3 bundleId:(id)a4 completion:(id)a5;
+ (void)getTicketForFeature:(NSString *)a3 completionHandler:(id)a4;
+ (void)getTicketForFeature:(id)a3 withCompletionHandler:(id)a4;
+ (void)getTicketStatusForFeature:(NSString *)a3 completionHandler:(id)a4;
+ (void)getTicketStatusForFeature:(id)a3 withCompletionHandler:(id)a4;
+ (void)getTicketStatusFromCacheForFeature:(NSString *)a3 completionHandler:(id)a4;
+ (void)gmOptInToggleWithCompletionHandler:(id)a3;
+ (void)postCFUIfEligibleWithCompletionHandler:(id)a3;
+ (void)requestFeatureWithId:(id)a3 allowStale:(BOOL)a4 completion:(id)a5;
+ (void)requestGeoClassificationForFeatureID:(id)a3 bundleID:(id)a4 altDSID:(id)a5 ignoreCache:(BOOL)a6 completion:(id)a7;
+ (void)requestGeoClassificationForFeatureID:(id)a3 bundleID:(id)a4 ignoreCache:(BOOL)a5 completion:(id)a6;
+ (void)revalidateCFUWithCompletionHandler:(id)a3;
@end

@implementation CSFFeatureManager

+ (id)addFeatureChangeObserverWithChange:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_1ED955AD8 != -1)
  {
    swift_once();
  }

  v5 = NotificationObservation.addObserver(change:)(sub_1DF5217C0, v4);

  return v5;
}

+ (void)requestFeatureWithId:(id)a3 allowStale:(BOOL)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1DF564944();
  v9 = v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v6);
  sub_1DF47F2AC(v7, v9, a4, ObjCClassMetadata, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (void)getFeatureEligibilityForFeatureWithId:(id)a3 bundleId:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_1DF564944();
  v8 = v7;
  v9 = sub_1DF564944();
  v11 = v10;
  _Block_copy(v5);
  sub_1DF492188(v6, v8, v9, v11, v5);
  _Block_release(v5);
  _Block_release(v5);
}

+ (void)getTicketForFeature:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__CSFFeatureManager_getTicketForFeature_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E86BB300;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a1 getTicketForFeature:a3 completionHandler:v8];
}

void __63__CSFFeatureManager_getTicketForFeature_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v13)
    {
      v7 = *(a1 + 40);
      v8 = [v13 status];
      v9 = [v7 _statusFromSwiftTicketStatus:v8];

      v10 = [CSFTicketObject alloc];
      v11 = [v13 ticket];
      v12 = [(CSFTicketObject *)v10 initWithTicket:v11 withStatus:v9];

      (*(*(a1 + 32) + 16))();
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

+ (void)getTicketStatusForFeature:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__CSFFeatureManager_getTicketStatusForFeature_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E86BB328;
  v9 = v6;
  v10 = a1;
  v7 = v6;
  [a1 getTicketStatusForFeature:a3 completionHandler:v8];
}

void __69__CSFFeatureManager_getTicketStatusForFeature_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v7)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), [*(a1 + 40) _statusFromSwiftTicketStatus:v7], 0);
    }

    v6 = *(*(a1 + 32) + 16);
  }

  v6();
}

+ (unint64_t)_statusFromSwiftTicketStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 rawValue];
  v5 = +[_TtC25CloudSubscriptionFeatures12TicketStatus notYetQueued];
  v6 = [v5 rawValue];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v3 rawValue];
    v10 = +[_TtC25CloudSubscriptionFeatures12TicketStatus enqueued];
    v11 = [v10 rawValue];
    v12 = [v9 isEqualToString:v11];

    if (v12)
    {
      v8 = 1;
    }

    else
    {
      v13 = [v3 rawValue];
      v14 = +[_TtC25CloudSubscriptionFeatures12TicketStatus active];
      v15 = [v14 rawValue];
      v16 = [v13 isEqualToString:v15];

      if (v16)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }
  }

  return v8;
}

void __38__CSFFeatureManager_postCFUIfEligible__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _CSFGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DF47C000, v3, OS_LOG_TYPE_DEFAULT, "Finished attempting to post CFU with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __34__CSFFeatureManager_revalidateCFU__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = _CSFGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1DF47C000, v3, OS_LOG_TYPE_DEFAULT, "Finished revalidating CFU with error: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)cachedFeatureObjectWithId:(id)a3
{
  v3 = sub_1DF564944();
  v5 = sub_1DF4812FC(v3, v4);

  if (v5)
  {
    v6 = CloudFeature.cloudFeatureObject.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)requestGeoClassificationForFeatureID:(id)a3 bundleID:(id)a4 altDSID:(id)a5 ignoreCache:(BOOL)a6 completion:(id)a7
{
  v8 = _Block_copy(a7);
  v9 = sub_1DF564944();
  v11 = v10;
  v12 = sub_1DF564944();
  v14 = v13;
  v15 = sub_1DF564944();
  v17 = v16;
  _Block_copy(v8);
  sub_1DF51D340(v9, v11, v12, v14, v15, v17, a6, v8);
  _Block_release(v8);
  _Block_release(v8);
}

+ (void)requestGeoClassificationForFeatureID:(id)a3 bundleID:(id)a4 ignoreCache:(BOOL)a5 completion:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_1DF564944();
  v10 = v9;
  v11 = sub_1DF564944();
  v13 = v12;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v7);
  sub_1DF51D97C(v8, v10, v11, v13, a5, ObjCClassMetadata, v7);
  _Block_release(v7);
  _Block_release(v7);
}

+ (id)addTicketChangeObserverWithFeatureName:(id)a3 change:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1DF564944();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  if (qword_1ED955AD8 != -1)
  {
    swift_once();
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  v10 = swift_allocObject();
  v10[2] = ObjCClassMetadata;
  v10[3] = v5;
  v10[4] = v7;
  v10[5] = sub_1DF52175C;
  v10[6] = v8;

  v11 = NotificationObservation.addTicketObserver(change:)(sub_1DF521A74, v10);

  return v11;
}

+ (id)urlForRSVPDataDetectorsWithContext:(id)a3
{
  v3 = sub_1DF564344();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DF564874();
  _sSo17CSFFeatureManagerC25CloudSubscriptionFeaturesE23urlForRSVPDataDetectors7context10Foundation3URLVSDySSypG_tFZ_0(v8, v7);

  v9 = sub_1DF564314();
  (*(v4 + 8))(v7, v3);

  return v9;
}

+ (void)getTicketStatusForFeature:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_1DF564B44();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF56BC48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DF56BC50;
  v15[5] = v14;
  v16 = a3;
  sub_1DF51CC08(0, 0, v10, &unk_1DF56BC58, v15);
}

+ (void)getTicketStatusFromCacheForFeature:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_1DF564B44();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF56BC28;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DF56BC30;
  v15[5] = v14;
  v16 = a3;
  sub_1DF51CC08(0, 0, v10, &unk_1DF56BC38, v15);
}

+ (void)getTicketForFeature:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_1DF564B44();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1DF56BC08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1DF56BC10;
  v15[5] = v14;
  v16 = a3;
  sub_1DF51CC08(0, 0, v10, &unk_1DF56BC18, v15);
}

+ (void)deviceHasAnyTicketWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1DF564B44();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DF56BBE8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF56BBF0;
  v13[5] = v12;
  sub_1DF51CC08(0, 0, v8, &unk_1DF56BBF8, v13);
}

+ (void)clearCFUWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1DF564B44();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DF56BBC8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF56BBD0;
  v13[5] = v12;
  sub_1DF51CC08(0, 0, v8, &unk_1DF56BBD8, v13);
}

+ (void)postCFUIfEligibleWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1DF564B44();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DF56BBA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF56BBB0;
  v13[5] = v12;
  sub_1DF51CC08(0, 0, v8, &unk_1DF56BBB8, v13);
}

+ (void)revalidateCFUWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1DF564B44();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DF56BB88;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF56BB90;
  v13[5] = v12;
  sub_1DF51CC08(0, 0, v8, &unk_1DF56BB98, v13);
}

+ (void)gmOptInToggleWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_1DF564B44();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DF56BB50;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1DF5692D0;
  v13[5] = v12;
  sub_1DF51CC08(0, 0, v8, &unk_1DF56A700, v13);
}

@end