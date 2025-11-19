@interface CKTranscriptLabelCell
+ (id)createStampLabelView;
- (CKTranscriptLabelCell)initWithFrame:(CGRect)a3;
- (id)attributedText;
- (void)setAttributedText:(id)a3;
@end

@implementation CKTranscriptLabelCell

- (CKTranscriptLabelCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKTranscriptLabelCell;
  v3 = [(CKTranscriptStampCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CKTranscriptLabelCell *)v3 label];
    [v5 setNumberOfLines:0];
  }

  return v4;
}

+ (id)createStampLabelView
{
  v2 = [CKTranscriptLegibilityLabel alloc];
  v3 = [(CKTranscriptLegibilityLabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(CKTranscriptLabelCell *)self label];
  [v5 setAttributedText:v4];
}

- (id)attributedText
{
  v2 = [(CKTranscriptLabelCell *)self label];
  v3 = [v2 attributedText];

  return v3;
}

@end