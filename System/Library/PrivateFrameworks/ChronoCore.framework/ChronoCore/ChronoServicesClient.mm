@interface ChronoServicesClient
- (BOOL)reloadRemoteWidgetsWithError:(id *)error;
- (BOOL)remoteWidgetsEnabled;
- (BOOL)toggleRemoteWidgetsEnabled:(id)enabled error:(id *)error;
- (BOOL)unpairDeviceWith:(id)with error:(id *)error;
- (_TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient)init;
- (id)_URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)identifier info:(id)info;
- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)identifier reason:(id)reason error:(id *)error;
- (id)allPairedDevices;
- (id)widgetEnvironmentDataForBundleIdentifier:(id)identifier;
- (void)acquireLifetimeAssertionForWidget:(id)widget metrics:(id)metrics prewarm:(id)prewarm timeout:(id)timeout completion:(id)completion;
- (void)flushPowerlog;
- (void)invalidateRelevancesOfKind:(id)kind inBundle:(id)bundle completion:(id)completion;
- (void)launchLiveActivityWithID:(id)d deviceID:(id)iD url:(id)url;
- (void)loadSuggestedWidget:(id)widget metrics:(id)metrics stackIdentifier:(id)identifier reason:(id)reason completion:(id)completion;
- (void)modifyDescriptorEnablement:(id)enablement completion:(id)completion;
- (void)reloadTimeline:(id)timeline error:(id *)error;
- (void)reloadWidgetRelevanceForExtensionIdentifier:(id)identifier kind:(id)kind completion:(id)completion;
- (void)retryStuckRemotePairings;
- (void)setActivationState:(id)state forWidgetHostWithIdentifier:(id)identifier;
- (void)setWidgetConfiguration:(id)configuration activationState:(id)state forWidgetHostWithIdentifier:(id)identifier;
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
  selfCopy = self;
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
  selfCopy = self;
  sub_224BE89EC();
}

- (void)modifyDescriptorEnablement:(id)enablement completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_224DAF008();
  _Block_copy(v5);
  selfCopy = self;
  sub_224BF670C(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)reloadTimeline:(id)timeline error:(id *)error
{
  timelineCopy = timeline;
  selfCopy = self;
  sub_224BE9398(timelineCopy, error);
}

- (id)widgetEnvironmentDataForBundleIdentifier:(id)identifier
{
  sub_224DAEE18();
  selfCopy = self;
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

- (void)setWidgetConfiguration:(id)configuration activationState:(id)state forWidgetHostWithIdentifier:(id)identifier
{
  sub_224DAEE18();
  configurationCopy = configuration;
  stateCopy = state;
  selfCopy = self;
  sub_224BEAA68(configurationCopy, stateCopy);
}

- (void)setActivationState:(id)state forWidgetHostWithIdentifier:(id)identifier
{
  sub_224DAEE18();
  stateCopy = state;
  selfCopy = self;
  sub_224BEB284(stateCopy);
}

- (void)launchLiveActivityWithID:(id)d deviceID:(id)iD url:(id)url
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_224DAEE18();
  v13 = v12;
  v14 = sub_224DAEE18();
  v16 = v15;
  if (url)
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

  selfCopy = self;
  sub_224BED3DC(v11, v13, v14, v16, v10);

  sub_224A3311C(v10, &unk_27D6F4680, &unk_224DB4610);
}

- (void)loadSuggestedWidget:(id)widget metrics:(id)metrics stackIdentifier:(id)identifier reason:(id)reason completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = sub_224DAEE18();
  v13 = v12;
  v14 = sub_224DAEE18();
  v16 = v15;
  _Block_copy(v10);
  widgetCopy = widget;
  metricsCopy = metrics;
  selfCopy = self;
  sub_224BF96A4(widgetCopy, metricsCopy, v11, v13, v14, v16, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)acquireLifetimeAssertionForWidget:(id)widget metrics:(id)metrics prewarm:(id)prewarm timeout:(id)timeout completion:(id)completion
{
  v12 = _Block_copy(completion);
  _Block_copy(v12);
  widgetCopy = widget;
  metricsCopy = metrics;
  prewarmCopy = prewarm;
  timeoutCopy = timeout;
  selfCopy = self;
  sub_224BFA70C(widgetCopy, metricsCopy, prewarmCopy, timeoutCopy, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);
}

- (id)_URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)identifier info:(id)info
{
  v5 = sub_224DAEE18();
  v7 = v6;
  v8 = sub_224DAECE8();
  selfCopy = self;
  v10 = sub_224BF1818(v5, v7, v8);

  return v10;
}

- (id)allPairedDevices
{
  selfCopy = self;
  v3 = sub_224BF34DC();

  return v3;
}

- (BOOL)unpairDeviceWith:(id)with error:(id *)error
{
  sub_224DAEE18();
  selfCopy = self;
  sub_224BF3708();

  return 1;
}

- (BOOL)toggleRemoteWidgetsEnabled:(id)enabled error:(id *)error
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
  enabledCopy = enabled;
  selfCopy = self;
  BSDispatchQueueAssert();
  bOOLValue = [enabledCopy BOOLValue];
  v9 = selfCopy + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient_enablementProvider;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  (*(v11 + 16))(bOOLValue, v10, v11);
  swift_endAccess();

  return 1;
}

- (BOOL)reloadRemoteWidgetsWithError:(id *)error
{
  selfCopy = self;
  sub_224BF39A4();

  return 1;
}

- (BOOL)remoteWidgetsEnabled
{
  selfCopy = self;
  v3 = sub_224BF3B28();

  return v3 & 1;
}

- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)identifier reason:(id)reason error:(id *)error
{
  v6 = sub_224DAEE18();
  v8 = v7;
  v9 = sub_224DAEE18();
  v11 = v10;
  selfCopy = self;
  v13 = sub_224BF3D48(v6, v8, v9, v11);

  return v13;
}

- (void)reloadWidgetRelevanceForExtensionIdentifier:(id)identifier kind:(id)kind completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (kind)
  {
    v9 = sub_224DAEE18();
    kind = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  identifierCopy = identifier;
  selfCopy = self;
  sub_224BFC938(identifierCopy, v9, kind, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)invalidateRelevancesOfKind:(id)kind inBundle:(id)bundle completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_224DAEE18();
  v9 = v8;
  v10 = sub_224DAEE18();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_224BFCB40(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end