@interface WidgetCenterServerClient
- (void)_reloadTimelinesOfKind:(id)a3 inBundle:(id)a4 completion:(id)a5;
- (void)invalidateRelevancesOfKind:(NSString *)a3 completionHandler:(id)a4;
- (void)invalidateRelevancesOfKind:(NSString *)a3 inBundle:(NSString *)a4 completionHandler:(id)a5;
- (void)widgetPushTokenWithCompletionHandler:(id)a3;
- (void)withWidgetRelevanceArchiveHandleForKind:(id)a3 inBundle:(id)a4 handler:(id)a5;
@end

@implementation WidgetCenterServerClient

- (void)invalidateRelevancesOfKind:(NSString *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_224DAF128();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224DBC1A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224DBC1A8;
  v15[5] = v14;
  v16 = a3;

  sub_224C5195C(0, 0, v10, &unk_224DBC1B0, v15);
}

- (void)_reloadTimelinesOfKind:(id)a3 inBundle:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_224DAEE18();
  sub_224DAEE18();
  sub_224DAE538();
  _Block_copy(v6);

  v7 = sub_224DAE508();
  sub_224C52B8C(v7, self, v6);
  _Block_release(v6);

  _Block_release(v6);
}

- (void)invalidateRelevancesOfKind:(NSString *)a3 inBundle:(NSString *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_224DAF128();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224DBC178;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_224DBC180;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;

  sub_224C5195C(0, 0, v12, &unk_224DBC188, v17);
}

- (void)withWidgetRelevanceArchiveHandleForKind:(id)a3 inBundle:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_224DAEE18();
  v10 = v9;
  if (a4)
  {
    v11 = sub_224DAEE18();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v7);

  sub_224C5411C(v8, v10, v11, a4, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)widgetPushTokenWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_224DAF128();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224DBC120;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224DBC130;
  v13[5] = v12;

  sub_224C5195C(0, 0, v8, &unk_224DB75A0, v13);
}

@end