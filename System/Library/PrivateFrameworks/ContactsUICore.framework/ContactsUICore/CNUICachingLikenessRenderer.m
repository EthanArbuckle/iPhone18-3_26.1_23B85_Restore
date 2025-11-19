@interface CNUICachingLikenessRenderer
@end

@implementation CNUICachingLikenessRenderer

id __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newSynchronousSerialSchedulerWithName:a2];

  return v2;
}

id __87___CNUICachingLikenessRenderer_createMainThreadSchedulerProviderWithSchedulerProvider___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) newReaderWriterSchedulerWithName:a2];

  return v2;
}

id __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageCache];
  v3 = [v2 cache];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (!v4)
  {
    v5 = +[CNUICoreLogProvider likenesses_os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke_cold_1(a1, v5);
    }

    v6 = [*(a1 + 32) initialRenderedLikenessesForContacts:*(a1 + 48) withBadges:*(a1 + 64) scope:*(a1 + 56) workScheduler:*(a1 + 72)];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke_12;
    v16 = &unk_1E76EA740;
    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v7 = [v6 doOnNext:&v13];

    v4 = [*(a1 + 32) startCacheEntryWithObservable:v7 contacts:*(a1 + 48) scope:{*(a1 + 56), v13, v14, v15, v16}];
    v8 = [*(a1 + 32) imageCache];
    v9 = [v8 cache];
    [v9 setObject:v4 forKeyedSubscript:*(a1 + 40)];
  }

  v10 = [*(a1 + 32) imageCache];
  [v10 touchCacheKey:*(a1 + 40)];

  v11 = [v4 imageObservable];

  return v11;
}

void __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CNUICoreLogProvider likenesses_os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke_12_cold_1(a1, v3, v4);
  }
}

void __77___CNUICachingLikenessRenderer_startCacheEntryWithObservable_contacts_scope___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

id __77___CNUICachingLikenessRenderer_renderedLikenessForBadge_scope_workScheduler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageCache];
  v3 = [v2 cache];
  v4 = [v3 objectForKey:*(a1 + 40)];

  if (!v4)
  {
    v5 = [*(a1 + 32) renderer];
    v6 = [v5 renderedLikenessForBadge:*(a1 + 48) scope:*(a1 + 56) workScheduler:*(a1 + 64)];

    v4 = [*(a1 + 32) startCacheEntryWithObservable:v6 contacts:MEMORY[0x1E695E0F0] scope:*(a1 + 56)];
    v7 = [*(a1 + 32) imageCache];
    v8 = [v7 cache];
    [v8 setObject:v4 forKeyedSubscript:*(a1 + 40)];
  }

  v9 = [*(a1 + 32) imageCache];
  [v9 touchCacheKey:*(a1 + 40)];

  v10 = [v4 imageObservable];

  return v10;
}

void __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "[LikenessCachingRenderer] Cache miss for %@, scope %@", &v4, 0x16u);
}

void __93___CNUICachingLikenessRenderer_renderedLikenessesForContacts_withBadges_scope_workScheduler___block_invoke_12_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) pointSize];
  v6 = NSStringFromSize(v15);
  v7 = *(a1 + 40);
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_debug_impl(&dword_1A31E6000, a3, OS_LOG_TYPE_DEBUG, "[LikenessCachingRenderer] New image (%@) for key '%@': %@", &v8, 0x20u);
}

@end