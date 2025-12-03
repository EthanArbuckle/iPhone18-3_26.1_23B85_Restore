@interface SessionObserver
- (NSString)sceneSessionIdentifier;
- (_TtC13NewsAnalytics15SessionObserver)init;
- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription;
- (void)bundleSubscriptionDidSubscribe:(void *)subscribe;
- (void)configurationManagerScienceExperimentFieldsDidChange:(id)change;
- (void)contentSizeCategoryDidChange;
- (void)familySharingStatusDidChange:(id)change;
- (void)networkReachabilityConnectivityDidChange:(id)change;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)subscription;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)offerDidChange:(id)change;
- (void)pushContentEnvironmentData;
- (void)pushOrientationData;
- (void)pushUserSubscriptionContextData;
- (void)sessionDidStartWithSessionID:(id)d sourceApplication:(id)application url:(id)url;
- (void)sessionWillEndWithEndReason:(id)reason;
- (void)setSceneSessionIdentifier:(id)identifier;
- (void)shortcutList:(id)list didAddShortcuts:(id)shortcuts changedShortcuts:(id)changedShortcuts removedShortcuts:(id)removedShortcuts;
- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type;
- (void)userInfoDidChangeMarketingNotificationsEnabled:(void *)enabled fromCloud:;
@end

@implementation SessionObserver

- (void)pushOrientationData
{
  selfCopy = self;
  sub_217A4CAE8();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = sub_217D8954C();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  sub_217D8996C();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_217A5722C();
  v15 = sub_217D8948C();

LABEL_8:
  SessionObserver.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  sub_217A576FC(v18);
}

- (void)contentSizeCategoryDidChange
{
  *(swift_allocObject() + 16) = self;
  selfCopy = self;
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

- (void)sessionDidStartWithSessionID:(id)d sourceApplication:(id)application url:(id)url
{
  sub_217A4BFDC(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - v10;
  v12 = sub_217D8954C();
  v14 = v13;
  if (!application)
  {
    v15 = 0;
    if (url)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = sub_217D87BAC();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    goto LABEL_6;
  }

  v15 = sub_217D8954C();
  application = v16;
  if (!url)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_217D87B8C();
  v17 = sub_217D87BAC();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
LABEL_6:
  selfCopy = self;
  SessionObserver.sessionDidStart(withSessionID:sourceApplication:url:)(v12, v14, v15, application, v11);

  sub_217A61CE8(v11, &qword_2811C8CA0, MEMORY[0x277CC9260]);
}

- (void)bundleSubscriptionDidSubscribe:(void *)subscribe
{
  subscribeCopy = subscribe;
  selfCopy = self;
  _s13NewsAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(subscribeCopy);
}

- (void)userInfoDidChangeMarketingNotificationsEnabled:(void *)enabled fromCloud:
{
  enabledCopy = enabled;
  SessionObserver.pushNotificationSettingsData()();
}

- (void)bundleSubscriptionDidChange:(id)change previousBundleSubscription:(id)subscription
{
  changeCopy = change;
  selfCopy = self;
  _s13NewsAnalytics15SessionObserverC27bundleSubscriptionDidExpireyySo08FCBundleF0CF_0(changeCopy);
}

- (void)configurationManagerScienceExperimentFieldsDidChange:(id)change
{
  swift_unknownObjectRetain();
  selfCopy = self;
  configuration = [change configuration];
  if (configuration)
  {
    v7 = configuration;
    v8 = *(selfCopy + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_sessionManager);
    v9 = swift_allocObject();
    *(v9 + 16) = selfCopy;
    *(v9 + 24) = v7;
    v10 = selfCopy;
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
  selfCopy = self;
  sub_217A4E670();
}

- (void)familySharingStatusDidChange:(id)change
{
  v4 = sub_217D87A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D879EC();
  selfCopy = self;
  sub_217B74874();

  (*(v5 + 8))(v8, v4);
}

- (void)setSceneSessionIdentifier:(id)identifier
{
  if (identifier)
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

- (void)sessionWillEndWithEndReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  SessionObserver.sessionWillEnd(withEndReason:)(reasonCopy);
}

- (void)networkReachabilityConnectivityDidChange:(id)change
{
  v4 = *(self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_tracker);
  *(swift_allocObject() + 16) = change;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_217D8894C();

  swift_unknownObjectRelease();
}

- (void)pushUserSubscriptionContextData
{
  selfCopy = self;
  sub_217A4EEA4();
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)subscription
{
  selfCopy = self;
  SessionObserver.pushNotificationSettingsData()();
}

- (void)offerDidChange:(id)change
{
  v4 = sub_217D87A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D879EC();
  selfCopy = self;
  sub_217D0E6CC();

  (*(v5 + 8))(v8, v4);
}

- (void)subscriptionController:(id)controller didAddTags:(id)tags changeTags:(id)changeTags moveTags:(id)moveTags removeTags:(id)removeTags subscriptionType:(unint64_t)type
{
  if (controller)
  {
    v9 = *(self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
    selfCopy = self;
    controllerCopy = controller;
    shortcutList = [v9 shortcutList];
    sub_217A54D60(controllerCopy, shortcutList);

    sub_217A4DFD8(controllerCopy);
    sub_217A4F918(controllerCopy);
    SessionObserver.pushNotificationSettingsData()();
  }

  else
  {
    __break(1u);
  }
}

- (void)shortcutList:(id)list didAddShortcuts:(id)shortcuts changedShortcuts:(id)changedShortcuts removedShortcuts:(id)removedShortcuts
{
  v7 = *(self + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  listCopy = list;
  selfCopy = self;
  subscriptionController = [v7 subscriptionController];
  if (subscriptionController)
  {
    v10 = subscriptionController;
    sub_217A54D60(subscriptionController, listCopy);
  }

  else
  {
    __break(1u);
  }
}

@end