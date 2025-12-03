@interface UILabel(MobileSafariFrameworkExtras)
+ (id)sf_startPageBannerTitleLabelWithFont:()MobileSafariFrameworkExtras;
@end

@implementation UILabel(MobileSafariFrameworkExtras)

+ (id)sf_startPageBannerTitleLabelWithFont:()MobileSafariFrameworkExtras
{
  v4 = a3;
  v5 = objc_alloc_init(self);
  [v5 setFont:v4];

  [v5 setNumberOfLines:0];
  [v5 setTextAlignment:1];
  [v5 setAdjustsFontForContentSizeCategory:1];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v5 setTextColor:labelColor];

  return v5;
}

@end