@interface MADSystemDataStoreClient
+ (id)readOnlyClient;
- (BOOL)_configureXPCPersistentStoreCoordinatorWithReadOnlyMode:(BOOL)mode;
- (MADSystemDataStoreClient)init;
@end

@implementation MADSystemDataStoreClient

- (MADSystemDataStoreClient)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MADSystemDataStoreClient;
  v2 = [(MADSystemDataStoreClient *)&v10 init];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = +[MADSystemDataStore modelDefinitionPath];
  if (!v3)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStoreClient] Missing model definition (%@)", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v5 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v4];
  if (!v5)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStoreClient] Failed to load embedding model", buf, 2u);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v6 = [objc_alloc(MEMORY[0x1E695D6C0]) initWithManagedObjectModel:v5];
  persistentStoreCoordinator = v2->_persistentStoreCoordinator;
  v2->_persistentStoreCoordinator = v6;

LABEL_5:
  v8 = v2;
LABEL_14:

  return v8;
}

+ (id)readOnlyClient
{
  v2 = objc_alloc_init(objc_opt_class());
  if ([v2 _configureXPCPersistentStoreCoordinatorWithReadOnlyMode:1])
  {
    v3 = v2;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MADSystemDataStoreClient] Failed to configurate client", v5, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)_configureXPCPersistentStoreCoordinatorWithReadOnlyMode:(BOOL)mode
{
  modeCopy = mode;
  v33[3] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[MADSystemDataStoreClient][ConfigureXPC]"];
  v6 = objc_alloc_init(MADXPCStoreServerEndpointFactory);
  v7 = *MEMORY[0x1E695D3C0];
  v32[0] = *MEMORY[0x1E695D510];
  v32[1] = v7;
  v33[0] = v6;
  v33[1] = MEMORY[0x1E695E118];
  v32[2] = *MEMORY[0x1E695D458];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:modeCopy];
  v33[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:3];

  v10 = +[MADSystemDataStore defaultDatabasePath];
  if (!v10)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v25 = v5;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "%@ Invalid database directory";
    v21 = 12;
    goto LABEL_17;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [defaultManager fileExistsAtPath:v10 isDirectory:0];

  if ((v12 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v10;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "%@ Database does not exist (%@)";
    v21 = 22;
LABEL_17:
    _os_log_impl(&dword_1C9B70000, v19, OS_LOG_TYPE_ERROR, v20, buf, v21);
LABEL_18:
    v17 = 0;
    v18 = 0;
    goto LABEL_19;
  }

  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10];
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v25 = v5;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%@ Adding XPC store at URL: %@ with options: %@", buf, 0x20u);
  }

  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  v15 = *MEMORY[0x1E695D528];
  v23 = 0;
  v16 = [(NSPersistentStoreCoordinator *)persistentStoreCoordinator addPersistentStoreWithType:v15 configuration:0 URL:v13 options:v9 error:&v23];
  v17 = v23;
  v18 = v16 != 0;
  if (!v16 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v25 = v5;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Failed to connect to XPC store %@ with options %@ - %@", buf, 0x2Au);
  }

LABEL_19:
  return v18;
}

@end