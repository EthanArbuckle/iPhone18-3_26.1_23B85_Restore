@interface HFTriggerNaturalLanguageDetailOptions
+ (id)detailOptionsWithOptions:(id)options;
- (void)_copyFromOptions:(id)options;
@end

@implementation HFTriggerNaturalLanguageDetailOptions

+ (id)detailOptionsWithOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_alloc(objc_opt_class());
  home = [optionsCopy home];
  v6 = [v4 initWithHome:home nameType:{objc_msgSend(optionsCopy, "nameType")}];

  [v6 _copyFromOptions:optionsCopy];

  return v6;
}

- (void)_copyFromOptions:(id)options
{
  v3.receiver = self;
  v3.super_class = HFTriggerNaturalLanguageDetailOptions;
  [(HFTriggerNaturalLanguageOptions *)&v3 _copyFromOptions:options];
}

@end