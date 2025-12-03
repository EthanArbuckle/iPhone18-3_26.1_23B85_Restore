@interface ImportExtension
- (BOOL)updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error;
@end

@implementation ImportExtension

- (BOOL)updateAttributes:(id)attributes forFileAtURL:(id)l error:(id *)error
{
  attributesCopy = attributes;
  lCopy = l;
  v10 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100000C20(lCopy, v10);
  }

  v11 = logForCSLogCategoryIndex();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100000C98(attributesCopy, v11);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_spotlightImporter)
  {
    v13 = objc_alloc_init(OISpotlightImporter);
    spotlightImporter = selfCopy->_spotlightImporter;
    selfCopy->_spotlightImporter = v13;
  }

  objc_sync_exit(selfCopy);

  v15 = [(OISpotlightImporter *)selfCopy->_spotlightImporter searchableAttributesForOfficeFileAtURL:lCopy error:error];
  if (v15)
  {
    [attributesCopy addAttributesFromAttributeSet:v15];
    absoluteString = logForCSLogCategoryIndex();
    if (os_log_type_enabled(absoluteString, OS_LOG_TYPE_DEBUG))
    {
      sub_100000E4C(absoluteString);
    }
  }

  else
  {
    absoluteString = [lCopy absoluteString];
    v17 = logForCSLogCategoryIndex();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100000D34(error, v17);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000DBC(absoluteString, error);
    }
  }

  return v15 != 0;
}

@end