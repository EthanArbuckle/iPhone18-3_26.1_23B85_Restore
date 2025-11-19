@interface HUGridCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
- (HUGridCellLayoutOptions)initWithCellSizeSubclass:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setContentColorStyle:(unint64_t)a3;
@end

@implementation HUGridCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v23[5] = *MEMORY[0x277D85DE8];
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_245);
  }

  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    a3 = 4;
  }

  v5 = [[a1 alloc] initWithCellSizeSubclass:a3];
  v6 = +[HUGridCellBackgroundDisplayOptions defaultOptions];
  [v5 setBackgroundDisplayOptions:v6];

  [v5 setVibrancyEffect:qword_281121E58];
  [v5 setSecondaryVibrancyEffect:0];
  [v5 setSecondaryContentDimmingFactor:0.67];
  [v5 setContentColorStyle:0];
  [v5 setContentSizeCategory:*MEMORY[0x277D76860]];
  HUDefaultSizeForIconSize();
  [v5 setIconSize:v7];
  v22[0] = &unk_282492288;
  v22[1] = &unk_282492270;
  v23[0] = &unk_282493640;
  v23[1] = &unk_282493650;
  v22[2] = &unk_2824922A0;
  v22[3] = &unk_282492330;
  v23[2] = &unk_282493660;
  v23[3] = &unk_282493670;
  v22[4] = &unk_2824922B8;
  v23[4] = &unk_282493650;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  [v5 setCellInnerMargin:{HUConstantForCellSizeSubclass(a3, v8)}];

  v9 = [MEMORY[0x277D75C80] currentTraitCollection];
  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  [v5 setCellCornerRadius:?];

  [v5 setCellScaleFactor:1.0];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v10 = [v5 backgroundDisplayOptions];
    [v10 setDisplayStyle:2];

    v11 = [MEMORY[0x277D75D00] controlCenterPrimaryVibrancyEffect];
    [v5 setVibrancyEffect:v11];

    v12 = [MEMORY[0x277D75D00] controlCenterSecondaryVibrancyEffect];
    [v5 setSecondaryVibrancyEffect:v12];

    if ([MEMORY[0x277D14670] isHomeControlService])
    {
      v13 = MEMORY[0x277D75358];
      v14 = [MEMORY[0x277D75348] systemWhiteColor];
      v15 = [v13 colorEffectMonochromeTint:v14 blendingAmount:1.0 brightnessAdjustment:0.45];

      v16 = MEMORY[0x277D75D58];
      v21[0] = v15;
      v17 = [v5 vibrancyEffect];
      v21[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v19 = [v16 effectCombiningEffects:v18];
      [v5 setIconVibrancyEffect:v19];
    }

    else
    {
      if ([MEMORY[0x277D14670] isSpringBoard])
      {
        [v5 secondaryVibrancyEffect];
      }

      else
      {
        [v5 vibrancyEffect];
      }
      v15 = ;
      [v5 setIconVibrancyEffect:v15];
    }

    CCUICompactModuleContinuousCornerRadius();
    [v5 setCellCornerRadius:?];
    [v5 setSecondaryContentDimmingFactor:0.25];
  }

  return v5;
}

void __61__HUGridCellLayoutOptions_defaultOptionsForCellSizeSubclass___block_invoke()
{
  v2 = [MEMORY[0x277D75210] effectWithStyle:7];
  v0 = [MEMORY[0x277D75D00] effectForBlurEffect:v2 style:4];
  v1 = qword_281121E58;
  qword_281121E58 = v0;
}

- (HUGridCellLayoutOptions)initWithCellSizeSubclass:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HUGridCellLayoutOptions;
  result = [(HUGridCellLayoutOptions *)&v5 init];
  if (result)
  {
    result->_cellSizeSubclass = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithCellSizeSubclass:{-[HUGridCellLayoutOptions cellSizeSubclass](self, "cellSizeSubclass")}];
  v5 = [(HUGridCellLayoutOptions *)self backgroundDisplayOptions];
  [v4 setBackgroundDisplayOptions:v5];

  v6 = [(HUGridCellLayoutOptions *)self vibrancyEffect];
  [v4 setVibrancyEffect:v6];

  v7 = [(HUGridCellLayoutOptions *)self secondaryVibrancyEffect];
  [v4 setSecondaryVibrancyEffect:v7];

  v8 = [(HUGridCellLayoutOptions *)self iconVibrancyEffect];
  [v4 setIconVibrancyEffect:v8];

  [(HUGridCellLayoutOptions *)self secondaryContentDimmingFactor];
  [v4 setSecondaryContentDimmingFactor:?];
  [v4 setContentColorStyle:{-[HUGridCellLayoutOptions contentColorStyle](self, "contentColorStyle")}];
  v9 = [(HUGridCellLayoutOptions *)self contentSizeCategory];
  [v4 setContentSizeCategory:v9];

  v10 = [(HUGridCellLayoutOptions *)self font];
  [v4 setFont:v10];

  [(HUGridCellLayoutOptions *)self iconSize];
  [v4 setIconSize:?];
  [(HUGridCellLayoutOptions *)self cellInnerMargin];
  [v4 setCellInnerMargin:?];
  [(HUGridCellLayoutOptions *)self cellCornerRadius];
  [v4 setCellCornerRadius:?];
  [v4 setOnStateBorderStyle:{-[HUGridCellLayoutOptions onStateBorderStyle](self, "onStateBorderStyle")}];
  return v4;
}

- (void)setContentColorStyle:(unint64_t)a3
{
  self->_contentColorStyle = a3;
  v4 = [(HUGridCellLayoutOptions *)self backgroundDisplayOptions];
  [v4 setContentColorStyle:a3];
}

@end