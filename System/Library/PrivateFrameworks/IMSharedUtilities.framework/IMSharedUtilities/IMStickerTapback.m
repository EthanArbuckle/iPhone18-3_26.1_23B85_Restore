@interface IMStickerTapback
- (BOOL)isEqual:(id)a3;
- (IMStickerTapback)counterpart;
- (IMStickerTapback)initWithAssociatedMessageType:(int64_t)a3;
- (IMStickerTapback)initWithCoder:(id)a3;
- (IMStickerTapback)initWithIMRemoteObjectSerializedDictionary:(id)a3;
- (IMStickerTapback)initWithTransferGUID:(id)a3 isRemoved:(BOOL)a4;
- (IMStickerTapback)removedTapbackCounterpart;
- (IMStickerTapback)visibleTapbackCounterpart;
- (NSString)transferGUID;
- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3;
- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)a3;
- (id)reactionStringWithAdaptiveImageGlyph:(id)a3 isCommSafetySensitiveProvider:(id)a4;
@end

@implementation IMStickerTapback

- (NSString)transferGUID
{

  v2 = sub_1A88C82A8();

  return v2;
}

- (IMStickerTapback)counterpart
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

- (IMStickerTapback)removedTapbackCounterpart
{
  v2 = self;
  if (![(IMTapback *)v2 isRemoved])
  {
    v3 = [(IMStickerTapback *)v2 transferGUID];
    if (!v3)
    {
      sub_1A88C82E8();
      v3 = sub_1A88C82A8();
    }

    v4 = [objc_allocWithZone(IMStickerTapback) initWithTransferGUID:v3 isRemoved:1];

    v2 = v4;
  }

  return v2;
}

- (IMStickerTapback)visibleTapbackCounterpart
{
  v2 = self;
  if ([(IMTapback *)v2 isRemoved])
  {
    v3 = [(IMStickerTapback *)v2 transferGUID];
    if (!v3)
    {
      sub_1A88C82E8();
      v3 = sub_1A88C82A8();
    }

    v4 = [objc_allocWithZone(IMStickerTapback) initWithTransferGUID:v3 isRemoved:0];

    v2 = v4;
  }

  return v2;
}

- (IMStickerTapback)initWithTransferGUID:(id)a3 isRemoved:(BOOL)a4
{
  v4 = a4;
  v6 = sub_1A88C82E8();
  v7 = (self + OBJC_IVAR___IMStickerTapback__transferGuid);
  *v7 = v6;
  v7[1] = v8;
  if (v4)
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

- (IMStickerTapback)initWithCoder:(id)a3
{
  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

- (IMStickerTapback)initWithIMRemoteObjectSerializedDictionary:(id)a3
{
  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

- (id)actionStringFormatWithAdaptiveImageGlyphAvailable:(BOOL)a3
{
  v4 = self;
  v5 = IMStickerTapback.actionStringFormat(withAdaptiveImageGlyphAvailable:)(a3);

  return v5;
}

- (id)reactionStringWithAdaptiveImageGlyph:(id)a3 isCommSafetySensitiveProvider:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  v9 = sub_1A87EDED4(a3, v8, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v9;
}

- (id)adaptiveImageGlyphForPreviewStringWithAdaptiveImageGlyphProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self;
  v6 = [(IMStickerTapback *)v5 transferGUID];
  if (!v6)
  {
    sub_1A88C82E8();
    v6 = sub_1A88C82A8();
  }

  v7 = v4[2](v4, v6);

  _Block_release(v4);

  return v7;
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

  v6 = IMStickerTapback.isEqual(_:)(v8);

  sub_1A860169C(v8);
  return v6 & 1;
}

- (IMStickerTapback)initWithAssociatedMessageType:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end