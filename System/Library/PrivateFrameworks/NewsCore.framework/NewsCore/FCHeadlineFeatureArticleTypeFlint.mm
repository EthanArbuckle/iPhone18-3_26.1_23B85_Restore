@interface FCHeadlineFeatureArticleTypeFlint
+ (id)articleTypeFlintFeature;
- (FCHeadlineFeatureArticleTypeFlint)init;
@end

@implementation FCHeadlineFeatureArticleTypeFlint

+ (id)articleTypeFlintFeature
{
  if (qword_1EDB23EA0 != -1)
  {
    dispatch_once(&qword_1EDB23EA0, &__block_literal_global_234);
  }

  v3 = qword_1EDB23E98;

  return v3;
}

uint64_t __60__FCHeadlineFeatureArticleTypeFlint_articleTypeFlintFeature__block_invoke()
{
  v0 = objc_alloc_init(FCHeadlineFeatureArticleTypeFlint);
  v1 = qword_1EDB23E98;
  qword_1EDB23E98 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCHeadlineFeatureArticleTypeFlint)init
{
  v6.receiver = self;
  v6.super_class = FCHeadlineFeatureArticleTypeFlint;
  v2 = [(FCPersonalizationFeature *)&v6 init];
  v3 = v2;
  if (v2)
  {
    personalizationIdentifier = v2->super._personalizationIdentifier;
    v2->super._personalizationIdentifier = @"f1";
  }

  return v3;
}

@end