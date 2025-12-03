@interface CKTranscriptSMSSpamCell
- (CKTranscriptSMSSpamCell)initWithFrame:(CGRect)frame;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)layoutSubviewsForAlignmentContents;
@end

@implementation CKTranscriptSMSSpamCell

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  animatedCopy = animated;
  v14.receiver = self;
  v14.super_class = CKTranscriptSMSSpamCell;
  itemCopy = item;
  [(CKTranscriptStampCell *)&v14 configureForChatItem:itemCopy context:context animated:animatedCopy animationDuration:curve animationCurve:duration];
  transcriptText = [itemCopy transcriptText];

  [(CKTranscriptLabelCell *)self setAttributedText:transcriptText];
}

- (CKTranscriptSMSSpamCell)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = CKTranscriptSMSSpamCell;
  return [(CKTranscriptLabelCell *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)layoutSubviewsForAlignmentContents
{
  v20.receiver = self;
  v20.super_class = CKTranscriptSMSSpamCell;
  [(CKTranscriptStampCell *)&v20 layoutSubviewsForAlignmentContents];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptBoldTextHeight];
  v5 = v4;
  label = [(CKTranscriptLabelCell *)self label];
  [label setNumberOfLines:0];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  label2 = [(CKTranscriptLabelCell *)self label];
  if (label2)
  {
    v14 = label2;
    label3 = [(CKTranscriptLabelCell *)self label];
    attributedText = [label3 attributedText];

    if (attributedText)
    {
      label4 = [(CKTranscriptLabelCell *)self label];
      attributedText2 = [label4 attributedText];
      [attributedText2 boundingRectWithSize:1 options:0 context:{v12, 1.79769313e308}];
      v5 = v19;
    }
  }

  [label setFrame:{v8, v10, v12, v5}];
}

- (void)addFilter:(id)filter
{
  v3.receiver = self;
  v3.super_class = CKTranscriptSMSSpamCell;
  [(CKTranscriptStampCell *)&v3 addFilter:filter];
}

- (void)clearFilters
{
  v2.receiver = self;
  v2.super_class = CKTranscriptSMSSpamCell;
  [(CKTranscriptStampCell *)&v2 clearFilters];
}

@end