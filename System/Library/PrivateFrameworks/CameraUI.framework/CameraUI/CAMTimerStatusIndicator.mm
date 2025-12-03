@interface CAMTimerStatusIndicator
- (id)valueText;
- (void)setTimerDuration:(int64_t)duration;
@end

@implementation CAMTimerStatusIndicator

- (void)setTimerDuration:(int64_t)duration
{
  if (self->_timerDuration != duration)
  {
    self->_timerDuration = duration;
    if (duration)
    {
      [(CAMControlStatusIndicator *)self setNeedsUpdateValueText];
    }
  }
}

- (id)valueText
{
  v2 = [(CAMTimerStatusIndicator *)self timerDuration]- 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1A3A6A540[v2];
  }

  integerFormatter = [objc_opt_class() integerFormatter];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v6 = [integerFormatter stringFromNumber:v5];

  v7 = CAMLocalizedFrameworkString(@"TIMER_DURATION_TEXT", 0);
  v8 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v6];

  return v8;
}

@end