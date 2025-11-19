@interface BMComputePublisherStorage
+ (id)bookmarkStorageForCurrentProcess;
+ (id)currentSession;
- (BMComputePublisherStorage)initWithUseCase:(id)a3 domain:(unint64_t)a4 isClient:(BOOL)a5;
- (BOOL)checkActiveSubscriptionMarkerForStream:(id)a3;
- (BOOL)checkExistenceOfBookmarkForSubscriptionWithIdentifier:(id)a3 client:(id)a4;
- (id)bookmarkPathForSessionStorageWithIdentifier:(id)a3 client:(id)a4;
- (id)currentSessionBookmarkClientOrServerPath;
- (id)currentSessionBookmarkPath;
- (id)currentSessionNonwakingSubscriptionPath;
- (id)currentSessionPath;
- (id)currentSessionSubscriptionsPath;
- (id)newFileManagerWithUseCase:(id)a3;
- (id)persistentPath;
- (id)readBookmarkForSubscriptionWithIdentifier:(id)a3 client:(id)a4 error:(id *)a5;
- (id)readNonWakingSubscriptions:(id *)a3;
- (id)readNonwakingSubscriptionWithIdentifier:(id)a3 client:(id)a4 error:(id *)a5;
- (id)sessionsPath;
- (id)subscriptionMarkerPathForSessionStorageWithStream:(id)a3;
- (void)initializeBiomeDSLDirectoryForBootSession;
- (void)removeActiveSubscriptionMarkerForStream:(id)a3;
- (void)removeBookmarkFileForSubscriptionWithIdentifier:(id)a3 client:(id)a4;
- (void)removeNonWakingSubscriptionWithIdentifier:(id)a3 client:(id)a4;
- (void)writeActiveSubscriptionMarkerForStream:(id)a3;
- (void)writeBookmark:(id)a3 forSubscriptionWithIdentifier:(id)a4 client:(id)a5;
- (void)writeNonWakingSubscription:(id)a3;
@end

@implementation BMComputePublisherStorage

