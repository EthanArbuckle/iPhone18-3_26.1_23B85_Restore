@interface NewIssueLocalNotificationScheduler
- (_TtC7NewsUI234NewIssueLocalNotificationScheduler)init;
- (void)issueReadingHistoryDidChange:(id)change forIssueIDs:(id)ds;
@end

@implementation NewIssueLocalNotificationScheduler

- (_TtC7NewsUI234NewIssueLocalNotificationScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)issueReadingHistoryDidChange:(id)change forIssueIDs:(id)ds
{
  swift_getObjectType();
  sub_2199CCE1C(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
  selfCopy = self;
  sub_219BE3204();
  *(swift_allocObject() + 16) = selfCopy;
  v6 = selfCopy;
  v7 = sub_219BE2E54();
  sub_219BE2F94();
}

@end