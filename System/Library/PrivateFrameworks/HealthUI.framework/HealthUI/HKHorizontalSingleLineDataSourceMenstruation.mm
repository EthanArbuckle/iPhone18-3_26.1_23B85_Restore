@interface HKHorizontalSingleLineDataSourceMenstruation
- (void)applyMarkStyleToPoint:(id)point sample:(id)sample;
@end

@implementation HKHorizontalSingleLineDataSourceMenstruation

- (void)applyMarkStyleToPoint:(id)point sample:(id)sample
{
  pointCopy = point;
  sampleCopy = sample;
  metadata = [sampleCopy metadata];
  v7 = [metadata valueForKey:*MEMORY[0x1E696BB28]];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = 1;
  }

  else
  {
    if ([sampleCopy value] != 5)
    {
      goto LABEL_6;
    }

    v9 = 3;
  }

  [pointCopy setMarkStyle:v9];
LABEL_6:
}

@end