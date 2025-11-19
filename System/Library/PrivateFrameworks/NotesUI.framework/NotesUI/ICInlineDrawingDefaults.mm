@interface ICInlineDrawingDefaults
+ (void)updateTouchPredictionPointsFromOverride;
@end

@implementation ICInlineDrawingDefaults

+ (void)updateTouchPredictionPointsFromOverride
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 integerForKey:*MEMORY[0x1E69B7B10]];

  if (v3 < 0)
  {
    if (!MGGetBoolAnswer())
    {
      return;
    }

    v3 = 2;
  }

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v4 setInteger:v3 forKey:*MEMORY[0x1E69B7B08]];
}

@end