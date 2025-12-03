@interface ICInlineDrawingDefaults
+ (void)updateTouchPredictionPointsFromOverride;
@end

@implementation ICInlineDrawingDefaults

+ (void)updateTouchPredictionPointsFromOverride
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:*MEMORY[0x1E69B7B10]];

  if (v3 < 0)
  {
    if (!MGGetBoolAnswer())
    {
      return;
    }

    v3 = 2;
  }

  standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults2 setInteger:v3 forKey:*MEMORY[0x1E69B7B08]];
}

@end