@interface CKTranscriptMomentShareLabelCell
+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text displayScale:(double)scale;
- (CKTranscriptMomentShareLabelCell)initWithFrame:(CGRect)frame;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
@end

@implementation CKTranscriptMomentShareLabelCell

- (CKTranscriptMomentShareLabelCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = CKTranscriptMomentShareLabelCell;
  v3 = [(CKTranscriptAbstractLabelCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = _CreateLabel();
    label = v3->_label;
    v3->_label = v4;

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_label];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)fits attributedText:(id)text displayScale:(double)scale
{
  width = fits.width;
  textCopy = text;
  if ([textCopy length])
  {
    v7 = _CreateLabel();
    [v7 setAttributedText:textCopy];
    [v7 sizeThatFits:{width, 1.79769313e308}];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v9 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKTranscriptMomentShareLabelCell;
  itemCopy = item;
  [(CKTranscriptCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];

  [(CKTranscriptMomentShareLabelCell *)self setAttributedText:transcriptText];
}

@end