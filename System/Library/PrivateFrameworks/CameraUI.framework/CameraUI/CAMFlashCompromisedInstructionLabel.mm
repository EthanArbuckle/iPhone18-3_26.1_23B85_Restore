@interface CAMFlashCompromisedInstructionLabel
+ (BOOL)shouldDisplayInstructionForCompromise:(unint64_t)a3;
+ (id)_textForCompromise:(unint64_t)a3;
- (void)_updateTextWithPriorCompromise:(unint64_t)a3;
- (void)setCompromise:(unint64_t)a3;
@end

@implementation CAMFlashCompromisedInstructionLabel

- (void)setCompromise:(unint64_t)a3
{
  compromise = self->_compromise;
  if (compromise != a3)
  {
    self->_compromise = a3;
    [(CAMFlashCompromisedInstructionLabel *)self _updateTextWithPriorCompromise:compromise];
  }
}

+ (BOOL)shouldDisplayInstructionForCompromise:(unint64_t)a3
{
  v3 = [a1 _textForCompromise:a3];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)_updateTextWithPriorCompromise:(unint64_t)a3
{
  v7 = [objc_opt_class() _textForCompromise:{-[CAMFlashCompromisedInstructionLabel compromise](self, "compromise")}];
  v5 = [objc_opt_class() _textForCompromise:a3];
  if ([v7 length])
  {
    [(CAMInstructionLabel *)self setText:v7];
  }

  if (([v7 isEqualToString:v5] & 1) == 0)
  {
    v6 = [(CAMInstructionLabel *)self delegate];
    [v6 instructionLabelDidChangeIntrinsicContentSize:self];
  }
}

+ (id)_textForCompromise:(unint64_t)a3
{
  if (a3 == 2)
  {
    v4 = @"FLASH_COMPROMISED_WALLET";
    goto LABEL_5;
  }

  if (a3 == 1)
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
    v6 = a3 == 0;
  }

  if (!v6)
  {
    v5 = @"Mitigation suppressed. (Placeholder copy. Do not file radars.)";
  }

  return v5;
}

@end