@interface CNUILikenessRenderer
+ (id)cachingRendererWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity schedulerProvider:(id)provider;
+ (id)cachingRendererWithLikenessResolver:(id)resolver schedulerProvider:(id)provider;
+ (id)concurrentCachingRendererWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity schedulerProvider:(id)provider;
+ (id)rendererWithLikenessResolver:(id)resolver schedulerProvider:(id)provider;
@end

@implementation CNUILikenessRenderer

id __92___CNUILikenessRenderer_likenessProvidersForContacts_likenessResolverOptions_workScheduler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 likenessResolver];
  v6 = [v5 likenessesForContact:v4 options:a1[5] workScheduler:a1[6]];

  v7 = [v6 observeOn:a1[6]];

  return v7;
}

id __66___CNUILikenessRenderer_likenessProvidersForBadges_workScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 likenessResolver];
  v6 = [v5 badgeObservableWithLikenessBadge:v4 workScheduler:*(a1 + 40)];

  return v6;
}

CNUIPRLikenessBadgeImageProvider *__52___CNUILikenessRenderer_likenessProvidersForBadges___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CNUIPRLikenessBadgeImageProvider alloc] initWithBadge:v2];

  return v3;
}

id __97___CNUILikenessRenderer_renderedLikenessesForLikenessProviders_badges_scope_likenessFingerprint___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count] >= 2)
  {
    v4 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __97___CNUILikenessRenderer_renderedLikenessesForLikenessProviders_badges_scope_likenessFingerprint___block_invoke_cold_1(a1, v4);
    }
  }

  v5 = *(a1 + 64);
  v6 = [*(a1 + 40) likenessProvidersForBadges:*(a1 + 48)];
  v7 = [v5 renderedLikenessesForProviders:v3 likenessBadgeProviders:v6 scope:*(a1 + 56)];

  if (v7)
  {
    v8 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      [v7 size];
      v10 = v9;
      [v7 size];
      v11 = *(a1 + 32);
      v14 = 134218498;
      v15 = v10;
      v16 = 2048;
      v17 = v12;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1A31E6000, v8, OS_LOG_TYPE_INFO, "[LikenessRenderer] Successful {%.2f, %.2f} result for rendered likeness for %{public}@", &v14, 0x20u);
    }
  }

  return v7;
}

uint64_t __64___CNUILikenessRenderer_renderedLikenessForBadgeProvider_scope___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 firstObject];
  v5 = [v3 cgImageForLikenessProvider:v4 scope:*(a1 + 32) alwaysUsePointSize:1];

  CGImageGetWidth(v5);
  CGImageGetHeight(v5);
  [*(a1 + 32) scale];
  v7 = v6;
  v8 = NSClassFromString(&cfstr_Uiimage.isa);

  return [(objc_class *)v8 imageWithCGImage:v5 scale:0 orientation:v7];
}

id __65___CNUILikenessRenderer_loadingPlaceholderForContactCount_scope___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) >= 2uLL && +[CNUISnowglobeUtilities enableGroupPhoto])
  {
    v2 = [*(a1 + 32) likenessResolver];
    v3 = [v2 placeholderProviderFactory];
    v4 = [v3 loadingGroupPlaceholderProviderWithBackgroundStyle:{objc_msgSend(*(a1 + 40), "backgroundStyle")}];
  }

  else
  {
    v2 = [*(a1 + 32) likenessResolver];
    v3 = [v2 placeholderProviderFactory];
    v4 = [v3 loadingPlaceholderProvider];
  }

  v5 = v4;

  v6 = [*(a1 + 32) renderedLoadingPlaceholderForContactCount:*(a1 + 48) provider:v5 scope:*(a1 + 40)];

  return v6;
}

id __63___CNUILikenessRenderer_renderedBasicMonogramFromString_scope___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v9 = a2;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a2;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [v3 renderedLikenessesForProviders:v6 likenessBadgeProviders:MEMORY[0x1E695E0F0] scope:{*(a1 + 32), v9, v10}];

  return v7;
}

+ (id)rendererWithLikenessResolver:(id)resolver schedulerProvider:(id)provider
{
  providerCopy = provider;
  resolverCopy = resolver;
  v7 = [[_CNUILikenessRenderer alloc] initWithLikenessResolver:resolverCopy schedulerProvider:providerCopy];

  return v7;
}

+ (id)cachingRendererWithLikenessResolver:(id)resolver schedulerProvider:(id)provider
{
  providerCopy = provider;
  resolverCopy = resolver;
  v7 = [[_CNUILikenessRenderer alloc] initWithLikenessResolver:resolverCopy schedulerProvider:providerCopy];

  v8 = [[_CNUICachingLikenessRenderer alloc] initWithLikenessRenderer:v7 schedulerProvider:providerCopy];

  return v8;
}

+ (id)cachingRendererWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity schedulerProvider:(id)provider
{
  providerCopy = provider;
  resolverCopy = resolver;
  v9 = [[_CNUILikenessRenderer alloc] initWithLikenessResolver:resolverCopy schedulerProvider:providerCopy];
  v10 = [_CNUICachingLikenessRenderer alloc];
  contactStore = [resolverCopy contactStore];

  v12 = [(_CNUICachingLikenessRenderer *)v10 initWithLikenessRenderer:v9 schedulerProvider:providerCopy capacity:capacity shouldRequireMainThread:1 contactStore:contactStore];

  return v12;
}

+ (id)concurrentCachingRendererWithLikenessResolver:(id)resolver capacity:(unint64_t)capacity schedulerProvider:(id)provider
{
  providerCopy = provider;
  resolverCopy = resolver;
  v9 = [[_CNUILikenessRenderer alloc] initWithLikenessResolver:resolverCopy schedulerProvider:providerCopy];
  v10 = [_CNUICachingLikenessRenderer alloc];
  contactStore = [resolverCopy contactStore];

  v12 = [(_CNUICachingLikenessRenderer *)v10 initWithLikenessRenderer:v9 schedulerProvider:providerCopy capacity:capacity shouldRequireMainThread:0 contactStore:contactStore];

  return v12;
}

void __97___CNUILikenessRenderer_renderedLikenessesForLikenessProviders_badges_scope_likenessFingerprint___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "[LikenessRenderer] Requesting group rendered likeness for %{public}@", &v3, 0xCu);
}

@end