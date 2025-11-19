@interface CKEmojiStickerTranscriptCell
- (CKEmojiStickerTranscriptCell)initWithFrame:(CGRect)a3;
- (void)animateToVisible:(BOOL)a3 completion:(id)a4;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)prepareForReuse;
- (void)setSticker:(id)a3;
@end

@implementation CKEmojiStickerTranscriptCell

- (CKEmojiStickerTranscriptCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CKEmojiStickerTranscriptCell;
  v3 = [(CKAssociatedStickerTranscriptCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [CKEmojiStickerLabel alloc];
    v5 = [(CKEmojiStickerLabel *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    labelView = v3->_labelView;
    v3->_labelView = v5;
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKEmojiStickerTranscriptCell;
  [(CKAssociatedStickerTranscriptCell *)&v4 prepareForReuse];
  v3 = [(CKEmojiStickerTranscriptCell *)self labelView];
  [v3 setText:&stru_1F04268F8];
}

- (void)setSticker:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKEmojiStickerTranscriptCell;
  [(CKAssociatedStickerTranscriptCell *)&v8 setSticker:a3];
  v4 = [(CKEmojiStickerTranscriptCell *)self emojiSticker];

  if (v4)
  {
    v5 = [(CKEmojiStickerTranscriptCell *)self emojiSticker];
    v6 = [v5 emojiString];
    v7 = [(CKEmojiStickerTranscriptCell *)self labelView];
    [v7 setText:v6];
  }
}

- (void)animateToVisible:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  v8 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  v9 = v8;
  if (v4)
  {
    v10 = &unk_1F04E86A8;
  }

  else
  {
    v10 = &unk_1F04E86B8;
  }

  if (v4)
  {
    v11 = &unk_1F04E86B8;
  }

  else
  {
    v11 = &unk_1F04E86A8;
  }

  [v8 setFromValue:v10];
  [v9 setToValue:v11];
  [v9 setMass:2.0];
  [v9 setStiffness:300.0];
  [v9 setDamping:400.0];
  [v9 setFillMode:*MEMORY[0x1E69797E0]];
  [v9 setRemovedOnCompletion:0];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:0.5];
  v12 = MEMORY[0x1E6979518];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__CKEmojiStickerTranscriptCell_animateToVisible_completion___block_invoke;
  v15[3] = &unk_1E72EBDB8;
  v16 = v6;
  v13 = v6;
  [v12 setCompletionBlock:v15];
  v14 = [v7 layer];
  [v14 addAnimation:v9 forKey:@"opacity"];

  [MEMORY[0x1E6979518] commit];
}

uint64_t __60__CKEmojiStickerTranscriptCell_animateToVisible_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v18.receiver = self;
  v18.super_class = CKEmojiStickerTranscriptCell;
  [(CKAssociatedStickerTranscriptCell *)&v18 configureForChatItem:a3 context:a4 animated:a5 animationDuration:a7 animationCurve:a6];
  v8 = [(CKEmojiStickerTranscriptCell *)self labelView];
  v9 = [v8 layer];
  v10 = *(MEMORY[0x1E69792E8] + 80);
  v17[4] = *(MEMORY[0x1E69792E8] + 64);
  v17[5] = v10;
  v11 = *(MEMORY[0x1E69792E8] + 112);
  v17[6] = *(MEMORY[0x1E69792E8] + 96);
  v17[7] = v11;
  v12 = *(MEMORY[0x1E69792E8] + 16);
  v17[0] = *MEMORY[0x1E69792E8];
  v17[1] = v12;
  v13 = *(MEMORY[0x1E69792E8] + 48);
  v17[2] = *(MEMORY[0x1E69792E8] + 32);
  v17[3] = v13;
  [v9 setTransform:v17];

  v14 = [(CKEmojiStickerTranscriptCell *)self labelView];
  v15 = [v14 layer];
  [v15 removeAllAnimations];

  v16 = [(CKEmojiStickerTranscriptCell *)self labelView];
  [(CKAssociatedStickerTranscriptCell *)self setAssociatedItemView:v16];
}

@end