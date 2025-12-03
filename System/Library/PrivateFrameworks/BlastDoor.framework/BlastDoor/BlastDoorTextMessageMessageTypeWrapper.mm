@interface BlastDoorTextMessageMessageTypeWrapper
- (BlastDoorAudioMessage)audioMessage;
- (BlastDoorBalloonPlugin)balloonPlugin;
- (BlastDoorCustomAcknowledgement)customAcknowledgement;
- (BlastDoorEmojiTapBack)emojiTapback;
- (BlastDoorMessage)textMessage;
- (BlastDoorSticker)sticker;
- (BlastDoorStickerTapBack)stickerTapback;
- (BlastDoorTapBack)tapback;
- (BlastDoorTextMessageMessageTypeWrapper)init;
- (BlastDoorTypingIndicator)typingIndicator;
- (unint64_t)type;
@end

@implementation BlastDoorTextMessageMessageTypeWrapper

- (unint64_t)type
{
  selfCopy = self;
  v3 = sub_21459088C();

  return v3;
}

- (BlastDoorTypingIndicator)typingIndicator
{
  selfCopy = self;
  v3 = sub_21459099C();

  return v3;
}

- (BlastDoorMessage)textMessage
{
  selfCopy = self;
  v3 = sub_214590B2C();

  return v3;
}

- (BlastDoorTapBack)tapback
{
  selfCopy = self;
  v3 = sub_214590CC4();

  return v3;
}

- (BlastDoorBalloonPlugin)balloonPlugin
{
  selfCopy = self;
  v3 = sub_214590E7C();

  return v3;
}

- (BlastDoorSticker)sticker
{
  selfCopy = self;
  v3 = sub_2145910BC();

  return v3;
}

- (BlastDoorAudioMessage)audioMessage
{
  selfCopy = self;
  v3 = sub_214591278();

  return v3;
}

- (BlastDoorEmojiTapBack)emojiTapback
{
  selfCopy = self;
  v3 = sub_2145913E0();

  return v3;
}

- (BlastDoorStickerTapBack)stickerTapback
{
  selfCopy = self;
  v3 = sub_2145915A4();

  return v3;
}

- (BlastDoorCustomAcknowledgement)customAcknowledgement
{
  selfCopy = self;
  v3 = sub_214591718();

  return v3;
}

- (BlastDoorTextMessageMessageTypeWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end