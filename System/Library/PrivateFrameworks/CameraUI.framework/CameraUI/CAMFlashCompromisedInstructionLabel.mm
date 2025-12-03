@interface CAMFlashCompromisedInstructionLabel
+ (BOOL)shouldDisplayInstructionForCompromise:(unint64_t)compromise;
+ (id)_textForCompromise:(unint64_t)compromise;
- (void)_updateTextWithPriorCompromise:(unint64_t)compromise;
- (void)setCompromise:(unint64_t)compromise;
@end

@implementation CAMFlashCompromisedInstructionLabel

- (void)setCompromise:(unint64_t)compromise
{
  compromise = self->_compromise;
  if (compromise != compromise)
  {
    self->_compromise = compromise;
    [(CAMFlashCompromisedInstructionLabel *)self _updateTextWithPriorCompromise:compromise];
  }
}

+ (BOOL)shouldDisplayInstructionForCompromise:(unint64_t)compromise
{
  v3 = [self _textForCompromise:compromise];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)_updateTextWithPriorCompromise:(unint64_t)compromise
{
  v7 = [objc_opt_class() _textForCompromise:{-[CAMFlashCompromisedInstructionLabel compromise](self, "compromise")}];
  v5 = [objc_opt_class() _textForCompromise:compromise];
  if ([v7 length])
  {
    [(CAMInstructionLabel *)self setText:v7];
  }

  if (([v7 isEqualToString:v5] & 1) == 0)
  {
    delegate = [(CAMInstructionLabel *)self delegate];
    [delegate instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

+ (id)_textForCompromise:(unint64_t)compromise
{
  if (compromise == 2)
  {
    v4 = @"FLASH_COMPROMISED_WALLET";
    goto LABEL_5;
  }

  if (compromise == 1)
  {
    v4 = @"FLASH_COMPROMISED_BATTERY_PACK";
LABEL_5:
    v5 = CAMLocalizedFrameworkString(v4, 0);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = compromise == 0;
  }

  if (!v6)
  {
    v5 = @"Mitigation suppressed. (Placeholder copy. Do not file radars.)";
  }

  return v5;
}

@end