- (id)currentSessionSubscriptionsPath
{
  v2 = [(BMComputePublisherStorage *)self currentSessionPath];
  v3 = [MEMORY[0x1E698EA08] subscriptions];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)currentSessionPath
{
  v2 = [(BMComputePublisherStorage *)self sessionsPath];
  v3 = [objc_opt_class() currentSession];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)sessionsPath
{
  v2 = [(BMComputePublisherStorage *)self basePath];
  v3 = [MEMORY[0x1E698EA08] sessions];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)currentSession
{
  v2 = [MEMORY[0x1E696AFB0] bm_bootSessionUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)currentSessionBookmarkClientOrServerPath
{
  if ([(BMComputePublisherStorage *)self isClient])
  {
    [MEMORY[0x1E698EA08] client];
  }

  else
  {
    [MEMORY[0x1E698EA08] server];
  }
  v3 = ;
  v4 = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

- (id)currentSessionBookmarkPath
{
  v2 = [(BMComputePublisherStorage *)self currentSessionPath];
  v3 = [MEMORY[0x1E698EA08] bookmarks];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)persistentPath
{
  v2 = [(BMComputePublisherStorage *)self basePath];
  v3 = [MEMORY[0x1E698EA08] persistent];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)currentSessionNonwakingSubscriptionPath
{
  v2 = [(BMComputePublisherStorage *)self currentSessionPath];
  v3 = [MEMORY[0x1E698EA08] nonwaking];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (id)newFileManagerWithUseCase:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E698E9C8];
  v6 = [(BMComputePublisherStorage *)self basePath];
  if (([v5 pathIsManaged:v6 domain:0] & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E698E9D8] current];
  v8 = [v7 reliesOnDirectAccessForDomain:{-[BMComputePublisherStorage domain](self, "domain")}];

  if (v8)
  {
LABEL_5:
    v12 = MEMORY[0x1E698E9B8];
    v10 = [(BMComputePublisherStorage *)self basePath];
    v11 = [v12 fileManagerWithDirectAccessToDirectory:v10 cachingOptions:3];
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E698E9B8];
  v10 = [(BMComputePublisherStorage *)self basePath];
  v11 = [v9 fileManagerWithMediatedAccessToDirectory:v10 useCase:v4 domain:-[BMComputePublisherStorage domain](self user:{"domain"), geteuid()}];
LABEL_6:
  v13 = v11;

  return v13;
}

- (void)initializeBiomeDSLDirectoryForBootSession
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BMComputePublisherStorage *)self basePath];
    v5 = [objc_opt_class() currentSession];
    *buf = 138412546;
    v81 = v4;
    v82 = 2112;
    v83 = v5;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_DEFAULT, "Initializing DSL directory %@ with session %@", buf, 0x16u);
  }

  v6 = [(BMComputePublisherStorage *)self newFileManagerWithUseCase:*MEMORY[0x1E698E948]];
  v7 = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
  v77 = 0;
  v8 = [v6 createDirectoryAtPath:v7 error:&v77];
  v9 = v77;

  if (v8)
  {
    v10 = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
    v11 = [MEMORY[0x1E698EA08] client];
    v12 = [v10 stringByAppendingPathComponent:v11];
    v76 = v9;
    v13 = [v6 createDirectoryAtPath:v12 error:&v76];
    v14 = v76;

    if ((v13 & 1) == 0)
    {
      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
      }

      goto LABEL_26;
    }

    v15 = [(BMComputePublisherStorage *)self currentSessionBookmarkPath];
    v16 = [MEMORY[0x1E698EA08] server];
    v17 = [v15 stringByAppendingPathComponent:v16];
    v75 = v14;
    v18 = [v6 createDirectoryAtPath:v17 error:&v75];
    v9 = v75;

    if (v18)
    {
      v19 = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
      v74 = v9;
      v20 = [v6 createDirectoryAtPath:v19 error:&v74];
      v14 = v74;

      v21 = self;
      if (v20)
      {
        v22 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:self->_domain];
        v23 = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
        v24 = [v23 hasPrefix:v22];

        v61 = v22;
        if (v24)
        {
          v25 = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
          v26 = [v25 substringFromIndex:{-[NSObject length](v22, "length") + 1}];

          v27 = [v22 mutableCopy];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v60 = v26;
          v28 = [v26 pathComponents];
          v29 = [v28 countByEnumeratingWithState:&v70 objects:v79 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v71;
            do
            {
              v32 = 0;
              v33 = v14;
              do
              {
                if (*v71 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v34 = *(*(&v70 + 1) + 8 * v32);
                [v27 appendString:@"/"];
                [v27 appendString:v34];
                v35 = __biome_log_for_category();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v81 = v27;
                  _os_log_debug_impl(&dword_1848EE000, v35, OS_LOG_TYPE_DEBUG, "Adjusting permission of %@", buf, 0xCu);
                }

                v69 = v33;
                v36 = [v6 changePermissionsOfFileAtPath:v27 mode:457 error:&v69];
                v14 = v69;

                if ((v36 & 1) == 0)
                {
                  v37 = __biome_log_for_category();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v81 = v14;
                    _os_log_error_impl(&dword_1848EE000, v37, OS_LOG_TYPE_ERROR, "Failed to set mode with error %@", buf, 0xCu);
                  }
                }

                ++v32;
                v33 = v14;
              }

              while (v30 != v32);
              v30 = [v28 countByEnumeratingWithState:&v70 objects:v79 count:16];
            }

            while (v30);
          }

          v21 = self;
          v38 = v60;
        }

        else
        {
          v38 = __biome_log_for_category();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
          }
        }

        v40 = [(BMComputePublisherStorage *)v21 persistentPath];
        v68 = v14;
        v41 = [v6 createDirectoryAtPath:v40 error:&v68];
        v42 = v68;

        if (v41)
        {
          v43 = [(BMComputePublisherStorage *)v21 sessionsPath];
          v67 = v42;
          v44 = [v6 contentsOfDirectoryAtPath:v43 error:&v67];
          v9 = v67;

          if (v44)
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v44 = v44;
            v45 = [v44 countByEnumeratingWithState:&v63 objects:v78 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v64;
              do
              {
                v48 = 0;
                do
                {
                  if (*v64 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*(&v63 + 1) + 8 * v48);
                  v50 = [objc_opt_class() currentSession];
                  v51 = [v49 isEqual:v50];

                  if ((v51 & 1) == 0)
                  {
                    v52 = [(BMComputePublisherStorage *)v21 sessionsPath];
                    v53 = [v52 stringByAppendingPathComponent:v49];

                    v54 = __biome_log_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v81 = v53;
                      _os_log_impl(&dword_1848EE000, v54, OS_LOG_TYPE_INFO, "Removing old DSL session directory: %@", buf, 0xCu);
                    }

                    v62 = v9;
                    v55 = [v6 removeDirectoryAtPath:v53 error:&v62];
                    v56 = v62;

                    if ((v55 & 1) == 0)
                    {
                      v57 = __biome_log_for_category();
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v81 = v53;
                        v82 = 2112;
                        v83 = v56;
                        _os_log_error_impl(&dword_1848EE000, v57, OS_LOG_TYPE_ERROR, "Error removing old DSL session directory %@. %@", buf, 0x16u);
                      }
                    }

                    v9 = v56;
                  }

                  ++v48;
                }

                while (v46 != v48);
                v46 = [v44 countByEnumeratingWithState:&v63 objects:v78 count:16];
              }

              while (v46);
            }
          }

          else
          {
            v58 = __biome_log_for_category();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              [(BMComputePublisherStorage *)v21 initializeBiomeDSLDirectoryForBootSession];
            }
          }
        }

        else
        {
          v44 = __biome_log_for_category();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
          }

          v9 = v42;
        }

        v39 = v61;

        goto LABEL_58;
      }

      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
      }

