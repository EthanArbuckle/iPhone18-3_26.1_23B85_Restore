@interface NSItemProvider
@end

@implementation NSItemProvider

void __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v6 setObject:v8 forKeyedSubscript:v7];

  objc_sync_exit(v5);
}

void __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  dispatch_group_enter(v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_3;
  v8[3] = &unk_1E721EDC0;
  v7 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = a3;
  v9 = *(a1 + 32);
  v7(v6, v8);
}

void __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_4(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [MEMORY[0x1E695DEC8] safari_arrayFromDictionaryOfObjectsByIndex:*(a1 + 40)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __113__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectsFromItemProviders_usingLoader_completionHandler___block_invoke_5;
  v5[3] = &unk_1E721C1A8;
  v3 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXItemProvider();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke_cold_1(v8, v6);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke_cold_2(v8);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __101__NSItemProvider_MobileSafariFrameworkExtras__safari_registerFileRepresentationForQuickLookDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __101__NSItemProvider_MobileSafariFrameworkExtras__safari_registerFileRepresentationForQuickLookDocument___block_invoke_2;
  v7[3] = &unk_1E721EE38;
  v8 = v3;
  v5 = v3;
  [v4 saveToFileIfNeeded:v7];

  return 0;
}

void __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_ERROR, "Could not load item: %{public}@", &v5, 0xCu);
}

void __92__NSItemProvider_MobileSafariFrameworkExtras__safari_loadObjectOfClasses_completionHandler___block_invoke_cold_2(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = 138543362;
  v3 = objc_opt_class();
  _os_log_debug_impl(&dword_18B7AC000, v1, OS_LOG_TYPE_DEBUG, "Loaded item of class: %{public}@", &v2, 0xCu);
}

@end