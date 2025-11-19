@interface DetailsViewConfiguration
- (_TtC7ChatKit24DetailsViewConfiguration)init;
- (void)batchDownloadNotificationFired:(id)a3;
- (void)chatAutoDonatingHandleUpdateNotification:(id)a3;
- (void)contactsManagerViewModelsDidChange:(id)a3;
- (void)handleKeyTransparencyStatusChanged:(id)a3;
@end

@implementation DetailsViewConfiguration

- (void)batchDownloadNotificationFired:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190C1AF3C();
}

- (void)chatAutoDonatingHandleUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190C57A70(v4);
}

- (void)handleKeyTransparencyStatusChanged:(id)a3
{
  swift_getKeyPath();
  sub_1908396D4();
  v4 = self;
  sub_190D51C10();

  sub_190CEB87C();
}

- (_TtC7ChatKit24DetailsViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)contactsManagerViewModelsDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190CEF6D0(v4);
}

@end