@interface BlastDoorEmojiImageAttachmentInfo
- (BlastDoorEmojiImageAttachmentInfo)init;
- (NSString)description;
- (NSString)stickerBalloonBundleID;
- (NSString)stickerExternalURI;
- (NSString)stickerHash;
- (NSString)stickerPackIdentifier;
@end

@implementation BlastDoorEmojiImageAttachmentInfo

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo, 0x111uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo, sizeof(v6));
  sub_2142E346C(__dst, v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (NSString)stickerPackIdentifier
{
  if (*&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 136])
  {
    v2 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 128];
    v3 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 136];

    v4 = sub_2146D9588();

    return v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSString)stickerHash
{
  if (*&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 176])
  {
    v2 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 168];
    v3 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 176];

    v4 = sub_2146D9588();

    return v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSString)stickerExternalURI
{
  v2 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 216];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 208];
    v5 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 216];

    v6 = sub_2146D9588();
    sub_213FDC6D0(v4, v2);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)stickerBalloonBundleID
{
  v2 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 256];
  if (v2)
  {
    if (v2 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v4 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 248];
    v5 = *&self->emojiImageAttachmentInfo[OBJC_IVAR___BlastDoorEmojiImageAttachmentInfo_emojiImageAttachmentInfo + 256];

    v6 = sub_2146D9588();
    sub_213FDC6D0(v4, v2);
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorEmojiImageAttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end