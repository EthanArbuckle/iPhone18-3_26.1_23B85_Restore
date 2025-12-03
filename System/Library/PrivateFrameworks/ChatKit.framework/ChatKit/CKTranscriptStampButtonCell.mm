@interface CKTranscriptStampButtonCell
+ (id)createStampTextView;
- (id)attributedText;
- (void)setAttributedText:(id)text;
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

- (void)setAttributedText:(id)text
{
  textCopy = text;
  stampButton = [(CKTranscriptStampButtonCell *)self stampButton];
  [stampButton setAttributedTitle:textCopy forState:0];
}

- (id)attributedText
{
  stampButton = [(CKTranscriptStampButtonCell *)self stampButton];
  v3 = [stampButton attributedTitleForState:0];

  return v3;
}

@end