@interface CKCarPlayConversationController
- (_TtC7ChatKit31CKCarPlayConversationController)init;
- (void)receivedRefreshNotificationWithNotification:(id)notification;
- (void)sessionConfiguration:(id)configuration contentStyleChanged:(unint64_t)changed;
- (void)templateWillAppear:(id)appear animated:(BOOL)animated;
@end

@implementation CKCarPlayConversationController

- (_TtC7ChatKit31CKCarPlayConversationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)receivedRefreshNotificationWithNotification:(id)notification
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
  sub_190AC834C(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)sessionConfiguration:(id)configuration contentStyleChanged:(unint64_t)changed
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_190AC9F70("Content style changed");
}

- (void)templateWillAppear:(id)appear animated:(BOOL)animated
{
  appearCopy = appear;
  selfCopy = self;
  sub_190AC9F70("Template will appear");
}

@end