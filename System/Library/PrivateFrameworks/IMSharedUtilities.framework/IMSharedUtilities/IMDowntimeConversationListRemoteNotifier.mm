@interface IMDowntimeConversationListRemoteNotifier
+ (id)sharedInstance;
- (IMDowntimeConversationListRemoteNotifier)init;
- (void)notifyListChanged;
- (void)setNeedsUpdate;
@end

@implementation IMDowntimeConversationListRemoteNotifier

+ (id)sharedInstance
{
  swift_getObjCClassMetadata();
  v2 = static IMDowntimeConversationListRemoteNotifier.__sharedInstance()();

  return v2;
}

- (void)notifyListChanged
{
  v3 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1A88C87A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1A873A5E4(0, 0, v5, &unk_1A88E5648, v7);
}

- (void)setNeedsUpdate
{
  selfCopy = self;
  sub_1A873B630();
}

- (IMDowntimeConversationListRemoteNotifier)init
{
  *(&self->super.isa + OBJC_IVAR___IMDowntimeConversationListRemoteNotifier_debounceTask) = 0;
  v3.receiver = self;
  v3.super_class = IMDowntimeConversationListRemoteNotifier;
  return [(IMDowntimeConversationListRemoteNotifier *)&v3 init];
}

@end