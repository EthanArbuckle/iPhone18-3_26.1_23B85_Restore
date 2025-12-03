@interface LNSpotlightCascadeBridge
+ (void)deleteItems:(id)items bundleIdentifier:(id)identifier version:(unint64_t)version validity:(id)validity completionHandler:(id)handler;
+ (void)donateItems:(id)items bundleIdentifier:(id)identifier version:(unint64_t)version validity:(id)validity shouldContinue:(id)continue completionHandler:(id)handler;
@end

@implementation LNSpotlightCascadeBridge

+ (void)donateItems:(id)items bundleIdentifier:(id)identifier version:(unint64_t)version validity:(id)validity shouldContinue:(id)continue completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Bridge is no longer implemented", v10, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

+ (void)deleteItems:(id)items bundleIdentifier:(id)identifier version:(unint64_t)version validity:(id)validity completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "Bridge is no longer implemented", v9, 2u);
  }

  handlerCopy[2](handlerCopy, 0);
}

@end