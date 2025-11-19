@interface FCHeadlineFeatureArticleTypeNonFlint
+ (id)articleTypeNonFlintFeature;
- (FCHeadlineFeatureArticleTypeNonFlint)init;
@end

@implementation FCHeadlineFeatureArticleTypeNonFlint

+ (id)articleTypeNonFlintFeature
{
  if (qword_1EDB23EB0 != -1)
  {
    dispatch_once(&qword_1EDB23EB0, &__block_literal_global_245_0);
  }

  v3 = qword_1EDB23EA8;

  return v3;
}

uint64_t __66__FCHeadlineFeatureArticleTypeNonFlint_articleTypeNonFlintFeature__block_invoke()
{
  v0 = objc_alloc_init(FCHeadlineFeatureArticleTypeNonFlint);
  v1 = qword_1EDB23EA8;
  qword_1EDB23EA8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCHeadlineFeatureArticleTypeNonFlint)init
{
  v6.receiver = self;
  v6.super_class = FCHeadlineFeatureArticleTypeNonFlint;
  v2 = [(FCPersonalizationFeature *)&v6 init];
  v3 = v2;
  if (v2)
  {
    personalizationIdentifier = v2->super._personalizationIdentifier;
    v2->super._personalizationIdentifier = @"f2";
  }

  return v3;
}

@end