LABEL_26:
      v9 = v14;
      goto LABEL_58;
    }

    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
    }
  }

  else
  {
    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage initializeBiomeDSLDirectoryForBootSession];
    }
  }

LABEL_58:

  v59 = *MEMORY[0x1E69E9840];
}

- (BMComputePublisherStorage)initWithUseCase:(id)a3 domain:(unint64_t)a4 isClient:(BOOL)a5
{
  v8 = a3;
  v14.receiver = self;
  v14.super_class = BMComputePublisherStorage;
  v9 = [(BMComputePublisherStorage *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_domain = a4;
    v9->_isClient = a5;
    v11 = [(BMComputePublisherStorage *)v9 newFileManagerWithUseCase:v8];
    fileManager = v10->_fileManager;
    v10->_fileManager = v11;
  }

  return v10;
}

- (id)bookmarkPathForSessionStorageWithIdentifier:(id)a3 client:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BMComputePublisherStorage *)self currentSessionBookmarkClientOrServerPath];
  v9 = [v8 stringByAppendingPathComponent:v6];

  v10 = [v9 stringByAppendingPathComponent:v7];

  return v10;
}

- (id)subscriptionMarkerPathForSessionStorageWithStream:(id)a3
{
  v4 = a3;
  v5 = [(BMComputePublisherStorage *)self currentSessionSubscriptionsPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (BOOL)checkExistenceOfBookmarkForSubscriptionWithIdentifier:(id)a3 client:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:v6 client:a4];
  v8 = [v7 stringByDeletingLastPathComponent];

  v9 = [v8 stringByAppendingPathComponent:v6];
  v10 = [(BMFileManager *)self->_fileManager fileExistsAtPath:v9 error:0];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v10)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [(BMComputePublisherStorage *)self domain];
    v13 = BMStringForServiceDomain();
    v16 = 138413058;
    v17 = v12;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "Bookmark file exists: %@ for subscription %@ domain: %@ path: %@", &v16, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)readBookmarkForSubscriptionWithIdentifier:(id)a3 client:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:v8 client:v9];
    fileManager = self->_fileManager;
    v34 = 0;
    v12 = [(BMFileManager *)fileManager dataWithContentsOfFileAtPath:v10 error:&v34];
    v13 = v34;
    if (v13)
    {
      v14 = v13;
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (a5)
      {
        v16 = v14;
        v17 = 0;
        *a5 = v14;
LABEL_30:

        goto LABEL_31;
      }

LABEL_19:
      v17 = 0;
      goto LABEL_30;
    }

    if (![v12 length])
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        [(BMComputePublisherStorage *)self domain];
        v24 = BMStringForServiceDomain();
        *buf = 138412802;
        v38 = v8;
        v39 = 2112;
        v40 = v24;
        v41 = 2112;
        v42 = v10;
        _os_log_impl(&dword_1848EE000, v23, OS_LOG_TYPE_INFO, "Empty bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
      }

      v14 = 0;
      goto LABEL_19;
    }

    v18 = MEMORY[0x1E696ACD0];
    v19 = [MEMORY[0x1E696AB10] bm_allowedClassesForSecureCodingBMBookmark];
    v33 = 0;
    v20 = [v18 unarchivedObjectOfClasses:v19 fromData:v12 error:&v33];
    v14 = v33;

    if (v14)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (a5)
      {
        v22 = v14;
        v17 = 0;
        *a5 = v14;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if ([v20 conformsToProtocol:&unk_1EF326390])
      {
        v25 = __biome_log_for_category();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          [(BMComputePublisherStorage *)self domain];
          v26 = BMStringForServiceDomain();
          *buf = 138412802;
          v38 = v8;
          v39 = 2112;
          v40 = v26;
          v41 = 2112;
          v42 = v10;
          _os_log_impl(&dword_1848EE000, v25, OS_LOG_TYPE_INFO, "Read bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
        }

        v17 = v20;
        goto LABEL_29;
      }

      v27 = __biome_log_for_category();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (a5)
      {
        v28 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E698E908];
        v35 = *MEMORY[0x1E696A578];
        v36 = @"Not a bookmark";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        *a5 = [v28 errorWithDomain:v29 code:0 userInfo:v30];
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
  }

  v17 = 0;
