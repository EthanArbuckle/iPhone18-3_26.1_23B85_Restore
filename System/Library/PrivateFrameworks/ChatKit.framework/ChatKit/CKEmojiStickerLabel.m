@interface CKEmojiStickerLabel
- (CKEmojiStickerLabel)initWithCoder:(id)a3;
- (CKEmojiStickerLabel)initWithFrame:(CGRect)a3;
- (void)_configure;
@end

@implementation CKEmojiStickerLabel

- (CKEmojiStickerLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKEmojiStickerLabel;
  v3 = [(CKEmojiStickerLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKEmojiStickerLabel *)v3 _configure];
  }

  return v4;
}

- (CKEmojiStickerLabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CKEmojiStickerLabel;
  v3 = [(CKEmojiStickerLabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CKEmojiStickerLabel *)v3 _configure];
  }

  return v4;
}

- (void)_configure
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 emojiStickerTranscriptCellFont];
  [(CKEmojiStickerLabel *)self setFont:v4];

  [(CKEmojiStickerLabel *)self setUserInteractionEnabled:0];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 primaryLabelColor];
  [(CKEmojiStickerLabel *)self setTextColor:v7];

  [(CKEmojiStickerLabel *)self setTextAlignment:1];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(CKEmojiStickerLabel *)self setBackgroundColor:v8];
}

@end