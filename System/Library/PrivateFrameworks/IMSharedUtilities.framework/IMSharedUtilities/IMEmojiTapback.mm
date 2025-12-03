@interface IMEmojiTapback
- (BOOL)isEqual:(id)equal;
- (IMEmojiTapback)counterpart;
- (IMEmojiTapback)initWithAssociatedMessageType:(int64_t)type;
- (IMEmojiTapback)initWithEmoji:(id)emoji isRemoved:(BOOL)removed;
- (IMEmojiTapback)initWithIMRemoteObjectSerializedDictionary:(id)dictionary;
- (IMEmojiTapback)removedTapbackCounterpart;
- (IMEmojiTapback)visibleTapbackCounterpart;
- (NSString)associatedMessageEmoji;
- (NSString)description;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)available;
- (id)reactionStringWithAdaptiveImageGlyph:(id)glyph isCommSafetySensitiveProvider:(id)provider;
@end

@implementation IMEmojiTapback

- (NSString)associatedMessageEmoji
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMEmojiTapback)counterpart
{
  selfCopy = self;
  isRemoved = [(IMTapback *)selfCopy isRemoved];
  v4 = &selRef_visibleTapbackCounterpart;
  if (!isRemoved)
  {
    v4 = &selRef_removedTapbackCounterpart;
  }

  v5 = [selfCopy *v4];

  return v5;
}

- (IMEmojiTapback)removedTapbackCounterpart
{
  selfCopy = self;
  if (![(IMTapback *)selfCopy isRemoved])
  {
    v3 = objc_allocWithZone(IMEmojiTapback);
    v4 = sub_1A88C82A8();
    v5 = [v3 initWithEmoji:v4 isRemoved:1];

    selfCopy = v5;
  }

  return selfCopy;
}

- (IMEmojiTapback)visibleTapbackCounterpart
{
  selfCopy = self;
  if ([(IMTapback *)selfCopy isRemoved])
  {
    v3 = objc_allocWithZone(IMEmojiTapback);
    v4 = sub_1A88C82A8();
    v5 = [v3 initWithEmoji:v4 isRemoved:0];

    selfCopy = v5;
  }

  return selfCopy;
}

- (IMEmojiTapback)initWithEmoji:(id)emoji isRemoved:(BOOL)removed
{
  removedCopy = removed;
  v6 = sub_1A88C82E8();
  v7 = (self + OBJC_IVAR___IMEmojiTapback_emoji);
  *v7 = v6;
  v7[1] = v8;
  if (removedCopy)
  {
    v9 = 3006;
  }

  else
  {
    v9 = 2006;
  }

  v11.receiver = self;
  v11.super_class = IMEmojiTapback;
  return [(IMTapback *)&v11 initWithAssociatedMessageType:v9];
}

- (IMEmojiTapback)initWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  if (dictionary)
  {
    v3 = sub_1A88C81A8();
  }

  else
  {
    v3 = 0;
  }

  return IMEmojiTapback.init(imRemoteObjectSerializedDictionary:)(v3);
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)available
{
  selfCopy = self;
  v4 = _sSo14IMEmojiTapbackC17IMSharedUtilitiesE18actionStringFormat31withAdaptiveImageGlyphAvailableSo022IMTapbackSummaryActionfG0CSgSb_tF_0();

  return v4;
}

- (id)reactionStringWithAdaptiveImageGlyph:(id)glyph isCommSafetySensitiveProvider:(id)provider
{
  selfCopy = self;
  associatedMessageEmoji = [(IMEmojiTapback *)selfCopy associatedMessageEmoji];
  if (!associatedMessageEmoji)
  {
    sub_1A88C82E8();
    associatedMessageEmoji = sub_1A88C82A8();
  }

  initWithString_ = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  return initWithString_;
}

- (NSString)description
{
  selfCopy = self;
  IMEmojiTapback.description.getter();

  v3 = sub_1A88C82A8();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = IMEmojiTapback.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (IMEmojiTapback)initWithAssociatedMessageType:(int64_t)type
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end