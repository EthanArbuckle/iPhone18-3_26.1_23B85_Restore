@interface HUQuickControlUtilities
+ (BOOL)shouldAlwaysDisplayQuickControlAsSwitch:(id)switch;
+ (BOOL)shouldDisplayQuickControlAsPushButton:(id)button preferredControl:(unint64_t)control;
+ (unint64_t)iconSizeForQuickControlSize:(unint64_t)size;
+ (unint64_t)quickControlStepperViewSizeForViewSizeSubclass:(int64_t)subclass;
+ (unint64_t)sliderQuickControlSizeForViewSizeSubclass:(int64_t)subclass;
@end

@implementation HUQuickControlUtilities

+ (unint64_t)quickControlStepperViewSizeForViewSizeSubclass:(int64_t)subclass
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_282490E60;
  v7[1] = &unk_282490E90;
  v8[0] = &unk_282490E78;
  v8[1] = &unk_282490EA8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = HUConstantIntegerForViewSizeSubclass(subclass, v4);

  return v5;
}

+ (unint64_t)sliderQuickControlSizeForViewSizeSubclass:(int64_t)subclass
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_282490E60;
  v7[1] = &unk_282490E90;
  v8[0] = &unk_282490E78;
  v8[1] = &unk_282490EC0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = HUConstantIntegerForViewSizeSubclass(subclass, v4);

  return v5;
}

+ (unint64_t)iconSizeForQuickControlSize:(unint64_t)size
{
  v3 = 2;
  if (size == 1)
  {
    v3 = 3;
  }

  if (size)
  {
    return v3;
  }

  else
  {
    return 4;
  }
}

+ (BOOL)shouldAlwaysDisplayQuickControlAsSwitch:(id)switch
{
  v3 = qword_281121EB8;
  switchCopy = switch;
  if (v3 != -1)
  {
    dispatch_once(&qword_281121EB8, &__block_literal_global_52);
  }

  valueSource = [switchCopy valueSource];

  primaryServiceDescriptor = [valueSource primaryServiceDescriptor];
  serviceType = [primaryServiceDescriptor serviceType];

  LOBYTE(primaryServiceDescriptor) = [_MergedGlobals_616 containsObject:serviceType];
  return primaryServiceDescriptor;
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

+ (BOOL)shouldDisplayQuickControlAsPushButton:(id)button preferredControl:(unint64_t)control
{
  buttonCopy = button;
  valueSource = [buttonCopy valueSource];
  primaryServiceDescriptor = [valueSource primaryServiceDescriptor];
  serviceType = [primaryServiceDescriptor serviceType];

  if ([serviceType isEqualToString:*MEMORY[0x277CD0F20]])
  {
    v9 = 1;
  }

  else
  {
    v10 = [objc_opt_class() shouldAlwaysDisplayQuickControlAsSwitch:buttonCopy] ^ 1;
    if (control == 1)
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