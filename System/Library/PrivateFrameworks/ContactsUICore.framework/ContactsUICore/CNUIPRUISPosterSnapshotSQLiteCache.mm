@interface CNUIPRUISPosterSnapshotSQLiteCache
+ (PRUISPosterSnapshotSQLiteCache)contactsSnapshotCache;
+ (id)_defaultCacheLocationURL;
+ (void)contactsSnapshotCache;
@end

@implementation CNUIPRUISPosterSnapshotSQLiteCache

+ (id)_defaultCacheLocationURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLsForDirectory:13 inDomains:1];
  v4 = [v3 firstObject];
  v5 = [v4 URLByAppendingPathComponent:@"com.apple.ContactsUI.Posters" isDirectory:1];

  return v5;
}

+ (PRUISPosterSnapshotSQLiteCache)contactsSnapshotCache
{
  v2 = [a1 _defaultCacheLocationURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = CNUIPFFileProtectionNoneAttributes();
  v12 = 0;
  v5 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:v4 error:&v12];
  v6 = v12;

  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = getPRUISPosterSnapshotSQLiteCacheClass_softClass;
    v17 = getPRUISPosterSnapshotSQLiteCacheClass_softClass;
    if (!getPRUISPosterSnapshotSQLiteCacheClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getPRUISPosterSnapshotSQLiteCacheClass_block_invoke;
      v13[3] = &unk_1E76E79E0;
      v13[4] = &v14;
      __getPRUISPosterSnapshotSQLiteCacheClass_block_invoke(v13);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    v9 = [[v7 alloc] initWithURL:v2];
  }

  else
  {
    v10 = +[CNUICoreLogProvider posters_os_log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CNUIPRUISPosterSnapshotSQLiteCache contactsSnapshotCache];
    }

    v9 = 0;
  }

  return v9;
}

+ (void)contactsSnapshotCache
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A31E6000, v1, OS_LOG_TYPE_ERROR, "Unable to create cache directory at URL %@: %@", v2, 0x16u);
}

@end