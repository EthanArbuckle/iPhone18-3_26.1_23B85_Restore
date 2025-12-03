@interface ParticipantCell
- (NSString)accessibilityDisplayName;
- (_TtC15ConversationKit15ParticipantView)participantView;
- (void)prepareForReuse;
- (void)setAccessibilityDisplayName:(id)name;
@end

@implementation ParticipantCell

- (_TtC15ConversationKit15ParticipantView)participantView
{
  v2 = ParticipantCell.participantView.getter();

  return v2;
}

- (void)prepareForReuse
{
  selfCopy = self;
  ParticipantCell.prepareForReuse()();
}

- (NSString)accessibilityDisplayName
{
  v2 = ParticipantCell.accessibilityDisplayName.getter();
  v3 = MEMORY[0x1BFB209B0](v2);

  return v3;
}

- (void)setAccessibilityDisplayName:(id)name
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  ParticipantCell.accessibilityDisplayName.setter(v4, v6);
}

@end