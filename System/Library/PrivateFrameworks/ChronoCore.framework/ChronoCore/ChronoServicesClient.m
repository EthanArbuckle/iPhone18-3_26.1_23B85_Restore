@interface ChronoServicesClient
- (BOOL)reloadRemoteWidgetsWithError:(id *)a3;
- (BOOL)remoteWidgetsEnabled;
- (BOOL)toggleRemoteWidgetsEnabled:(id)a3 error:(id *)a4;
- (BOOL)unpairDeviceWith:(id)a3 error:(id *)a4;
- (_TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient)init;
- (id)_URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)a3 info:(id)a4;
- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)a3 reason:(id)a4 error:(id *)a5;
- (id)allPairedDevices;
- (id)widgetEnvironmentDataForBundleIdentifier:(id)a3;
- (void)acquireLifetimeAssertionForWidget:(id)a3 metrics:(id)a4 prewarm:(id)a5 timeout:(id)a6 completion:(id)a7;
- (void)flushPowerlog;
- (void)invalidateRelevancesOfKind:(id)a3 inBundle:(id)a4 completion:(id)a5;
- (void)launchLiveActivityWithID:(id)a3 deviceID:(id)a4 url:(id)a5;
- (void)loadSuggestedWidget:(id)a3 metrics:(id)a4 stackIdentifier:(id)a5 reason:(id)a6 completion:(id)a7;
- (void)modifyDescriptorEnablement:(id)a3 completion:(id)a4;
- (void)reloadTimeline:(id)a3 error:(id *)a4;
- (void)reloadWidgetRelevanceForExtensionIdentifier:(id)a3 kind:(id)a4 completion:(id)a5;
- (void)retryStuckRemotePairings;
- (void)setActivationState:(id)a3 forWidgetHostWithIdentifier:(id)a4;
- (void)setWidgetConfiguration:(id)a3 activationState:(id)a4 forWidgetHostWithIdentifier:(id)a5;
@end

@implementation ChronoServicesClient

- (_TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)flushPowerlog
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  v3 = self;
  BSDispatchQueueAssert();
  v5[4] = sub_224BE88C0;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_224A39F40;
  v5[3] = &block_descriptor_244;
  v4 = _Block_copy(v5);
  BSDispatchMain();

  _Block_release(v4);
}

- (void)retryStuckRemotePairings
{
  v2 = self;
  sub_224BE89EC();
}

- (void)modifyDescriptorEnablement:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_224DAF008();
  _Block_copy(v5);
  v7 = self;
  sub_224BF670C(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)reloadTimeline:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  sub_224BE9398(v6, a4);
}

- (id)widgetEnvironmentDataForBundleIdentifier:(id)a3
{
  sub_224DAEE18();
  v4 = self;
  v5 = sub_224BE9BB8();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_224DA96B8();
    sub_224AC1D9C(v5, v7);
    v8 = v9;
  }

  return v8;
}

- (void)setWidgetConfiguration:(id)a3 activationState:(id)a4 forWidgetHostWithIdentifier:(id)a5
{
  sub_224DAEE18();
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_224BEAA68(v8, v9);
}

- (void)setActivationState:(id)a3 forWidgetHostWithIdentifier:(id)a4
{
  sub_224DAEE18();
  v6 = a3;
  v7 = self;
  sub_224BEB284(v6);
}

- (void)launchLiveActivityWithID:(id)a3 deviceID:(id)a4 url:(id)a5
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_224DAEE18();
  v13 = v12;
  v14 = sub_224DAEE18();
  v16 = v15;
  if (a5)
  {
    sub_224DA9638();
    v17 = sub_224DA9688();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  }

  else
  {
    v18 = sub_224DA9688();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  v19 = self;
  sub_224BED3DC(v11, v13, v14, v16, v10);

  sub_224A3311C(v10, &unk_27D6F4680, &unk_224DB4610);
}

- (void)loadSuggestedWidget:(id)a3 metrics:(id)a4 stackIdentifier:(id)a5 reason:(id)a6 completion:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_224DAEE18();
  v13 = v12;
  v14 = sub_224DAEE18();
  v16 = v15;
  _Block_copy(v10);
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224BF96A4(v17, v18, v11, v13, v14, v16, v19, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)acquireLifetimeAssertionForWidget:(id)a3 metrics:(id)a4 prewarm:(id)a5 timeout:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  _Block_copy(v12);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = self;
  sub_224BFA70C(v13, v14, v15, v16, v17, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (id)_URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)a3 info:(id)a4
{
  v5 = sub_224DAEE18();
  v7 = v6;
  v8 = sub_224DAECE8();
  v9 = self;
  v10 = sub_224BF1818(v5, v7, v8);

  return v10;
}

- (id)allPairedDevices
{
  v2 = self;
  v3 = sub_224BF34DC();

  return v3;
}

- (BOOL)unpairDeviceWith:(id)a3 error:(id *)a4
{
  sub_224DAEE18();
  v5 = self;
  sub_224BF3708();

  return 1;
}

- (BOOL)toggleRemoteWidgetsEnabled:(id)a3 error:(id *)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  v6 = a3;
  v7 = self;
  BSDispatchQueueAssert();
  v8 = [v6 BOOLValue];
  v9 = v7 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_enablementProvider;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v11 + 16))(v8, v10, v11);
  swift_endAccess();

  return 1;
}

- (BOOL)reloadRemoteWidgetsWithError:(id *)a3
{
  v3 = self;
  sub_224BF39A4();

  return 1;
}

- (BOOL)remoteWidgetsEnabled
{
  v2 = self;
  v3 = sub_224BF3B28();

  return v3 & 1;
}

- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)a3 reason:(id)a4 error:(id *)a5
{
  v6 = sub_224DAEE18();
  v8 = v7;
  v9 = sub_224DAEE18();
  v11 = v10;
  v12 = self;
  v13 = sub_224BF3D48(v6, v8, v9, v11);

  return v13;
}

- (void)reloadWidgetRelevanceForExtensionIdentifier:(id)a3 kind:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_224DAEE18();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a3;
  v12 = self;
  sub_224BFC938(v11, v9, a4, v12, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)invalidateRelevancesOfKind:(id)a3 inBundle:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_224DAEE18();
  v9 = v8;
  v10 = sub_224DAEE18();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_224BFCB40(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end