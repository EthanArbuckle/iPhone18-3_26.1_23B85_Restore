@interface CRKProviderBundle
@end

@implementation CRKProviderBundle

void __85___CRKProviderBundle_requestIdentifiedCardSectionViewProviderForCard_delegate_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(_CRKBundleIdentifiedCardSectionViewProvider);
  [(_CRKBundleIdentifiedCardSectionViewProvider *)v8 setRealCardSectionViewProvider:v5];

  v7 = [*(a1 + 32) providerIdentifier];
  [(_CRKBundleIdentifiedCardSectionViewProvider *)v8 setProviderIdentifier:v7];

  (*(*(a1 + 40) + 16))();
}

@end