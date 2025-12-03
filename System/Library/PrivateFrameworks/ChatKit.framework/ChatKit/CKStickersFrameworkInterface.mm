@interface CKStickersFrameworkInterface
+ (BOOL)updateSavedStickerWithIdentifier:(id)identifier stickerEffectEnum:(int64_t)enum error:(id *)error;
+ (id)uiStickerForSTKSticker:(id)sticker;
+ (id)uiStickerWithIdentifier:(id)identifier;
- (CKStickersFrameworkInterface)init;
@end

@implementation CKStickersFrameworkInterface

+ (BOOL)updateSavedStickerWithIdentifier:(id)identifier stickerEffectEnum:(int64_t)enum error:(id *)error
{
  v5 = sub_190D518A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51880();
  sub_190B038C0();
  (*(v6 + 8))(v8, v5);
  return 1;
}

+ (id)uiStickerWithIdentifier:(id)identifier
{
  v3 = sub_190D518A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51880();
  v7 = sub_190B03B30();
  (*(v4 + 8))(v6, v3);

  return v7;
}

+ (id)uiStickerForSTKSticker:(id)sticker
{
  stickerCopy = sticker;
  v4 = sub_190B01FC4();

  return v4;
}

- (CKStickersFrameworkInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StickersFrameworkInterface();
  return [(CKStickersFrameworkInterface *)&v3 init];
}

@end