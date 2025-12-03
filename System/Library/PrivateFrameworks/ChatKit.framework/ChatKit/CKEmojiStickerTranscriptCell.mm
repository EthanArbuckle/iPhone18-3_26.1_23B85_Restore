@interface CKEmojiStickerTranscriptCell
- (CKEmojiStickerTranscriptCell)initWithFrame:(CGRect)frame;
- (void)animateToVisible:(BOOL)visible completion:(id)completion;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)prepareForReuse;
- (void)setSticker:(id)sticker;
@end

@implementation CKEmojiStickerTranscriptCell

- (CKEmojiStickerTranscriptCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CKEmojiStickerTranscriptCell;
  v3 = [(CKAssociatedStickerTranscriptCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  labelView = [(CKEmojiStickerTranscriptCell *)self labelView];
  [labelView setText:&stru_1F04268F8];
}

- (void)setSticker:(id)sticker
{
  v8.receiver = self;
  v8.super_class = CKEmojiStickerTranscriptCell;
  [(CKAssociatedStickerTranscriptCell *)&v8 setSticker:sticker];
  emojiSticker = [(CKEmojiStickerTranscriptCell *)self emojiSticker];

  if (emojiSticker)
  {
    emojiSticker2 = [(CKEmojiStickerTranscriptCell *)self emojiSticker];
    emojiString = [emojiSticker2 emojiString];
    labelView = [(CKEmojiStickerTranscriptCell *)self labelView];
    [labelView setText:emojiString];
  }
}

- (void)animateToVisible:(BOOL)visible completion:(id)completion
{
  visibleCopy = visible;
  completionCopy = completion;
  associatedItemView = [(CKAssociatedMessageTranscriptCell *)self associatedItemView];
  v8 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"opacity"];
  v9 = v8;
  if (visibleCopy)
  {
    v10 = &unk_1F04E86A8;
  }

  else
  {
    v10 = &unk_1F04E86B8;
  }

  if (visibleCopy)
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
  v16 = completionCopy;
  v13 = completionCopy;
  [v12 setCompletionBlock:v15];
  layer = [associatedItemView layer];
  [layer addAnimation:v9 forKey:@"opacity"];

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

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  v18.receiver = self;
  v18.super_class = CKEmojiStickerTranscriptCell;
  [(CKAssociatedStickerTranscriptCell *)&v18 configureForChatItem:item context:context animated:animated animationDuration:curve animationCurve:duration];
  labelView = [(CKEmojiStickerTranscriptCell *)self labelView];
  layer = [labelView layer];
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
  [layer setTransform:v17];

  labelView2 = [(CKEmojiStickerTranscriptCell *)self labelView];
  layer2 = [labelView2 layer];
  [layer2 removeAllAnimations];

  labelView3 = [(CKEmojiStickerTranscriptCell *)self labelView];
  [(CKAssociatedStickerTranscriptCell *)self setAssociatedItemView:labelView3];
}

@end