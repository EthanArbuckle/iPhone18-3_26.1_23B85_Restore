@interface VoicemailDiffableDataSource
- (void)voicemailsChangedHandlerWithNotification:(id)a3;
@end

@implementation VoicemailDiffableDataSource

- (void)voicemailsChangedHandlerWithNotification:(id)a3
{
  v3 = sub_1BC8F6D24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC8F6D04();

  sub_1BC8D767C();

  (*(v4 + 8))(v7, v3);
}

@end