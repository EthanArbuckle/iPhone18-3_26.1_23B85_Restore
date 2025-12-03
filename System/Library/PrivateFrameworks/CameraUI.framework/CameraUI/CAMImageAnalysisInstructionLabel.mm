@interface CAMImageAnalysisInstructionLabel
- (CAMImageAnalysisInstructionLabel)initWithFrame:(CGRect)frame;
- (void)_updateText;
- (void)setInstruction:(int64_t)instruction;
@end

@implementation CAMImageAnalysisInstructionLabel

- (CAMImageAnalysisInstructionLabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMImageAnalysisInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMImageAnalysisInstructionLabel *)v3 _updateText];
  }

  return v4;
}

- (void)setInstruction:(int64_t)instruction
{
  if (self->_instruction != instruction)
  {
    self->_instruction = instruction;
    [(CAMImageAnalysisInstructionLabel *)self _updateText];
    delegate = [(CAMInstructionLabel *)self delegate];
    [delegate instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

- (void)_updateText
{
  instruction = [(CAMImageAnalysisInstructionLabel *)self instruction];
  if (!instruction)
  {
    v4 = @"IMAGE_ANALYSIS_INSTRUCTION_SELECT_TEXT";
    goto LABEL_5;
  }

  if (instruction == 1)
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