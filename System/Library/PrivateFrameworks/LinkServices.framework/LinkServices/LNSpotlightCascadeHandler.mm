@interface LNSpotlightCascadeHandler
+ (void)handleDeletionStream:(id)a3 items:(id)a4 bundleId:(id)a5 completionHandler:(id)a6;
+ (void)handleFullSetStream:(id)a3 items:(id)a4 bundleId:(id)a5 indexName:(id)a6 serialNumber:(unint64_t)a7 completionHandler:(id)a8;
+ (void)handleIncrementalStream:(id)a3 items:(id)a4 bundleId:(id)a5 existingItemCount:(unint64_t)a6 completionHandler:(id)a7;
@end

@implementation LNSpotlightCascadeHandler

+ (void)handleFullSetStream:(id)a3 items:(id)a4 bundleId:(id)a5 indexName:(id)a6 serialNumber:(unint64_t)a7 completionHandler:(id)a8
{
  v8 = a8;
  v9 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "No longer implemented", v10, 2u);
  }

  v8[2](v8, 0);
}

+ (void)handleIncrementalStream:(id)a3 items:(id)a4 bundleId:(id)a5 existingItemCount:(unint64_t)a6 completionHandler:(id)a7
{
  v7 = a7;
  v8 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "No longer implemented", v9, 2u);
  }

  v7[2](v7, 0);
}

+ (void)handleDeletionStream:(id)a3 items:(id)a4 bundleId:(id)a5 completionHandler:(id)a6
{
  v6 = a6;
  v7 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_ERROR, "No longer implemented", v8, 2u);
  }

  v6[2](v6, 0);
}

@end