@interface PKMerchantCategoryDomainLookup
+ (void)merchantCategoryForDomain:(id)a3 completion:(id)a4;
@end

@implementation PKMerchantCategoryDomainLookup

+ (void)merchantCategoryForDomain:(id)a3 completion:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = objc_alloc_init(getMCCSecretAgentControllerClass[0]());
  v7 = v6;
  if (v6)
  {
    [v6 getPKCategoryForDomain:v8 completion:v5];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

@end