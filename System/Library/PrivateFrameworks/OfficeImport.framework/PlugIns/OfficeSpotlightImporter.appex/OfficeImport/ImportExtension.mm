@interface ImportExtension
- (BOOL)updateAttributes:(id)a3 forFileAtURL:(id)a4 error:(id *)a5;
@end

@implementation ImportExtension

- (BOOL)updateAttributes:(id)a3 forFileAtURL:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100000C20(v9, v10);
  }

  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100000C98(v8, v11);
  }

  v12 = self;
  objc_sync_enter(v12);
  if (!v12->_spotlightImporter)
  {
    v13 = objc_alloc_init(OISpotlightImporter);
    spotlightImporter = v12->_spotlightImporter;
    v12->_spotlightImporter = v13;
  }

  objc_sync_exit(v12);

  v15 = [(OISpotlightImporter *)v12->_spotlightImporter searchableAttributesForOfficeFileAtURL:v9 error:a5];
  if (v15)
  {
    [v8 addAttributesFromAttributeSet:v15];
    v16 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100000E4C(v16);
    }
  }

  else
  {
    v16 = [v9 absoluteString];
    v17 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100000D34(a5, v17);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000DBC(v16, a5);
    }
  }

  return v15 != 0;
}

@end