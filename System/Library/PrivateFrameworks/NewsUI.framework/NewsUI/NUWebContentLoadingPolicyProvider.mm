@interface NUWebContentLoadingPolicyProvider
- (NUWebContentLoadingPolicyProvider)initWithHeadline:(id)a3;
- (unint64_t)loadingPolicy;
@end

@implementation NUWebContentLoadingPolicyProvider

- (NUWebContentLoadingPolicyProvider)initWithHeadline:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUWebContentLoadingPolicyProvider;
  v6 = [(NUWebContentLoadingPolicyProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_headline, a3);
  }

  return v7;
}

- (unint64_t)loadingPolicy
{
  v3 = [(NUWebContentLoadingPolicyProvider *)self headline];
  if ([v3 webEmbedsEnabled])
  {
  }

  else
  {
    v4 = [(NUWebContentLoadingPolicyProvider *)self headline];
    v5 = [v4 isDraft];

    if (!v5)
    {
      return 2;
    }
  }

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if ([v6 BOOLForKey:@"newsarticles.anf.embed_source_url"])
  {

    return 1;
  }

  v7 = [(NUWebContentLoadingPolicyProvider *)self headline];
  v8 = [v7 isDraft];

  return v8 != 0;
}

@end