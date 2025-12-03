@interface ICPaths
+ (BOOL)isReadOnlyPersistentStore;
+ (NSDictionary)attributesForGroupContainerDirectory;
+ (NSURL)applicationDataContainerURL;
+ (NSURL)applicationDocumentsURL;
+ (NSURL)defaultPreviewImageDirectoryURL;
+ (NSURL)importDocumentsURL;
+ (NSURL)managedObjectModelURL;
+ (NSURL)oldManagedObjectModelURL;
+ (NSURL)persistentStoreURL;
+ (id)URLForGroupContainerWithIdentifier:(id)identifier;
+ (void)applicationDataContainerURL;
+ (void)resetApplicationDocumentsURL;
+ (void)setApplicationDocumentsURL:(id)l;
+ (void)setIsReadOnlyPersistentStore:(BOOL)store;
@end

@implementation ICPaths

+ (NSURL)persistentStoreURL
{
  if (persistentStoreURL_onceToken != -1)
  {
    +[ICPaths persistentStoreURL];
  }

  v3 = _persistentStoreURL;
  if (!_persistentStoreURL)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__ICPaths_persistentStoreURL__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_sync(persistentStoreURL_creationQueue, block);
    v3 = _persistentStoreURL;
  }

  return v3;
}

void __29__ICPaths_persistentStoreURL__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("ICPathsCreatePersistentStoreURL", v2);
  v1 = persistentStoreURL_creationQueue;
  persistentStoreURL_creationQueue = v0;
}

uint64_t __29__ICPaths_persistentStoreURL__block_invoke_2(uint64_t result)
{
  if (!_persistentStoreURL)
  {
    v1 = [*(result + 32) applicationDocumentsURL];
    v2 = [v1 URLByAppendingPathComponent:@"NoteStore" isDirectory:0];
    v3 = _persistentStoreURL;
    _persistentStoreURL = v2;

    _persistentStoreURL = [_persistentStoreURL URLByAppendingPathExtension:@"sqlite"];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (NSURL)applicationDocumentsURL
{
  if (applicationDocumentsURL_onceToken != -1)
  {
    +[ICPaths applicationDocumentsURL];
  }

  v3 = _applicationDocumentsURL;
  if (!_applicationDocumentsURL)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__ICPaths_applicationDocumentsURL__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_sync(applicationDocumentsURL_creationQueue, block);
    v3 = _applicationDocumentsURL;
  }

  return v3;
}

void __34__ICPaths_applicationDocumentsURL__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("ICPathsCreateApplicationDocumentsURL", v2);
  v1 = applicationDocumentsURL_creationQueue;
  applicationDocumentsURL_creationQueue = v0;
}

void __34__ICPaths_applicationDocumentsURL__block_invoke_2(uint64_t a1)
{
  if (!_applicationDocumentsURL)
  {
    v1 = *(a1 + 32);
    v4 = ICGroupContainerIdentifier();
    v2 = [v1 URLForGroupContainerWithIdentifier:v4];
    v3 = _applicationDocumentsURL;
    _applicationDocumentsURL = v2;
  }
}

+ (NSURL)managedObjectModelURL
{
  if (managedObjectModelURL_onceToken != -1)
  {
    +[ICPaths managedObjectModelURL];
  }

  v3 = managedObjectModelURL_modelURL;

  return v3;
}

void __32__ICPaths_managedObjectModelURL__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = ICSharedFrameworkBundleIdentifier();
  v2 = [v0 bundleWithIdentifier:v1];

  if (!v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v4 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __32__ICPaths_managedObjectModelURL__block_invoke_cold_1();
      }

      v2 = 0;
    }
  }

  v5 = [v2 URLForResource:@"NoteData" withExtension:@"mom"];
  v6 = managedObjectModelURL_modelURL;
  managedObjectModelURL_modelURL = v5;

  if (!managedObjectModelURL_modelURL)
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __32__ICPaths_managedObjectModelURL__block_invoke_cold_2();
    }
  }
}

