@interface DetailsViewConfiguration
- (_TtC7ChatKit24DetailsViewConfiguration)init;
- (void)batchDownloadNotificationFired:(id)fired;
- (void)chatAutoDonatingHandleUpdateNotification:(id)notification;
- (void)contactsManagerViewModelsDidChange:(id)change;
- (void)handleKeyTransparencyStatusChanged:(id)changed;
@end

@implementation DetailsViewConfiguration

- (void)batchDownloadNotificationFired:(id)fired
{
  firedCopy = fired;
  selfCopy = self;
  sub_190C1AF3C();
}

- (void)chatAutoDonatingHandleUpdateNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_190C57A70(notificationCopy);
}

- (void)handleKeyTransparencyStatusChanged:(id)changed
{
  swift_getKeyPath();
  sub_1908396D4();
  selfCopy = self;
  sub_190D51C10();

  sub_190CEB87C();
}

- (_TtC7ChatKit24DetailsViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactsManagerViewModelsDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_190CEF6D0(changeCopy);
}

@end