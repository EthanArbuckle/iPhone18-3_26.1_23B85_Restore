@interface CKTranscriptCollectionViewCell
- (CGRect)contentAlignmentRect;
- (NSString)description;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKTranscriptCollectionViewCell

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKTranscriptCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v16 layoutSubviews];
  v3 = [(CKTranscriptCollectionViewCell *)self debugLabel];

  if (v3)
  {
    v4 = [(CKTranscriptCollectionViewCell *)self contentView];
    v5 = [MEMORY[0x1E69DC888] systemPinkColor];
    [v4 setBackgroundColor:v5];

    v6 = [(CKTranscriptCollectionViewCell *)self contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = [(CKTranscriptCollectionViewCell *)self debugLabel];
    [v15 setFrame:{v8, v10, v12, v14}];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v4 prepareForReuse];
  v3 = [(CKTranscriptCollectionViewCell *)self debugLabel];
  [v3 setText:0];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CKTranscriptCollectionViewCell *)self debugLabel];
  v6 = [v5 text];
  v7 = [v3 stringWithFormat:@"%@-%p %@", v4, self, v6];

  return v7;
}

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v8 = a3;
  v9 = [(CKTranscriptCollectionViewCell *)self debugLabel];

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setNumberOfLines:0];
    v12 = [(CKTranscriptCollectionViewCell *)self contentView];
    [v12 addSubview:v11];

    [(CKTranscriptCollectionViewCell *)self setDebugLabel:v11];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v15 = [v8 IMChatItem];

  v16 = [v15 guid];
  v18 = [v13 stringWithFormat:@"%@-%@", v14, v16];

  v17 = [(CKTranscriptCollectionViewCell *)self debugLabel];
  [v17 setText:v18];
}

- (CGRect)contentAlignmentRect
{
  x = self->contentAlignmentRect.origin.x;
  y = self->contentAlignmentRect.origin.y;
  width = self->contentAlignmentRect.size.width;
  height = self->contentAlignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end