+ (void)setApplicationDocumentsURL:(id)l
{
  objc_storeStrong(&_applicationDocumentsURL, l);
  lCopy = l;
  v4 = _persistentStoreURL;
  _persistentStoreURL = 0;
}

+ (void)resetApplicationDocumentsURL
{
  v2 = _applicationDocumentsURL;
  _applicationDocumentsURL = 0;

  v3 = _persistentStoreURL;
  _persistentStoreURL = 0;
}

+ (NSURL)importDocumentsURL
{
  if (importDocumentsURL_onceToken != -1)
  {
    +[ICPaths importDocumentsURL];
  }

  v3 = importDocumentsURL_importDocumentsURL;
  if (!importDocumentsURL_importDocumentsURL)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __29__ICPaths_importDocumentsURL__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    dispatch_sync(importDocumentsURL_creationQueue, block);
    v3 = importDocumentsURL_importDocumentsURL;
  }

  return v3;
}

void __29__ICPaths_importDocumentsURL__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("ICPathsCreateImportDocumentsURL", v2);
  v1 = importDocumentsURL_creationQueue;
  importDocumentsURL_creationQueue = v0;
}

void __29__ICPaths_importDocumentsURL__block_invoke_2(uint64_t a1)
{
  if (!importDocumentsURL_importDocumentsURL)
  {
    v1 = *(a1 + 32);
    v4 = ICImportGroupContainerIdentifier();
    v2 = [v1 URLForGroupContainerWithIdentifier:v4];
    v3 = importDocumentsURL_importDocumentsURL;
    importDocumentsURL_importDocumentsURL = v2;
  }
}

+ (NSURL)defaultPreviewImageDirectoryURL
{
  applicationDocumentsURL = [self applicationDocumentsURL];
  v3 = [applicationDocumentsURL URLByAppendingPathComponent:@"Previews" isDirectory:1];

  return v3;
}

+ (id)URLForGroupContainerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  Helper_x8__OBJC_CLASS___UMUserManager = gotLoadHelper_x8__OBJC_CLASS___UMUserManager(v5);
  sharedManager = [*(v7 + 104) sharedManager];
  currentPersona = [sharedManager currentPersona];
  v10 = [currentPersona isProxy];
  v38 = 0;
  v11 = [currentPersona copyCurrentPersonaContextWithError:&v38];
  v12 = v38;
  v13 = v12;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  if (v14 == 1)
  {
    v15 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      +[ICPaths URLForGroupContainerWithIdentifier:];
    }

    Helper_x8__OBJC_CLASS___UMUserPersonaAttributes = gotLoadHelper_x8__OBJC_CLASS___UMUserPersonaAttributes(v16);
    v19 = [*(v18 + 136) personaAttributesForPersonaType:{0, Helper_x8__OBJC_CLASS___UMUserPersonaAttributes}];
    userPersonaUniqueString = [v19 userPersonaUniqueString];
    v21 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:userPersonaUniqueString];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    v19 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[ICPaths URLForGroupContainerWithIdentifier:];
    }
  }

LABEL_12:
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:identifierCopy];

  if (v23)
  {
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "groupContainerURL", "+[ICPaths URLForGroupContainerWithIdentifier:]", 1, 1, @"Failed to get group container URL for %@", identifierCopy);
    if (!v14)
    {
LABEL_14:
      if (!v23)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }
  }

  v24 = [currentPersona restorePersonaWithSavedPersonaContext:v11];
  if (!v23)
  {
    goto LABEL_28;
  }

LABEL_18:
  v37 = 0;
  v25 = [v23 checkResourceIsReachableAndReturnError:&v37];
  v26 = v37;
  if ((v25 & 1) == 0)
  {
    v27 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      +[ICPaths URLForGroupContainerWithIdentifier:];
    }

    if (([self isReadOnlyPersistentStore] & 1) == 0)
    {
      v35 = v11;
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      attributesForGroupContainerDirectory = [self attributesForGroupContainerDirectory];
      v36 = 0;
      v30 = [defaultManager2 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:attributesForGroupContainerDirectory error:&v36];
      v31 = v36;

      if ((v30 & 1) == 0)
      {
        v32 = os_log_create("com.apple.notes", "CoreData");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          +[ICPaths URLForGroupContainerWithIdentifier:];
        }
      }

      v11 = v35;
    }
  }