LABEL_31:

  v31 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)writeBookmark:(id)a3 forSubscriptionWithIdentifier:(id)a4 client:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v12 = v11;
    if (v8)
    {
      v23 = 0;
      v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v23];
      v14 = v23;

      if (v14)
      {
        v15 = __biome_log_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v25 = v8;
          v26 = 2112;
          v27 = v9;
          v28 = 2112;
          v29 = v14;
          _os_log_error_impl(&dword_1848EE000, v15, OS_LOG_TYPE_ERROR, "Error archiving bookmark %@ for subscription %@. %@", buf, 0x20u);
        }

LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      v13 = v11;
    }

    v15 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:v9 client:v10];
    fileManager = self->_fileManager;
    v22 = 0;
    v17 = [(BMFileManager *)fileManager replaceFileAtPath:v15 withData:v13 protection:0xFFFFFFFFLL flags:0 error:&v22];
    v14 = v22;
    if ((v17 & 1) == 0)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v25 = v8;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v15;
        v30 = 2112;
        v31 = v14;
        _os_log_error_impl(&dword_1848EE000, v18, OS_LOG_TYPE_ERROR, "Error writing bookmark %@ for subscription %@ to %@. %@", buf, 0x2Au);
      }
    }

    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      [(BMComputePublisherStorage *)self domain];
      v20 = BMStringForServiceDomain();
      *buf = 138412802;
      v25 = v9;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_1848EE000, v19, OS_LOG_TYPE_INFO, "Wrote bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
    }

    goto LABEL_16;
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [BMComputePublisherStorage writeBookmark:forSubscriptionWithIdentifier:client:];
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)removeBookmarkFileForSubscriptionWithIdentifier:(id)a3 client:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(BMComputePublisherStorage *)self bookmarkPathForSessionStorageWithIdentifier:v6 client:v7];
    fileManager = self->_fileManager;
    v16 = 0;
    v10 = [(BMFileManager *)fileManager removeFileAtPath:v8 error:&v16];
    v11 = v16;
    v12 = __biome_log_for_category();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [(BMComputePublisherStorage *)self domain];
        v14 = BMStringForServiceDomain();
        *buf = 138412802;
        v18 = v6;
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_INFO, "Removed bookmark file for subscription %@ domain: %@ path: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_1848EE000, v13, OS_LOG_TYPE_ERROR, "Error removing bookmark file for subscription %@ at path %@ error %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeBookmarkFileForSubscriptionWithIdentifier:client:];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)writeNonWakingSubscription:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(BMComputePublisherStorage *)self isClient])
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage writeNonWakingSubscription:];
    }
  }

  else
  {
    v5 = [v4 identifier];
    v6 = [v4 client];
    if (([v4 waking] & 1) == 0 && v5 && v6)
    {
      v19 = 0;
      v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v19];
      v8 = v19;
      if (v8)
      {
        v9 = v8;
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherStorage writeNonWakingSubscription:];
        }
      }

      else
      {
        v11 = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
        v12 = [v11 stringByAppendingPathComponent:v6];
        v10 = [v12 stringByAppendingPathComponent:v5];

        fileManager = self->_fileManager;
        v18 = 0;
        v14 = [(BMFileManager *)fileManager replaceFileAtPath:v10 withData:v7 protection:4 flags:0 error:&v18];
        v9 = v18;
        if ((v14 & 1) == 0)
        {
          v15 = __biome_log_for_category();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v21 = v4;
            v22 = 2112;
            v23 = v10;
            v24 = 2112;
            v25 = v9;
            _os_log_error_impl(&dword_1848EE000, v15, OS_LOG_TYPE_ERROR, "Error writing subscription %@ to %@. %@", buf, 0x20u);
          }
        }

        v16 = __biome_log_for_category();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v21 = v4;
          v22 = 2112;
          v23 = v10;
          _os_log_impl(&dword_1848EE000, v16, OS_LOG_TYPE_INFO, "Wrote subscription %@ to %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage writeNonWakingSubscription:];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeNonWakingSubscriptionWithIdentifier:(id)a3 client:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(BMComputePublisherStorage *)self isClient])
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeNonWakingSubscriptionWithIdentifier:client:];
    }
  }

  else if (v6 && v7)
  {
    v9 = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
    v10 = [v9 stringByAppendingPathComponent:v7];
    v8 = [v10 stringByAppendingPathComponent:v6];

    fileManager = self->_fileManager;
    v16 = 0;
    LOBYTE(v9) = [(BMFileManager *)fileManager removeFileAtPath:v8 error:&v16];
    v12 = v16;
    if ((v9 & 1) == 0)
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v18 = v7;
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v12;
        _os_log_error_impl(&dword_1848EE000, v13, OS_LOG_TYPE_ERROR, "Error removing non-waking subscription %@/%@ at path %@ error %@", buf, 0x2Au);
      }
    }

    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v18 = v7;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1848EE000, v14, OS_LOG_TYPE_INFO, "Removed non-waking subscription %@/%@ at %@", buf, 0x20u);
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeNonWakingSubscriptionWithIdentifier:client:];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)readNonWakingSubscriptions:(id *)a3
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (![(BMComputePublisherStorage *)self isClient])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
    fileManager = self->_fileManager;
    v48 = 0;
    v10 = [(BMFileManager *)fileManager contentsOfDirectoryAtPath:v8 error:&v48];
    v11 = v48;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v12 = v10;
    v33 = [v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
    if (v33)
    {
      v13 = *v45;
      v31 = *v45;
      v32 = a3;
      v35 = v12;
      v36 = v8;
      do
      {
        v14 = 0;
        do
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v34 = v14;
          v15 = *(*(&v44 + 1) + 8 * v14);
          v16 = [v8 stringByAppendingPathComponent:{v15, v31}];
          v17 = self->_fileManager;
          v43 = v11;
          v37 = v16;
          v18 = [BMFileManager contentsOfDirectoryAtPath:v17 error:"contentsOfDirectoryAtPath:error:"];
          v19 = v43;

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v20 = v18;
          v21 = [v20 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v40;
            v11 = v19;
            while (2)
            {
              v24 = 0;
              v25 = v11;
              do
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v39 + 1) + 8 * v24);
                v38 = v25;
                v27 = [(BMComputePublisherStorage *)self readNonwakingSubscriptionWithIdentifier:v26 client:v15 error:&v38];
                v11 = v38;

                if (!v27)
                {
                  if (v32)
                  {
                    v28 = v11;
                    *v32 = v11;
                  }

                  v12 = v35;
                  v7 = 0;
                  v8 = v36;
                  goto LABEL_25;
                }

                [v6 addObject:v27];

                ++v24;
                v25 = v11;
              }

              while (v22 != v24);
              v22 = [v20 countByEnumeratingWithState:&v39 objects:v49 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v11 = v19;
          }

          v14 = v34 + 1;
          v12 = v35;
          v8 = v36;
          v13 = v31;
        }

        while (v34 + 1 != v33);
        v33 = [v35 countByEnumeratingWithState:&v44 objects:v50 count:16];
      }

      while (v33);
    }

    v7 = [v6 copy];
