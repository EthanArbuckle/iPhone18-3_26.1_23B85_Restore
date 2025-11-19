@interface IMEmojiTapback
- (BOOL)isEqual:(id)a3;
- (IMEmojiTapback)counterpart;
- (IMEmojiTapback)initWithAssociatedMessageType:(int64_t)a3;
- (IMEmojiTapback)initWithEmoji:(id)a3 isRemoved:(BOOL)a4;
- (IMEmojiTapback)initWithIMRemoteObjectSerializedDictionary:(id)a3;
- (IMEmojiTapback)removedTapbackCounterpart;
- (IMEmojiTapback)visibleTapbackCounterpart;
- (NSString)associatedMessageEmoji;
- (NSString)description;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3;
- (id)reactionStringWithAdaptiveImageGlyph:(id)a3 isCommSafetySensitiveProvider:(id)a4;
@end

@implementation IMEmojiTapback

- (NSString)associatedMessageEmoji
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMEmojiTapback)counterpart
{
  v2 = self;
  v3 = [(IMTapback *)v2 isRemoved];
  v4 = &selRef_visibleTapbackCounterpart;
  if (!v3)
  {
    v4 = &selRef_removedTapbackCounterpart;
  }

  v5 = [v2 *v4];

  return v5;
}

- (IMEmojiTapback)removedTapbackCounterpart
{
  v2 = self;
  if (![(IMTapback *)v2 isRemoved])
  {
    v3 = objc_allocWithZone(IMEmojiTapback);
    v4 = sub_1A88C82A8();
    v5 = [v3 initWithEmoji:v4 isRemoved:1];

    v2 = v5;
  }

  return v2;
}

- (IMEmojiTapback)visibleTapbackCounterpart
{
  v2 = self;
  if ([(IMTapback *)v2 isRemoved])
  {
    v3 = objc_allocWithZone(IMEmojiTapback);
    v4 = sub_1A88C82A8();
    v5 = [v3 initWithEmoji:v4 isRemoved:0];

    v2 = v5;
  }

  return v2;
}

- (IMEmojiTapback)initWithEmoji:(id)a3 isRemoved:(BOOL)a4
{
  v4 = a4;
  v6 = sub_1A88C82E8();
  v7 = (self + OBJC_IVAR___IMEmojiTapback_emoji);
  *v7 = v6;
  v7[1] = v8;
  if (v4)
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

- (IMEmojiTapback)initWithIMRemoteObjectSerializedDictionary:(id)a3
{
  if (a3)
  {
    v3 = sub_1A88C81A8();
  }

  else
  {
    v3 = 0;
  }

  return IMEmojiTapback.init(imRemoteObjectSerializedDictionary:)(v3);
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3
{
  v3 = self;
  v4 = _sSo14IMEmojiTapbackC17IMSharedUtilitiesE18actionStringFormat31withAdaptiveImageGlyphAvailableSo022IMTapbackSummaryActionfG0CSgSb_tF_0();

  return v4;
}

- (id)reactionStringWithAdaptiveImageGlyph:(id)a3 isCommSafetySensitiveProvider:(id)a4
{
  v4 = self;
  v5 = [(IMEmojiTapback *)v4 associatedMessageEmoji];
  if (!v5)
  {
    sub_1A88C82E8();
    v5 = sub_1A88C82A8();
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  return v6;
}

- (NSString)description
{
  v2 = self;
  IMEmojiTapback.description.getter();

  v3 = sub_1A88C82A8();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = IMEmojiTapback.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (IMEmojiTapback)initWithAssociatedMessageType:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end