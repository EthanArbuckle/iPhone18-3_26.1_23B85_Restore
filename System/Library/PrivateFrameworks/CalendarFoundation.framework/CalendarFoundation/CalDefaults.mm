@interface CalDefaults
+ (id)shared;
+ (void)initialize;
@end

@implementation CalDefaults

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x1E695DF20];
    v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v10 = [v2 dictionaryWithObjectsAndKeys:{v3, @"display birthdays calendar", v4, @"add holiday calendar", v5, @"Add default alarms", v6, @"Disable invitation alerts", v7, @"Disable shared calendar alerts", v8, @"CALPrefCrashImmediatelyUponException", 0}];

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults registerDefaults:v10];
  }
}

+ (id)shared
{
  v2 = @"com.apple.mobilecal";
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__CalDefaults_shared__block_invoke;
  block[3] = &unk_1E7EC66B0;
  v7 = v2;
  if (shared_onceToken != -1)
  {
    dispatch_once(&shared_onceToken, block);
  }

  v3 = shared__defaults;
  v4 = shared__defaults;

  return v3;
}

uint64_t __21__CalDefaults_shared__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  MainBundle = CFBundleGetMainBundle();
  if ([v2 isEqualToString:CFBundleGetIdentifier(MainBundle)])
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:*(a1 + 32)];
  }

  shared__defaults = v4;

  return MEMORY[0x1EEE66BB8]();
}

@end