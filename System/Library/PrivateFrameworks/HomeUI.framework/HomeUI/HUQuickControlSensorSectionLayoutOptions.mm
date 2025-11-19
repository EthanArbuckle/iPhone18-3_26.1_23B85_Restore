@interface HUQuickControlSensorSectionLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)a3;
@end

@implementation HUQuickControlSensorSectionLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)a3
{
  v12[3] = *MEMORY[0x277D85DE8];
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HUQuickControlSensorSectionLayoutOptions;
  v3 = objc_msgSendSuper2(&v8, sel_defaultOptionsForViewSize_, a3.width, a3.height);
  v4 = [v3 viewSizeSubclass];
  v11[0] = &unk_282491808;
  v11[1] = &unk_282491820;
  v12[0] = &unk_2824934D0;
  v12[1] = &unk_2824934E0;
  v11[2] = &unk_282491838;
  v12[2] = &unk_2824934F0;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v3 setMinimumNavBarToControlsSpacing:{HUConstantFloatForViewSizeSubclass(v4, v5)}];

  [v3 setRowSpacing:48.0];
  v9[0] = &unk_282491808;
  v9[1] = &unk_282491820;
  v10[0] = &unk_282491850;
  v10[1] = &unk_282491868;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [v3 setThermostatSectionSpacingOverride:{HUConstantFloatForViewSizeSubclass(v4, v6)}];

  [v3 setInteritemSpacingForExtraSmallControlSize:30.0];
  [v3 setInteritemSpacingForSmallControlSize:30.0];
  [v3 setInteritemSpacingForRegularControlSize:30.0];
  [v3 setInteritemSpacingForLargeControlSize:30.0];

  return v3;
}

@end