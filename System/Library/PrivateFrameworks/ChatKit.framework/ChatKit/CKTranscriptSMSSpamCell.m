@interface CKTranscriptSMSSpamCell
- (CKTranscriptSMSSpamCell)initWithFrame:(CGRect)a3;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7;
- (void)layoutSubviewsForAlignmentContents;
@end

@implementation CKTranscriptSMSSpamCell

- (void)configureForChatItem:(id)a3 context:(id)a4 animated:(BOOL)a5 animationDuration:(double)a6 animationCurve:(int64_t)a7
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CKTranscriptSMSSpamCell;
  v12 = a3;
  [(CKTranscriptStampCell *)&v14 configureForChatItem:v12 context:a4 animated:v9 animationDuration:a7 animationCurve:a6];
  v13 = [v12 transcriptText];

  [(CKTranscriptLabelCell *)self setAttributedText:v13];
}

- (CKTranscriptSMSSpamCell)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = CKTranscriptSMSSpamCell;
  return [(CKTranscriptLabelCell *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)layoutSubviewsForAlignmentContents
{
  v20.receiver = self;
  v20.super_class = CKTranscriptSMSSpamCell;
  [(CKTranscriptStampCell *)&v20 layoutSubviewsForAlignmentContents];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 transcriptBoldTextHeight];
  v5 = v4;
  v6 = [(CKTranscriptLabelCell *)self label];
  [v6 setNumberOfLines:0];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CKTranscriptLabelCell *)self label];
  if (v13)
  {
    v14 = v13;
    v15 = [(CKTranscriptLabelCell *)self label];
    v16 = [v15 attributedText];

    if (v16)
    {
      v17 = [(CKTranscriptLabelCell *)self label];
      v18 = [v17 attributedText];
      [v18 boundingRectWithSize:1 options:0 context:{v12, 1.79769313e308}];
      v5 = v19;
    }
  }

  [v6 setFrame:{v8, v10, v12, v5}];
}

- (void)addFilter:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKTranscriptSMSSpamCell;
  [(CKTranscriptStampCell *)&v3 addFilter:a3];
}

- (void)clearFilters
{
  v2.receiver = self;
  v2.super_class = CKTranscriptSMSSpamCell;
  [(CKTranscriptStampCell *)&v2 clearFilters];
}

@end