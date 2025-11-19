@interface CKTranscriptBlockContactCell
+ (double)titleToButtonVerticalSpacing;
+ (id)blockContactButton;
- (CKTranscriptBlockContactCell)initWithFrame:(CGRect)a3;
- (NSAttributedString)attributedButtonText;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
- (void)setAttributedButtonText:(id)a3;
@end

@implementation CKTranscriptBlockContactCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v12 = a3;
  v15.receiver = self;
  v15.super_class = CKTranscriptBlockContactCell;
  [(CKTranscriptStampCell *)&v15 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 transcriptText];
  [(CKTranscriptLabelCell *)self setAttributedText:v13];

  if (!CKIsRunningInMessagesNotificationExtension() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [v12 transcriptButtonText];
    [(CKTranscriptBlockContactCell *)self setAttributedButtonText:v14];
  }
}

- (CKTranscriptBlockContactCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKTranscriptBlockContactCell;
  v3 = [(CKTranscriptLabelCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() blockContactButton];
    v5 = [(CKEditableCollectionViewCell *)v3 contentView];
    [v5 addSubview:v4];

    [(CKTranscriptBlockContactCell *)v3 setBlockContactButton:v4];
  }

  return v3;
}

+ (double)titleToButtonVerticalSpacing
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 mediumTranscriptSpace];
  v4 = v3;

  return v4;
}

- (void)layoutSubviewsForAlignmentContents
{
  v31.receiver = self;
  v31.super_class = CKTranscriptBlockContactCell;
  [(CKTranscriptStampCell *)&v31 layoutSubviewsForAlignmentContents];
  v3 = +[CKUIBehavior sharedBehaviors];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 transcriptBoldTextHeight];
  v13 = v12;
  v14 = [(CKTranscriptBlockContactCell *)self blockContactButton];
  [v14 sizeToFit];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v19 = CGRectGetMaxY(v32) - v18;
  v20 = (v9 - v16) * 0.5;
  [v14 setFrame:{v5 + roundf(v20), v19, v16, v18}];
  v21 = [(CKTranscriptLabelCell *)self label];
  v22 = [(CKTranscriptLabelCell *)self label];
  if (v22)
  {
    v23 = v22;
    v24 = [(CKTranscriptLabelCell *)self label];
    v25 = [v24 attributedText];

    if (v25)
    {
      v26 = [(CKTranscriptLabelCell *)self label];
      v27 = [v26 attributedText];
      [v27 boundingRectWithSize:1 options:0 context:{v9, 1.79769313e308}];
      v13 = v28;
    }
  }

  +[CKTranscriptBlockContactCell titleToButtonVerticalSpacing];
  v30 = v19 - v13 - v29;
  [v21 setNumberOfLines:0];
  [v21 setFrame:{v5, v30, v9, v13}];
}

- (void)addFilter:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKTranscriptBlockContactCell;
  v4 = a3;
  [(CKTranscriptStampCell *)&v8 addFilter:v4];
  v5 = [(CKTranscriptBlockContactCell *)self blockContactButton:v8.receiver];
  [v4 contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKTranscriptBlockContactCell;
  [(CKTranscriptStampCell *)&v4 clearFilters];
  v3 = [(CKTranscriptBlockContactCell *)self blockContactButton];
  [v3 setAlpha:1.0];
}

- (void)setAttributedButtonText:(id)a3
{
  v6 = a3;
  v4 = [(CKTranscriptBlockContactCell *)self attributedButtonText];

  if (v4 != v6)
  {
    v5 = [(CKTranscriptBlockContactCell *)self blockContactButton];
    [v5 setAttributedTitle:v6 forState:0];

    [(CKTranscriptBlockContactCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)attributedButtonText
{
  v2 = [(CKTranscriptBlockContactCell *)self blockContactButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

+ (id)blockContactButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptLabelAccessoryButtonConfiguration];
  [v2 setConfiguration:v4];

  v5 = [v2 titleLabel];
  [v5 setNumberOfLines:0];

  return v2;
}

@end