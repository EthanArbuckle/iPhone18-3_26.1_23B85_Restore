@interface UILabel(_HKElectrocardiogramInfoView)
+ (id)_hkecg_bodyLabel;
+ (id)_hkecg_heartRateLabel;
@end

@implementation UILabel(_HKElectrocardiogramInfoView)

+ (id)_hkecg_heartRateLabel
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setTextAlignment:4];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v0 setFont:v1];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v0 setTextColor:secondaryLabelColor];

  return v0;
}

+ (id)_hkecg_bodyLabel
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:4];
  v1 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v0 setFont:v1];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v0 setTextColor:labelColor];

  return v0;
}

@end