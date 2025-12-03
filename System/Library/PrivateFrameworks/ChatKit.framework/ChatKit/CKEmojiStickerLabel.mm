@interface CKEmojiStickerLabel
- (CKEmojiStickerLabel)initWithCoder:(id)coder;
- (CKEmojiStickerLabel)initWithFrame:(CGRect)frame;
- (void)_configure;
@end

@implementation CKEmojiStickerLabel

- (CKEmojiStickerLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKEmojiStickerLabel;
  v3 = [(CKEmojiStickerLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKEmojiStickerLabel *)v3 _configure];
  }

  return v4;
}

- (CKEmojiStickerLabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CKEmojiStickerLabel;
  v3 = [(CKEmojiStickerLabel *)&v6 initWithCoder:coder];
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
  emojiStickerTranscriptCellFont = [v3 emojiStickerTranscriptCellFont];
  [(CKEmojiStickerLabel *)self setFont:emojiStickerTranscriptCellFont];

  [(CKEmojiStickerLabel *)self setUserInteractionEnabled:0];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  primaryLabelColor = [theme primaryLabelColor];
  [(CKEmojiStickerLabel *)self setTextColor:primaryLabelColor];

  [(CKEmojiStickerLabel *)self setTextAlignment:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(CKEmojiStickerLabel *)self setBackgroundColor:clearColor];
}

@end