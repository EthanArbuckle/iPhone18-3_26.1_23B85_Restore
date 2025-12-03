@interface CKTranscriptLabelCell
+ (id)createStampLabelView;
- (CKTranscriptLabelCell)initWithFrame:(CGRect)frame;
- (id)attributedText;
- (void)setAttributedText:(id)text;
@end

@implementation CKTranscriptLabelCell

- (CKTranscriptLabelCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKTranscriptLabelCell;
  v3 = [(CKTranscriptStampCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    label = [(CKTranscriptLabelCell *)v3 label];
    [label setNumberOfLines:0];
  }

  return v4;
}

+ (id)createStampLabelView
{
  v2 = [CKTranscriptLegibilityLabel alloc];
  v3 = [(CKTranscriptLegibilityLabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  label = [(CKTranscriptLabelCell *)self label];
  [label setAttributedText:textCopy];
}

- (id)attributedText
{
  label = [(CKTranscriptLabelCell *)self label];
  attributedText = [label attributedText];

  return attributedText;
}

@end