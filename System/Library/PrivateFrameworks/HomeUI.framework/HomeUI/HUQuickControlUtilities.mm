@interface HUQuickControlUtilities
+ (BOOL)shouldAlwaysDisplayQuickControlAsSwitch:(id)a3;
+ (BOOL)shouldDisplayQuickControlAsPushButton:(id)a3 preferredControl:(unint64_t)a4;
+ (unint64_t)iconSizeForQuickControlSize:(unint64_t)a3;
+ (unint64_t)quickControlStepperViewSizeForViewSizeSubclass:(int64_t)a3;
+ (unint64_t)sliderQuickControlSizeForViewSizeSubclass:(int64_t)a3;
@end

@implementation HUQuickControlUtilities

+ (unint64_t)quickControlStepperViewSizeForViewSizeSubclass:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_282490E60;
  v7[1] = &unk_282490E90;
  v8[0] = &unk_282490E78;
  v8[1] = &unk_282490EA8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = HUConstantIntegerForViewSizeSubclass(a3, v4);

  return v5;
}

+ (unint64_t)sliderQuickControlSizeForViewSizeSubclass:(int64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_282490E60;
  v7[1] = &unk_282490E90;
  v8[0] = &unk_282490E78;
  v8[1] = &unk_282490EC0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = HUConstantIntegerForViewSizeSubclass(a3, v4);

  return v5;
}

+ (unint64_t)iconSizeForQuickControlSize:(unint64_t)a3
{
  v3 = 2;
  if (a3 == 1)
  {
    v3 = 3;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

+ (BOOL)shouldAlwaysDisplayQuickControlAsSwitch:(id)a3
{
  v3 = qword_281121EB8;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&qword_281121EB8, &__block_literal_global_52);
  }

  v5 = [v4 valueSource];

  v6 = [v5 primaryServiceDescriptor];
  v7 = [v6 serviceType];

  LOBYTE(v6) = [_MergedGlobals_616 containsObject:v7];
  return v6;
}

void __67__HUQuickControlUtilities_shouldAlwaysDisplayQuickControlAsSwitch___block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD0F38];
  v3[0] = *MEMORY[0x277CD0F08];
  v3[1] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:2];
  v2 = _MergedGlobals_616;
  _MergedGlobals_616 = v1;
}

+ (BOOL)shouldDisplayQuickControlAsPushButton:(id)a3 preferredControl:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 valueSource];
  v7 = [v6 primaryServiceDescriptor];
  v8 = [v7 serviceType];

  if ([v8 isEqualToString:*MEMORY[0x277CD0F20]])
  {
    v9 = 1;
  }

  else
  {
    v10 = [objc_opt_class() shouldAlwaysDisplayQuickControlAsSwitch:v5] ^ 1;
    if (a4 == 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end