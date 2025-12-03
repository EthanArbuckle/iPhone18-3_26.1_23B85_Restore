@interface CKTranscriptBlockContactCell
+ (double)titleToButtonVerticalSpacing;
+ (id)blockContactButton;
- (CKTranscriptBlockContactCell)initWithFrame:(CGRect)frame;
- (NSAttributedString)attributedButtonText;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
- (void)setAttributedButtonText:(id)text;
@end

@implementation CKTranscriptBlockContactCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = CKTranscriptBlockContactCell;
  [(CKTranscriptStampCell *)&v15 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];
  [(CKTranscriptLabelCell *)self setAttributedText:transcriptText];

  if (!CKIsRunningInMessagesNotificationExtension() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    transcriptButtonText = [itemCopy transcriptButtonText];
    [(CKTranscriptBlockContactCell *)self setAttributedButtonText:transcriptButtonText];
  }
}

- (CKTranscriptBlockContactCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKTranscriptBlockContactCell;
  v3 = [(CKTranscriptLabelCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    blockContactButton = [objc_opt_class() blockContactButton];
    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:blockContactButton];

    [(CKTranscriptBlockContactCell *)v3 setBlockContactButton:blockContactButton];
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
  blockContactButton = [(CKTranscriptBlockContactCell *)self blockContactButton];
  [blockContactButton sizeToFit];
  [blockContactButton frame];
  v16 = v15;
  v18 = v17;
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v19 = CGRectGetMaxY(v32) - v18;
  v20 = (v9 - v16) * 0.5;
  [blockContactButton setFrame:{v5 + roundf(v20), v19, v16, v18}];
  label = [(CKTranscriptLabelCell *)self label];
  label2 = [(CKTranscriptLabelCell *)self label];
  if (label2)
  {
    v23 = label2;
    label3 = [(CKTranscriptLabelCell *)self label];
    attributedText = [label3 attributedText];

    if (attributedText)
    {
      label4 = [(CKTranscriptLabelCell *)self label];
      attributedText2 = [label4 attributedText];
      [attributedText2 boundingRectWithSize:1 options:0 context:{v9, 1.79769313e308}];
      v13 = v28;
    }
  }

  +[CKTranscriptBlockContactCell titleToButtonVerticalSpacing];
  v30 = v19 - v13 - v29;
  [label setNumberOfLines:0];
  [label setFrame:{v5, v30, v9, v13}];
}

- (void)addFilter:(id)filter
{
  v8.receiver = self;
  v8.super_class = CKTranscriptBlockContactCell;
  filterCopy = filter;
  [(CKTranscriptStampCell *)&v8 addFilter:filterCopy];
  v5 = [(CKTranscriptBlockContactCell *)self blockContactButton:v8.receiver];
  [filterCopy contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKTranscriptBlockContactCell;
  [(CKTranscriptStampCell *)&v4 clearFilters];
  blockContactButton = [(CKTranscriptBlockContactCell *)self blockContactButton];
  [blockContactButton setAlpha:1.0];
}

- (void)setAttributedButtonText:(id)text
{
  textCopy = text;
  attributedButtonText = [(CKTranscriptBlockContactCell *)self attributedButtonText];

  if (attributedButtonText != textCopy)
  {
    blockContactButton = [(CKTranscriptBlockContactCell *)self blockContactButton];
    [blockContactButton setAttributedTitle:textCopy forState:0];

    [(CKTranscriptBlockContactCell *)self setNeedsLayout];
  }
}

- (NSAttributedString)attributedButtonText
{
  blockContactButton = [(CKTranscriptBlockContactCell *)self blockContactButton];
  v3 = [blockContactButton attributedTitleForState:0];

  return v3;
}

+ (id)blockContactButton
{
  v2 = [MEMORY[0x1E69DC738] buttonWithType:0];
  v3 = +[CKUIBehavior sharedBehaviors];
  transcriptLabelAccessoryButtonConfiguration = [v3 transcriptLabelAccessoryButtonConfiguration];
  [v2 setConfiguration:transcriptLabelAccessoryButtonConfiguration];

  titleLabel = [v2 titleLabel];
  [titleLabel setNumberOfLines:0];

  return v2;
}

@end