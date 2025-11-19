@interface HFTriggerNaturalLanguageDetailOptions
+ (id)detailOptionsWithOptions:(id)a3;
- (void)_copyFromOptions:(id)a3;
@end

@implementation HFTriggerNaturalLanguageDetailOptions

+ (id)detailOptionsWithOptions:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  v5 = [v3 home];
  v6 = [v4 initWithHome:v5 nameType:{objc_msgSend(v3, "nameType")}];

  [v6 _copyFromOptions:v3];

  return v6;
}

- (void)_copyFromOptions:(id)a3
{
  v3.receiver = self;
  v3.super_class = HFTriggerNaturalLanguageDetailOptions;
  [(HFTriggerNaturalLanguageOptions *)&v3 _copyFromOptions:a3];
}

@end