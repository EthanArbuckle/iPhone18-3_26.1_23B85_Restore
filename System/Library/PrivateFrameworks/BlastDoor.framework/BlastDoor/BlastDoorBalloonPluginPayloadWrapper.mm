@interface BlastDoorBalloonPluginPayloadWrapper
- (BlastDoorBalloonPluginPayloadWrapper)init;
- (BlastDoorCombinedPluginAttachmentInfo)combinedPluginAttachmentInfo;
- (NSData)customAcknowledgement;
- (NSData)digitalTouchBalloon;
- (NSData)handwriting;
- (NSData)linkPresentation;
- (NSData)messagesAppBalloon;
- (unint64_t)type;
@end

@implementation BlastDoorBalloonPluginPayloadWrapper

- (unint64_t)type
{
  selfCopy = self;
  v3 = sub_21458D7A4();

  return v3;
}

- (NSData)messagesAppBalloon
{
  selfCopy = self;
  v3 = sub_21458D8B4();

  return v3;
}

- (NSData)handwriting
{
  selfCopy = self;
  v3 = sub_21458DA70();

  return v3;
}

- (NSData)linkPresentation
{
  selfCopy = self;
  v3 = sub_21458DDAC();

  return v3;
}

- (BlastDoorCombinedPluginAttachmentInfo)combinedPluginAttachmentInfo
{
  selfCopy = self;
  v3 = sub_21458DF6C();

  return v3;
}

- (NSData)digitalTouchBalloon
{
  selfCopy = self;
  v3 = sub_21458E1AC();

  return v3;
}

- (NSData)customAcknowledgement
{
  selfCopy = self;
  v3 = sub_21458E3DC();

  return v3;
}

- (BlastDoorBalloonPluginPayloadWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end