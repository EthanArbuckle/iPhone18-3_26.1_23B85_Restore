@interface IMStickerTapback
- (BOOL)isEqual:(id)equal;
- (IMStickerTapback)counterpart;
- (IMStickerTapback)initWithAssociatedMessageType:(int64_t)type;
- (IMStickerTapback)initWithCoder:(id)coder;
- (IMStickerTapback)initWithIMRemoteObjectSerializedDictionary:(id)dictionary;
- (IMStickerTapback)initWithTransferGUID:(id)d isRemoved:(BOOL)removed;
- (IMStickerTapback)removedTapbackCounterpart;
- (IMStickerTapback)visibleTapbackCounterpart;
- (NSString)transferGUID;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)available;
- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)provider;
- (id)reactionStringWithAdaptiveImageGlyph:(id)glyph isCommSafetySensitiveProvider:(id)provider;
@end

@implementation IMStickerTapback

- (NSString)transferGUID
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMStickerTapback)counterpart
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

- (IMStickerTapback)removedTapbackCounterpart
{
  selfCopy = self;
  if (![(IMTapback *)selfCopy isRemoved])
  {
    transferGUID = [(IMStickerTapback *)selfCopy transferGUID];
    if (!transferGUID)
    {
      sub_1A88C82E8();
      transferGUID = sub_1A88C82A8();
    }

    v4 = [objc_allocWithZone(IMStickerTapback) initWithTransferGUID:transferGUID isRemoved:1];

    selfCopy = v4;
  }

  return selfCopy;
}

- (IMStickerTapback)visibleTapbackCounterpart
{
  selfCopy = self;
  if ([(IMTapback *)selfCopy isRemoved])
  {
    transferGUID = [(IMStickerTapback *)selfCopy transferGUID];
    if (!transferGUID)
    {
      sub_1A88C82E8();
      transferGUID = sub_1A88C82A8();
    }

    v4 = [objc_allocWithZone(IMStickerTapback) initWithTransferGUID:transferGUID isRemoved:0];

    selfCopy = v4;
  }

  return selfCopy;
}

- (IMStickerTapback)initWithTransferGUID:(id)d isRemoved:(BOOL)removed
{
  removedCopy = removed;
  v6 = sub_1A88C82E8();
  v7 = (self + OBJC_IVAR___IMStickerTapback__transferGuid);
  *v7 = v6;
  v7[1] = v8;
  if (removedCopy)
  {
    v9 = 3007;
  }

  else
  {
    v9 = 2007;
  }

  v11.receiver = self;
  v11.super_class = IMStickerTapback;
  return [(IMTapback *)&v11 initWithAssociatedMessageType:v9];
}

- (IMStickerTapback)initWithCoder:(id)coder
{
  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

- (IMStickerTapback)initWithIMRemoteObjectSerializedDictionary:(id)dictionary
{
  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)available
{
  selfCopy = self;
  v5 = IMStickerTapback.actionStringFormat(withAdaptiveImageGlyphAvailable:)(available);

  return v5;
}

- (id)reactionStringWithAdaptiveImageGlyph:(id)glyph isCommSafetySensitiveProvider:(id)provider
{
  v6 = _Block_copy(provider);
  _Block_copy(v6);
  glyphCopy = glyph;
  selfCopy = self;
  v9 = sub_1A87EDED4(glyph, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v9;
}

- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)provider
{
  v4 = _Block_copy(provider);
  selfCopy = self;
  transferGUID = [(IMStickerTapback *)selfCopy transferGUID];
  if (!transferGUID)
  {
    sub_1A88C82E8();
    transferGUID = sub_1A88C82A8();
  }

  v7 = v4[2](v4, transferGUID);

  _Block_release(v4);

  return v7;
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

  v6 = IMStickerTapback.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (IMStickerTapback)initWithAssociatedMessageType:(int64_t)type
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end