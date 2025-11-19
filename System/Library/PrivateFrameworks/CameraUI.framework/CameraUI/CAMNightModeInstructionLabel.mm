@interface CAMNightModeInstructionLabel
- (CAMNightModeInstructionLabel)initWithFrame:(CGRect)a3;
- (void)_updateDisplay;
- (void)_updateSecondsRemaining;
- (void)_zeroOutSecondsRemainingAndCancelTimer;
- (void)countDownFrom:(double)a3;
@end

@implementation CAMNightModeInstructionLabel

- (CAMNightModeInstructionLabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMNightModeInstructionLabel;
  v3 = [(CAMInstructionLabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = CAMLocalizedFrameworkString(@"LOW_LIGHT_INSTRUCTION_HOLD_STILL", 0);
    [(CAMInstructionLabel *)v3 setText:v4];
  }

  return v3;
}

- (void)countDownFrom:(double)a3
{
  [(CAMNightModeInstructionLabel *)self set_secondsRemaining:a3];
  [(CAMNightModeInstructionLabel *)self _updateDisplay];
  v4 = [(CAMNightModeInstructionLabel *)self _countDownTimer];
  [v4 invalidate];

  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__updateSecondsRemaining selector:0 userInfo:1 repeats:1.0];
  [(CAMNightModeInstructionLabel *)self set_countDownTimer:v5];
}

- (void)_updateSecondsRemaining
{
  [(CAMNightModeInstructionLabel *)self _secondsRemaining];
  [(CAMNightModeInstructionLabel *)self set_secondsRemaining:v3 + -1.0];
  [(CAMNightModeInstructionLabel *)self _secondsRemaining];
  if (v4 <= 0.0)
  {

    [(CAMNightModeInstructionLabel *)self _zeroOutSecondsRemainingAndCancelTimer];
  }

  else
  {

    [(CAMNightModeInstructionLabel *)self _updateDisplay];
  }
}

- (void)_zeroOutSecondsRemainingAndCancelTimer
{
  v3 = [(CAMNightModeInstructionLabel *)self _countDownTimer];
  [v3 invalidate];

  [(CAMNightModeInstructionLabel *)self set_countDownTimer:0];
  [(CAMNightModeInstructionLabel *)self set_secondsRemaining:0.0];

  [(CAMNightModeInstructionLabel *)self _updateDisplay];
}

- (void)_updateDisplay
{
  v3 = [CAMNightModeInstructionLabelHelper localizedTextWithSeconds:llround(self->__secondsRemaining)];
  [(CAMInstructionLabel *)self setText:v3];
}

@end