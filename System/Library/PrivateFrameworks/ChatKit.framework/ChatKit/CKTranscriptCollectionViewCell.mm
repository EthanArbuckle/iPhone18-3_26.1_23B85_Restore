@interface CKTranscriptCollectionViewCell
- (CGRect)contentAlignmentRect;
- (NSString)description;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKTranscriptCollectionViewCell

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKTranscriptCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v16 layoutSubviews];
  debugLabel = [(CKTranscriptCollectionViewCell *)self debugLabel];

  if (debugLabel)
  {
    contentView = [(CKTranscriptCollectionViewCell *)self contentView];
    systemPinkColor = [MEMORY[0x1E69DC888] systemPinkColor];
    [contentView setBackgroundColor:systemPinkColor];

    contentView2 = [(CKTranscriptCollectionViewCell *)self contentView];
    [contentView2 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    debugLabel2 = [(CKTranscriptCollectionViewCell *)self debugLabel];
    [debugLabel2 setFrame:{v8, v10, v12, v14}];
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewCell;
  [(CKTranscriptCollectionViewCell *)&v4 prepareForReuse];
  debugLabel = [(CKTranscriptCollectionViewCell *)self debugLabel];
  [debugLabel setText:0];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  debugLabel = [(CKTranscriptCollectionViewCell *)self debugLabel];
  text = [debugLabel text];
  v7 = [v3 stringWithFormat:@"%@-%p %@", v4, self, text];

  return v7;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  itemCopy = item;
  debugLabel = [(CKTranscriptCollectionViewCell *)self debugLabel];

  if (!debugLabel)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v11 setAdjustsFontSizeToFitWidth:1];
    [v11 setNumberOfLines:0];
    contentView = [(CKTranscriptCollectionViewCell *)self contentView];
    [contentView addSubview:v11];

    [(CKTranscriptCollectionViewCell *)self setDebugLabel:v11];
  }

  v13 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  iMChatItem = [itemCopy IMChatItem];

  guid = [iMChatItem guid];
  v18 = [v13 stringWithFormat:@"%@-%@", v14, guid];

  debugLabel2 = [(CKTranscriptCollectionViewCell *)self debugLabel];
  [debugLabel2 setText:v18];
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