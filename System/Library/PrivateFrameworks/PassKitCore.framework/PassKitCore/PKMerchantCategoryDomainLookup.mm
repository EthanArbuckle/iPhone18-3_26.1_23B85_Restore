@interface PKMerchantCategoryDomainLookup
+ (void)merchantCategoryForDomain:(id)domain completion:(id)completion;
@end

@implementation PKMerchantCategoryDomainLookup

+ (void)merchantCategoryForDomain:(id)domain completion:(id)completion
{
  domainCopy = domain;
  completionCopy = completion;
  v6 = objc_alloc_init(getMCCSecretAgentControllerClass[0]());
  v7 = v6;
  if (v6)
  {
    [v6 getPKCategoryForDomain:domainCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

@end