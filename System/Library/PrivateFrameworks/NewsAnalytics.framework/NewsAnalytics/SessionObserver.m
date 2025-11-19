@interface SessionObserver
- (NSString)sceneSessionIdentifier;
- (_TtC13NewsAnalytics15SessionObserver)init;
- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4;
- (void)bundleSubscriptionDidSubscribe:(void *)a3;
- (void)configurationManagerScienceExperimentFieldsDidChange:(id)a3;
- (void)contentSizeCategoryDidChange;
- (void)familySharingStatusDidChange:(id)a3;
- (void)networkReachabilityConnectivityDidChange:(id)a3;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)offerDidChange:(id)a3;
- (void)pushContentEnvironmentData;
- (void)pushOrientationData;
- (void)pushUserSubscriptionContextData;
- (void)sessionDidStartWithSessionID:(id)a3 sourceApplication:(id)a4 url:(id)a5;
- (void)sessionWillEndWithEndReason:(id)a3;
- (void)setSceneSessionIdentifier:(id)a3;
- (void)shortcutList:(id)a3 didAddShortcuts:(id)a4 changedShortcuts:(id)a5 removedShortcuts:(id)a6;
- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8;
- (void)userInfoDidChangeMarketingNotificationsEnabled:(void *)a1 fromCloud:;
@end

@implementation SessionObserver

- (void)pushOrientationData
{
  v2 = self;
  sub_217A4CAE8();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = sub_217D8954C();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  sub_217D8996C();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_217A5722C();
  v15 = sub_217D8948C();

LABEL_8:
  SessionObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  sub_217A576FC(v18);
}

- (void)contentSizeCategoryDidChange
{
  *(swift_allocObject() + 16) = self;
  v3 = self;
  sub_217D88E4C();
}

- (NSString)sceneSessionIdentifier
{
  v2 = (self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_217D8951C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)sessionDidStartWithSessionID:(id)a3 sourceApplication:(id)a4 url:(id)a5
{
  sub_217A4BFDC(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = sub_217D8954C();
  v14 = v13;
  if (!a4)
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = sub_217D87BAC();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    goto LABEL_6;
  }

  v15 = sub_217D8954C();
  a4 = v16;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_217D87B8C();
  v17 = sub_217D87BAC();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
LABEL_6:
  v19 = self;
  SessionObserver.sessionDidStart(withSessionID:sourceApplication:url:)(v12, v14, v15, a4, v11);

  sub_217A61CE8(v11, &qword_2811C8CA0, MEMORY[0x277CC9260]);
}

- (void)bundleSubscriptionDidSubscribe:(void *)a3
{
  v4 = a3;
  v5 = a1;
  _s13NewsAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(v4);
}

- (void)userInfoDidChangeMarketingNotificationsEnabled:(void *)a1 fromCloud:
{
  v1 = a1;
  SessionObserver.pushNotificationSettingsData()();
}

- (void)bundleSubscriptionDidChange:(id)a3 previousBundleSubscription:(id)a4
{
  v5 = a3;
  v6 = self;
  _s13NewsAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(v5);
}

- (void)configurationManagerScienceExperimentFieldsDidChange:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = [a3 configuration];
  if (v6)
  {
    v7 = v6;
    v8 = *(v5 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = v7;
    v10 = v5;
    swift_unknownObjectRetain();
    sub_217D8833C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)pushContentEnvironmentData
{
  v2 = self;
  sub_217A4E670();
}

- (void)familySharingStatusDidChange:(id)a3
{
  v4 = sub_217D87A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D879EC();
  v9 = self;
  sub_217B74874();

  (*(v5 + 8))(v8, v4);
}

- (void)setSceneSessionIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_217D8954C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sceneSessionIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC13NewsAnalytics15SessionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionWillEndWithEndReason:(id)a3
{
  v4 = a3;
  v5 = self;
  SessionObserver.sessionWillEnd(withEndReason:)(v4);
}

- (void)networkReachabilityConnectivityDidChange:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker);
  *(swift_allocObject() + 16) = a3;
  swift_unknownObjectRetain_n();
  v5 = self;
  sub_217D8894C();

  swift_unknownObjectRelease();
}

- (void)pushUserSubscriptionContextData
{
  v2 = self;
  sub_217A4EEA4();
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3
{
  v3 = self;
  SessionObserver.pushNotificationSettingsData()();
}

- (void)offerDidChange:(id)a3
{
  v4 = sub_217D87A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D879EC();
  v9 = self;
  sub_217D0E6CC();

  (*(v5 + 8))(v8, v4);
}

- (void)subscriptionController:(id)a3 didAddTags:(id)a4 changeTags:(id)a5 moveTags:(id)a6 removeTags:(id)a7 subscriptionType:(unint64_t)a8
{
  if (a3)
  {
    v9 = *(self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
    v12 = self;
    v10 = a3;
    v11 = [v9 shortcutList];
    sub_217A54D60(v10, v11);

    sub_217A4DFD8(v10);
    sub_217A4F918(v10);
    SessionObserver.pushNotificationSettingsData()();
  }

  else
  {
    __break(1u);
  }
}

- (void)shortcutList:(id)a3 didAddShortcuts:(id)a4 changedShortcuts:(id)a5 removedShortcuts:(id)a6
{
  v7 = *(self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  v8 = a3;
  v11 = self;
  v9 = [v7 subscriptionController];
  if (v9)
  {
    v10 = v9;
    sub_217A54D60(v9, v8);
  }

  else
  {
    __break(1u);
  }
}

@end