@interface LNSpotlightCascadeBridge
+ (void)deleteItems:(id)a3 bundleIdentifier:(id)a4 version:(unint64_t)a5 validity:(id)a6 completionHandler:(id)a7;
+ (void)donateItems:(id)a3 bundleIdentifier:(id)a4 version:(unint64_t)a5 validity:(id)a6 shouldContinue:(id)a7 completionHandler:(id)a8;
@end

@implementation LNSpotlightCascadeBridge

+ (void)donateItems:(id)a3 bundleIdentifier:(id)a4 version:(unint64_t)a5 validity:(id)a6 shouldContinue:(id)a7 completionHandler:(id)a8
{
  v8 = a8;
  v9 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Bridge is no longer implemented", v10, 2u);
  }

  v8[2](v8, 0);
}

+ (void)deleteItems:(id)a3 bundleIdentifier:(id)a4 version:(unint64_t)a5 validity:(id)a6 completionHandler:(id)a7
{
  v7 = a7;
  v8 = getLNLogCategoryVocabulary();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_impl(&dword_19763D000, v8, OS_LOG_TYPE_ERROR, "Bridge is no longer implemented", v9, 2u);
  }

  v7[2](v7, 0);
}

@end