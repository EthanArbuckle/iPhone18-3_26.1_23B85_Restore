@interface LNSpotlightCascadeHandler
+ (void)handleDeletionStream:(id)stream items:(id)items bundleId:(id)id completionHandler:(id)handler;
+ (void)handleFullSetStream:(id)stream items:(id)items bundleId:(id)id indexName:(id)name serialNumber:(unint64_t)number completionHandler:(id)handler;
+ (void)handleIncrementalStream:(id)stream items:(id)items bundleId:(id)id existingItemCount:(unint64_t)count completionHandler:(id)handler;
@end

@implementation LNSpotlightCascadeHandler

+ (void)handleFullSetStream:(id)stream items:(id)items bundleId:(id)id indexName:(id)name serialNumber:(unint64_t)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "No longer implemented", v10, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

+ (void)handleIncrementalStream:(id)stream items:(id)items bundleId:(id)id existingItemCount:(unint64_t)count completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "No longer implemented", v9, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

+ (void)handleDeletionStream:(id)stream items:(id)items bundleId:(id)id completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_ERROR, "No longer implemented", v8, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end