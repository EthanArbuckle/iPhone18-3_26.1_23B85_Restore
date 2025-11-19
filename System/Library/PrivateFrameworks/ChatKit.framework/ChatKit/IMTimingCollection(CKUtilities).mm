@interface IMTimingCollection(CKUtilities)
+ (id)activeGlobalTimingCollections;
+ (id)globalTimingCollectionForKey:()CKUtilities;
+ (void)invalidateGlobalTimingCollectionForKey:()CKUtilities;
+ (void)invalidateGlobalTimingCollections;
+ (void)logTimingCollectionForKey:()CKUtilities;
@end

@implementation IMTimingCollection(CKUtilities)

+ (id)globalTimingCollectionForKey:()CKUtilities
{
  v3 = a3;
  v4 = sGlobalTimingCollections;
  if (!sGlobalTimingCollections)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = sGlobalTimingCollections;
    sGlobalTimingCollections = v5;

    v4 = sGlobalTimingCollections;
  }

  v7 = [v4 objectForKey:v3];
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
    [sGlobalTimingCollections setObject:v7 forKey:v3];
  }

  return v7;
}

+ (id)activeGlobalTimingCollections
{
  if (sGlobalTimingCollections)
  {
    [sGlobalTimingCollections allValues];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v0 = ;

  return v0;
}

+ (void)logTimingCollectionForKey:()CKUtilities
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (sGlobalTimingCollections && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [sGlobalTimingCollections valueForKey:v3];
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "%@ - %@", &v6, 0x16u);
    }
  }
}

+ (void)invalidateGlobalTimingCollectionForKey:()CKUtilities
{
  v3 = a3;
  if (sGlobalTimingCollections)
  {
    v5 = v3;
    v4 = [sGlobalTimingCollections objectForKey:v3];

    v3 = v5;
    if (v4)
    {
      [sGlobalTimingCollections removeObjectForKey:v5];
      v3 = v5;
    }
  }
}

+ (void)invalidateGlobalTimingCollections
{
  v0 = sGlobalTimingCollections;
  if (sGlobalTimingCollections)
  {
    sGlobalTimingCollections = 0;
  }
}

@end