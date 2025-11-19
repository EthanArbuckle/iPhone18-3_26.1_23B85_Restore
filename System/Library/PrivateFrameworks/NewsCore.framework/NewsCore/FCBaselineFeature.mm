@interface FCBaselineFeature
+ (id)baselineFeature;
- (FCBaselineFeature)init;
@end

@implementation FCBaselineFeature

+ (id)baselineFeature
{
  if (qword_1EDB23E50 != -1)
  {
    dispatch_once(&qword_1EDB23E50, &__block_literal_global_152);
  }

  v3 = qword_1EDB23E48;

  return v3;
}

uint64_t __36__FCBaselineFeature_baselineFeature__block_invoke()
{
  v0 = objc_alloc_init(FCBaselineFeature);
  v1 = qword_1EDB23E48;
  qword_1EDB23E48 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCBaselineFeature)init
{
  v6.receiver = self;
  v6.super_class = FCBaselineFeature;
  v2 = [(FCPersonalizationFeature *)&v6 init];
  v3 = v2;
  if (v2)
  {
    personalizationIdentifier = v2->super._personalizationIdentifier;
    v2->super._personalizationIdentifier = @"f0";
  }

  return v3;
}

@end