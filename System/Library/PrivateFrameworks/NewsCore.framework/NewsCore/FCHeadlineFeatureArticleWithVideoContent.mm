@interface FCHeadlineFeatureArticleWithVideoContent
+ (id)articleWithVideoContentFeature;
- (FCHeadlineFeatureArticleWithVideoContent)init;
@end

@implementation FCHeadlineFeatureArticleWithVideoContent

+ (id)articleWithVideoContentFeature
{
  if (qword_1EDB23E60 != -1)
  {
    dispatch_once(&qword_1EDB23E60, &__block_literal_global_162);
  }

  v3 = qword_1EDB23E58;

  return v3;
}

uint64_t __74__FCHeadlineFeatureArticleWithVideoContent_articleWithVideoContentFeature__block_invoke()
{
  v0 = objc_alloc_init(FCHeadlineFeatureArticleWithVideoContent);
  v1 = qword_1EDB23E58;
  qword_1EDB23E58 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (FCHeadlineFeatureArticleWithVideoContent)init
{
  v6.receiver = self;
  v6.super_class = FCHeadlineFeatureArticleWithVideoContent;
  v2 = [(FCPersonalizationFeature *)&v6 init];
  v3 = v2;
  if (v2)
  {
    personalizationIdentifier = v2->super._personalizationIdentifier;
    v2->super._personalizationIdentifier = @"f7";
  }

  return v3;
}

@end