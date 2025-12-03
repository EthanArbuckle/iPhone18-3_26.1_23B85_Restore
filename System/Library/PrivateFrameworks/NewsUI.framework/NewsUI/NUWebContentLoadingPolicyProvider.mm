@interface NUWebContentLoadingPolicyProvider
- (NUWebContentLoadingPolicyProvider)initWithHeadline:(id)headline;
- (unint64_t)loadingPolicy;
@end

@implementation NUWebContentLoadingPolicyProvider

- (NUWebContentLoadingPolicyProvider)initWithHeadline:(id)headline
{
  headlineCopy = headline;
  v9.receiver = self;
  v9.super_class = NUWebContentLoadingPolicyProvider;
  v6 = [(NUWebContentLoadingPolicyProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headline, headline);
  }

  return v7;
}

- (unint64_t)loadingPolicy
{
  headline = [(NUWebContentLoadingPolicyProvider *)self headline];
  if ([headline webEmbedsEnabled])
  {
  }

  else
  {
    headline2 = [(NUWebContentLoadingPolicyProvider *)self headline];
    isDraft = [headline2 isDraft];

    if (!isDraft)
    {
      return 2;
    }
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"newsarticles.anf.embed_source_url"])
  {

    return 1;
  }

  headline3 = [(NUWebContentLoadingPolicyProvider *)self headline];
  isDraft2 = [headline3 isDraft];

  return isDraft2 != 0;
}

@end