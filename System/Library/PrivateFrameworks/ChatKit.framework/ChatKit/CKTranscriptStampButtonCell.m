@interface CKTranscriptStampButtonCell
+ (id)createStampTextView;
- (id)attributedText;
- (void)setAttributedText:(id)a3;
@end

@implementation CKTranscriptStampButtonCell

+ (id)createStampTextView
{
  v2 = [CKTranscriptLegibilityButton buttonWithType:0];
  [v2 setTitleLabelLineBreakMode:0];
  [v2 setContentHorizontalAlignment:3];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 stampTranscriptInsets];
  [v2 setContentEdgeInsets:?];

  return v2;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptStampButtonCell *)self stampButton];
  [v5 setAttributedTitle:v4 forState:0];
}

- (id)attributedText
{
  v2 = [(CKTranscriptStampButtonCell *)self stampButton];
  v3 = [v2 attributedTitleForState:0];

  return v3;
}

@end