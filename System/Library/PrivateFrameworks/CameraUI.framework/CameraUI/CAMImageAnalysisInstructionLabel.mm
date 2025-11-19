@interface CAMImageAnalysisInstructionLabel
- (CAMImageAnalysisInstructionLabel)initWithFrame:(CGRect)a3;
- (void)_updateText;
- (void)setInstruction:(int64_t)a3;
@end

@implementation CAMImageAnalysisInstructionLabel

- (CAMImageAnalysisInstructionLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMImageAnalysisInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMImageAnalysisInstructionLabel *)v3 _updateText];
  }

  return v4;
}

- (void)setInstruction:(int64_t)a3
{
  if (self->_instruction != a3)
  {
    self->_instruction = a3;
    [(CAMImageAnalysisInstructionLabel *)self _updateText];
    v5 = [(CAMInstructionLabel *)self delegate];
    [v5 instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

- (void)_updateText
{
  v3 = [(CAMImageAnalysisInstructionLabel *)self instruction];
  if (!v3)
  {
    v4 = @"IMAGE_ANALYSIS_INSTRUCTION_SELECT_TEXT";
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = @"IMAGE_ANALYSIS_INSTRUCTION_NO_TEXT_FOUND";
LABEL_5:
    v5 = CAMLocalizedFrameworkString(v4, 0);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v6 = v5;
  [(CAMInstructionLabel *)self setText:v5];
}

@end