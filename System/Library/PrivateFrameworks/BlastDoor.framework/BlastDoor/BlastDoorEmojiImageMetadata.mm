@interface BlastDoorEmojiImageMetadata
- (BlastDoorEmojiImageMetadata)init;
- (NSString)description;
@end

@implementation BlastDoorEmojiImageMetadata

- (NSString)description
{
  v2 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 8];
  v3 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 40];
  v15 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 24];
  v16 = v3;
  v4 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 8];
  v14[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata);
  v14[1] = v4;
  v5 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 40];
  v11 = v15;
  v12 = v5;
  v17 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 56];
  v13 = *&self->emojiImageMetadata[OBJC_IVAR___BlastDoorEmojiImageMetadata_emojiImageMetadata + 56];
  v9 = v14[0];
  v10 = v2;
  sub_21445E79C(v14, v8);
  sub_2146D9608();
  v6 = sub_2146D9588();

  return v6;
}

- (BlastDoorEmojiImageMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end