LABEL_25:

    goto LABEL_26;
  }

  if (a3)
  {
    v5 = objc_alloc(MEMORY[0x1E696ABC0]);
    v51 = *MEMORY[0x1E696A578];
    v52[0] = @"Invalid for client to read non-waking subscriptions";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v7 = 0;
    *a3 = [v5 initWithDomain:@"BiomeComputeError" code:-1 userInfo:v6];
LABEL_26:

    goto LABEL_27;
  }

  v7 = 0;
LABEL_27:
  v29 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)readNonwakingSubscriptionWithIdentifier:(id)a3 client:(id)a4 error:(id *)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([(BMComputePublisherStorage *)self isClient])
  {
    if (!a5)
    {
      v12 = 0;
      goto LABEL_28;
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Invalid for client to read non-waking subscriptions";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v12 = 0;
    *a5 = [v10 initWithDomain:@"BiomeComputeError" code:-1 userInfo:v11];
  }

  else if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v13 = [(BMComputePublisherStorage *)self currentSessionNonwakingSubscriptionPath];
    v14 = [v13 stringByAppendingPathComponent:v9];
    v11 = [v14 stringByAppendingPathComponent:v8];

    fileManager = self->_fileManager;
    v28 = 0;
    v16 = [(BMFileManager *)fileManager dataWithContentsOfFileAtPath:v11 error:&v28];
    v17 = v28;
    if (v17)
    {
      v18 = v17;
      v19 = __biome_log_for_category();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [BMComputePublisherStorage readBookmarkForSubscriptionWithIdentifier:client:error:];
      }

      if (a5)
      {
        v20 = v18;
        v12 = 0;
        *a5 = v18;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v27 = 0;
      v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v27];
      v18 = v27;
      if (v18)
      {
        v22 = __biome_log_for_category();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [BMComputePublisherStorage readNonwakingSubscriptionWithIdentifier:client:error:];
        }

        if (a5)
        {
          v23 = v18;
          v12 = 0;
          *a5 = v18;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v30 = v21;
          v31 = 2112;
          v32 = v11;
          _os_log_impl(&dword_1848EE000, v24, OS_LOG_TYPE_INFO, "Read subscription %@ from path: %@", buf, 0x16u);
        }

        v12 = v21;
      }
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage readNonwakingSubscriptionWithIdentifier:client:error:];
    }

    v12 = 0;
  }

