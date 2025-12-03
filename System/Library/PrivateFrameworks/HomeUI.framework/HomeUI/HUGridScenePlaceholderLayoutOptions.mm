@interface HUGridScenePlaceholderLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass;
@end

@implementation HUGridScenePlaceholderLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass
{
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___HUGridScenePlaceholderLayoutOptions;
  v3 = objc_msgSendSuper2(&v8, sel_defaultOptionsForCellSizeSubclass_, subclass);
  v4 = MEMORY[0x277D75D00];
  v5 = [MEMORY[0x277D75210] effectWithStyle:16];
  v6 = [v4 effectForBlurEffect:v5 style:0];
  [v3 setVibrancyEffect:v6];

  return v3;
}

@end