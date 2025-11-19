@interface HKReferenceRangeViewConfiguration
+ (id)annotationEmbeddedConfiguration;
+ (id)defaultConfiguration;
@end

@implementation HKReferenceRangeViewConfiguration

+ (id)defaultConfiguration
{
  v2 = objc_alloc_init(HKReferenceRangeViewConfiguration);
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueToReferenceValuePadding:3.0];
  [(HKReferenceRangeViewConfiguration *)v2 setHorizontalPadding:16.0];
  v3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeViewColor:v3];

  v4 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeViewBorderColor:v4];

  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeViewHeight:16.0];
  v5 = [MEMORY[0x1E69DC888] labelColor];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueTextColor:v5];

  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueUnitTextColor:v6];

  v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceValueTextColor:v7];

  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueTextSize:27.0];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueUnitTextStyle:*MEMORY[0x1E69DDD80]];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueNumLinesIfNoRange:3];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeTextStyle:*MEMORY[0x1E69DDD28]];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceValueYOffset:5.0];
  [(HKReferenceRangeViewConfiguration *)v2 setLabelClass:objc_opt_class()];

  return v2;
}

+ (id)annotationEmbeddedConfiguration
{
  v2 = objc_alloc_init(HKReferenceRangeViewConfiguration);
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueToReferenceValuePadding:2.0];
  [(HKReferenceRangeViewConfiguration *)v2 setHorizontalPadding:0.0];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeViewColor:v3];

  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeViewBorderColor:0];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceRangeViewHeight:12.0];
  v4 = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueValueFontWithoutRange:v4];

  v5 = [MEMORY[0x1E69DB878] hk_chartLollipopValueFontSmaller];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueValueFontWithRange:v5];

  v6 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueUnitFont:v6];

  v7 = [MEMORY[0x1E69DB878] hk_preferredFontIgnoringAccessibilitySizeForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(HKReferenceRangeViewConfiguration *)v2 setDynamicTypeAnchorFont:v7];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueTextColor:v8];

  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueUnitTextColor:v9];

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceValueTextColor:v10];

  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueTextSize:22.0];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueUnitTextStyle:*MEMORY[0x1E69DDD80]];
  [(HKReferenceRangeViewConfiguration *)v2 setCurrentValueNumLinesIfNoRange:1];
  [(HKReferenceRangeViewConfiguration *)v2 setHideReferenceRangeValues:1];
  [(HKReferenceRangeViewConfiguration *)v2 setReferenceValueYOffset:2.0];
  [(HKReferenceRangeViewConfiguration *)v2 setLabelClass:objc_opt_class()];

  return v2;
}

@end