LABEL_28:
  v33 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    +[ICPaths URLForGroupContainerWithIdentifier:];
  }

  return v23;
}

+ (NSURL)applicationDataContainerURL
{
  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v3 = objc_opt_class();
  v4 = ICDynamicCast(v3, bundleRecordForCurrentProcess);
  containingBundleRecord = [v4 containingBundleRecord];

  v6 = objc_opt_class();
  v7 = ICDynamicCast(v6, containingBundleRecord);
  dataContainerURL = [v7 dataContainerURL];
  if (dataContainerURL)
  {
    v9 = dataContainerURL;
    v10 = containingBundleRecord;
    goto LABEL_12;
  }

  v11 = MEMORY[0x1E6963620];
  v12 = ICNotesAppBundleIdentifier();
  v18 = 0;
  v10 = [v11 bundleRecordWithApplicationIdentifier:v12 error:&v18];
  v13 = v18;

  if (v13)
  {
    v14 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[ICPaths applicationDataContainerURL];
    }
  }

  else
  {
    dataContainerURL2 = [v10 dataContainerURL];
    if (dataContainerURL2)
    {
      v9 = dataContainerURL2;
      goto LABEL_12;
    }
  }

  v15 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[ICPaths applicationDataContainerURL];
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (NSDictionary)attributesForGroupContainerDirectory
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A370];
  v5[0] = &unk_1F4FD7170;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (BOOL)isReadOnlyPersistentStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _isReadOnlyPersistentStore;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)setIsReadOnlyPersistentStore:(BOOL)store
{
  obj = self;
  objc_sync_enter(obj);
  _isReadOnlyPersistentStore = store;
  objc_sync_exit(obj);
}

+ (NSURL)oldManagedObjectModelURL
{
  if (oldManagedObjectModelURL_onceToken != -1)
  {
    +[ICPaths oldManagedObjectModelURL];
  }

  v3 = oldManagedObjectModelURL_modelURL;

  return v3;
}

void __35__ICPaths_oldManagedObjectModelURL__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = ICSharedFrameworkBundleIdentifier();
  v2 = [v0 bundleWithIdentifier:v1];

  if (!v2)
  {
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v4 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __35__ICPaths_oldManagedObjectModelURL__block_invoke_cold_1();
      }

      v2 = 0;
    }
  }

  v5 = [v2 URLForResource:@"NoteDataOld" withExtension:@"momd"];
  v6 = oldManagedObjectModelURL_modelURL;
  oldManagedObjectModelURL_modelURL = v5;

  if (!oldManagedObjectModelURL_modelURL)
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __35__ICPaths_oldManagedObjectModelURL__block_invoke_cold_2();
    }
  }
}

+ (void)URLForGroupContainerWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)URLForGroupContainerWithIdentifier:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1D4576000, v1, OS_LOG_TYPE_DEBUG, "%@ group container URL is not reachable. URL=%@", v2, 0x16u);
}

+ (void)URLForGroupContainerWithIdentifier:.cold.4()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1D4576000, v1, OS_LOG_TYPE_ERROR, "Error creating %@ group container: %@", v2, 0x16u);
}

+ (void)URLForGroupContainerWithIdentifier:.cold.5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1D4576000, v0, OS_LOG_TYPE_DEBUG, "Group container URL: %@", v1, 0xCu);
}

+ (void)applicationDataContainerURL
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__ICPaths_managedObjectModelURL__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__ICPaths_managedObjectModelURL__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __35__ICPaths_oldManagedObjectModelURL__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __35__ICPaths_oldManagedObjectModelURL__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end