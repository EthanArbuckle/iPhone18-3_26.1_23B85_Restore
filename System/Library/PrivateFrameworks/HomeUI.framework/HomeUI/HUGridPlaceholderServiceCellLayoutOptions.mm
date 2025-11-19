@interface HUGridPlaceholderServiceCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3;
@end

@implementation HUGridPlaceholderServiceCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)a3
{
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___HUGridPlaceholderServiceCellLayoutOptions;
  v3 = objc_msgSendSuper2(&v8, sel_defaultOptionsForCellSizeSubclass_, a3);
  [v3 setShowDescription:0];
  v4 = MEMORY[0x277D75D00];
  v5 = [MEMORY[0x277D75210] effectWithStyle:16];
  v6 = [v4 effectForBlurEffect:v5 style:0];
  [v3 setVibrancyEffect:v6];

  return v3;
}

@end