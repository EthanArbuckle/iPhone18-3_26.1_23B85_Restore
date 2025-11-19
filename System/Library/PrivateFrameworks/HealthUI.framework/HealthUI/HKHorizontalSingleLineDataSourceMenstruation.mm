@interface HKHorizontalSingleLineDataSourceMenstruation
- (void)applyMarkStyleToPoint:(id)a3 sample:(id)a4;
@end

@implementation HKHorizontalSingleLineDataSourceMenstruation

- (void)applyMarkStyleToPoint:(id)a3 sample:(id)a4
{
  v10 = a3;
  v5 = a4;
  v6 = [v5 metadata];
  v7 = [v6 valueForKey:*MEMORY[0x1E696BB28]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    if ([v5 value] != 5)
    {
      goto LABEL_6;
    }

    v9 = 3;
  }

  [v10 setMarkStyle:v9];
LABEL_6:
}

@end