LABEL_28:
  v25 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)checkActiveSubscriptionMarkerForStream:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMComputePublisherStorage *)self subscriptionMarkerPathForSessionStorageWithStream:v4];
  fileManager = self->_fileManager;
  v15 = 0;
  LODWORD(v7) = [(BMFileManager *)fileManager fileExistsAtPath:v5 error:&v15];
  v8 = v15;
  v9 = @"NO";
  if (v7)
  {
    v9 = @"YES";
  }

  v10 = v9;
  if ((v7 & 1) == 0 && v8)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage checkActiveSubscriptionMarkerForStream:];
    }

    LOBYTE(v7) = 1;
    v10 = @"unknown";
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [(BMComputePublisherStorage *)self domain];
    v12 = BMStringForServiceDomain();
    *buf = 138543874;
    v17 = v10;
    v18 = 2114;
    v19 = v4;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "Subscription marker exists: %{public}@ for stream: %{public}@ using domain: %{public}@", buf, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)writeActiveSubscriptionMarkerForStream:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMComputePublisherStorage *)self subscriptionMarkerPathForSessionStorageWithStream:v4];
  v6 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  fileManager = self->_fileManager;
  v15 = 0;
  v8 = [(BMFileManager *)fileManager replaceFileAtPath:v5 withData:v6 protection:4 flags:0 error:&v15];
  v9 = v15;
  if ((v8 & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage writeActiveSubscriptionMarkerForStream:];
    }
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    [(BMComputePublisherStorage *)self domain];
    v13 = BMStringForServiceDomain();
    *buf = 138413058;
    v17 = v12;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_INFO, "Wrote new active subscription marker with success: %@ for stream: %@ using domain: %@ path: %@", buf, 0x2Au);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeActiveSubscriptionMarkerForStream:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(BMComputePublisherStorage *)self subscriptionMarkerPathForSessionStorageWithStream:v4];
  fileManager = self->_fileManager;
  v14 = 0;
  v7 = [(BMFileManager *)fileManager removeFileAtPath:v5 error:&v14];
  v8 = v14;
  if ((v7 & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMComputePublisherStorage removeActiveSubscriptionMarkerForStream:];
    }
  }

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    if (v7)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    [(BMComputePublisherStorage *)self domain];
    v12 = BMStringForServiceDomain();
    *buf = 138413058;
    v16 = v11;
    v17 = 2112;
    v18 = v4;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_INFO, "Removed active subscription marker with success: %@ for stream: %@ using domain: %@ path: %@", buf, 0x2Au);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)bookmarkStorageForCurrentProcess
{
  v2 = [BMComputePublisherStorage alloc];
  v3 = [(BMComputePublisherStorage *)v2 initWithUseCase:*MEMORY[0x1E698E928] domain:0 isClient:1];

  return v3;
}

@end