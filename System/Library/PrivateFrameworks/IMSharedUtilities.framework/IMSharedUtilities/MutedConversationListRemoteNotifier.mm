@interface MutedConversationListRemoteNotifier
+ (void)notifyListChanged;
- (_TtC17IMSharedUtilities35MutedConversationListRemoteNotifier)init;
@end

@implementation MutedConversationListRemoteNotifier

+ (void)notifyListChanged
{
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1A88C87A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1A873A5E4(0, 0, v4, &unk_1A88E9038, v6);
}

- (_TtC17IMSharedUtilities35MutedConversationListRemoteNotifier)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MutedConversationListRemoteNotifier();
  return [(MutedConversationListRemoteNotifier *)&v3 init];
}

@end