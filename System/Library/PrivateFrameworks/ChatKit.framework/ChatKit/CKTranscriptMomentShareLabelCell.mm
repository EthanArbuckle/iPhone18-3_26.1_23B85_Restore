@interface CKTranscriptMomentShareLabelCell
+ (CGSize)sizeThatFits:(CGSize)a3 attributedText:(id)a4 displayScale:(double)a5;
- (CKTranscriptMomentShareLabelCell)initWithFrame:(CGRect)a3;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
@end

@implementation CKTranscriptMomentShareLabelCell

- (CKTranscriptMomentShareLabelCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = CKTranscriptMomentShareLabelCell;
  v3 = [(CKTranscriptAbstractLabelCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = _CreateLabel();
    label = v3->_label;
    v3->_label = v4;

    v6 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_label];
  }

  return v3;
}

+ (CGSize)sizeThatFits:(CGSize)a3 attributedText:(id)a4 displayScale:(double)a5
{
  width = a3.width;
  v6 = a4;
  if ([v6 length])
  {
    v7 = _CreateLabel();
    [v7 setAttributedText:v6];
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

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKTranscriptMomentShareLabelCell;
  v12 = a3;
  [(CKTranscriptCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 transcriptText];

  [(CKTranscriptMomentShareLabelCell *)self setAttributedText:v13];
}

@end