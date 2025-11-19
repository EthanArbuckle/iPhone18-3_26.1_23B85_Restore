@interface CCDataResource
+ (BOOL)_databaseExistsAtURL:(id)a3 error:(id *)a4;
+ (BOOL)directoryContainsDataResource:(id)a3;
+ (BOOL)enumerateDataResources:(id *)a3 setIdentifier:(id)a4 descriptors:(id)a5 container:(id)a6 includingTombstoned:(BOOL)a7 startAfterSet:(id)a8 sorted:(BOOL)a9 usingBlock:(id)a10;
+ (id)dataResourceForSet:(id)a3 inContainer:(id)a4;
+ (id)dataResourceFromSpecifier:(id)a3 inContainer:(id)a4;
- (BOOL)clearTombstoneStatus:(id *)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)markTombstoned:(id)a3 error:(id *)a4;
- (CCDataResource)initWithSpecifier:(id)a3 container:(id)a4 resourceDirectoryURL:(id)a5;
- (id)description;
- (id)tombstoneDate:(id *)a3;
- (unsigned)resourceStatus;
@end

@implementation CCDataResource

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"CCDataResource: %@", self->_resourceDirectoryURL];

  return v2;
}

+ (BOOL)directoryContainsDataResource:(id)a3
{
  v3 = a1;
  v4 = [a1 _databaseDirectoryURLFromResourceDirectoryURL:a3];
  v5 = [v3 databaseURLFromParentDirectoryURL:v4];
  LOBYTE(v3) = [v3 _databaseExistsAtURL:v5 error:0];

  return v3;
}

+ (BOOL)_databaseExistsAtURL:(id)a3 error:(id *)a4
{
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = access([v5 fileSystemRepresentation], 0);
  if (v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v19[0] = *MEMORY[0x1E696A588];
    v8 = MEMORY[0x1E696AEC0];
    v9 = __error();
    v10 = [v8 stringWithFormat:@"Database: %s", strerror(*v9)];
    v20[0] = v10;
    v19[1] = *MEMORY[0x1E696A278];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [v5 fileSystemRepresentation];
    v13 = __error();
    v14 = [v11 stringWithFormat:@"Database does not exist at path: %s error: %s", v12, strerror(*v13)];
    v20[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = [v7 errorWithDomain:@"com.apple.CascadeSets.Set" code:4 userInfo:v15];
    CCSetError(a4, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

+ (id)dataResourceFromSpecifier:(id)a3 inContainer:(id)a4
{
  v5 = MEMORY[0x1E698E9C8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 pathForResource:v7 inContainer:v6];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
  v10 = [objc_alloc(objc_opt_class()) initWithSpecifier:v7 container:v6 resourceDirectoryURL:v9];

  return v10;
}

+ (id)dataResourceForSet:(id)a3 inContainer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 toResourceSpecifier];

  v9 = [v7 dataResourceFromSpecifier:v8 inContainer:v5];

  return v9;
}

- (CCDataResource)initWithSpecifier:(id)a3 container:(id)a4 resourceDirectoryURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = CCDataResource;
  v12 = [(CCDataResource *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_specifier, a3);
    objc_storeStrong(&v13->_container, a4);
    objc_storeStrong(&v13->_resourceDirectoryURL, a5);
    v14 = [objc_opt_class() _databaseDirectoryURLFromResourceDirectoryURL:v13->_resourceDirectoryURL];
    databaseDirectoryURL = v13->_databaseDirectoryURL;
    v13->_databaseDirectoryURL = v14;

    v16 = objc_opt_class();
    v17 = [(CCDataResource *)v13 databaseDirectoryURL];
    v18 = [v16 databaseURLFromParentDirectoryURL:v17];
    databaseURL = v13->_databaseURL;
    v13->_databaseURL = v18;
  }

  return v13;
}

- (unsigned)resourceStatus
{
  v10 = 0;
  v2 = [(CCDataResource *)self tombstoneDate:&v10];
  v3 = v2;
  if (v10)
  {
    v4 = 0;
  }

  else if (v2)
  {
    v5 = objc_opt_new();
    [v5 timeIntervalSinceDate:v3];
    v7 = v6;

    if (v7 >= *&CCDataResourceTombstonedInterval)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if (v7 >= *&CCDataResourceDeletingInterval)
    {
      v4 = 4;
    }

    else
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)tombstoneDate:(id *)a3
{
  value = 0;
  v4 = getxattr([(NSURL *)self->_databaseDirectoryURL fileSystemRepresentation], "com.apple.cascade.tombstonedate", &value, 8uLL, 0, 0);
  if (v4)
  {
    if (v4 < 0)
    {
      if (*__error() != 93)
      {
        v5 = __biome_log_for_category();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [CCDataResource tombstoneDate:];
        }

        v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
        CCSetError(a3, v6);
      }

      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:value / 1000000.0];
    }
  }

  return v4;
}

- (BOOL)markTombstoned:(id)a3 error:(id *)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CCDataResource *)self tombstoneDate:0];
  if (v7)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "Resesource: %@, has existing tombstone date: %@, not resetting", buf, 0x16u);
    }

    v9 = 1;
  }

  else
  {
    [v6 timeIntervalSince1970];
    value = (v10 * 1000000.0);
    v11 = setxattr([(NSURL *)self->_databaseDirectoryURL fileSystemRepresentation], "com.apple.cascade.tombstonedate", &value, 8uLL, 0, 0);
    v9 = v11 == 0;
    v12 = __biome_log_for_category();
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CCDataResource markTombstoned:error:];
      }

      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      CCSetError(a4, v13);
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = self;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1B6DB2000, v13, OS_LOG_TYPE_DEFAULT, "Successfully set tombstone date for resource: %@, date: %@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)clearTombstoneStatus:(id *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(CCDataResource *)self tombstoneDate:0];

  if (!v5)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(CCDataResource *)self clearTombstoneStatus:v8];
    }

    goto LABEL_10;
  }

  v6 = removexattr([(NSURL *)self->_databaseDirectoryURL fileSystemRepresentation], "com.apple.cascade.tombstonedate", 0);
  v7 = __biome_log_for_category();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&dword_1B6DB2000, v8, OS_LOG_TYPE_DEFAULT, "Successfully cleared tombstone date for resource: %@", &v12, 0xCu);
    }

LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CCDataResource clearTombstoneStatus:];
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
  CCSetError(a3, v8);
  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(NSURL *)self->_resourceDirectoryURL path];
    v7 = [(CCDataResource *)v5 resourceDirectoryURL];
    v8 = [v7 path];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)enumerateDataResources:(id *)a3 setIdentifier:(id)a4 descriptors:(id)a5 container:(id)a6 includingTombstoned:(BOOL)a7 startAfterSet:(id)a8 sorted:(BOOL)a9 usingBlock:(id)a10
{
  v51 = a3;
  v85 = *MEMORY[0x1E69E9840];
  v57 = a4;
  v55 = a5;
  v14 = a6;
  v15 = a8;
  v16 = a10;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__9;
  v81 = __Block_byref_object_dispose__9;
  v82 = 0;
  v56 = v15;
  if (v15)
  {
    v17 = [objc_opt_class() dataResourceForSet:v15 inContainer:{v14, v51}];
    v18 = [v17 resourceDirectoryURL];
    v15 = [v18 path];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__CCDataResource_enumerateDataResources_setIdentifier_descriptors_container_includingTombstoned_startAfterSet_sorted_usingBlock___block_invoke;
  aBlock[3] = &unk_1E7C8BBA8;
  v54 = v15;
  v76 = v54;
  v19 = _Block_copy(aBlock);
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __129__CCDataResource_enumerateDataResources_setIdentifier_descriptors_container_includingTombstoned_startAfterSet_sorted_usingBlock___block_invoke_2;
  v71[3] = &unk_1E7C8BBD0;
  v60 = v19;
  v72 = v60;
  v74 = a7;
  v53 = v16;
  v73 = v53;
  v20 = _Block_copy(v71);
  v21 = MEMORY[0x1E695DFF8];
  v22 = [MEMORY[0x1E698E9C8] setsDirectoryInContainer:v14];
  v23 = [v21 fileURLWithPath:v22 isDirectory:1];

  if (v57)
  {
    v24 = [MEMORY[0x1E698E9F8] resourceFromContainer:v14 withType:4 name:v51 descriptors:{v53, v54}];
    v59 = [MEMORY[0x1E698E9C8] pathForResource:v24 inContainer:v14];
    v58 = [MEMORY[0x1E695DFF8] fileURLWithPath:v59 isDirectory:1];
    obj = v24;

    v25 = v58;
    if (access([v58 fileSystemRepresentation], 0) || +[CCDataResource directoryContainsDataResource:](CCDataResource, "directoryContainsDataResource:", v58) && (objc_msgSend(objc_opt_class(), "dataResourceFromSpecifier:inContainer:", v24, v14), v27 = objc_claimAutoreleasedReturnValue(), v28 = v20[2](v20, v27), v27, (v28 & 1) != 0))
    {
      v26 = 1;
LABEL_43:

      v32 = obj;
      goto LABEL_44;
    }
  }

  else
  {
    v58 = v23;
  }

  v29 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = objc_opt_new();
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __129__CCDataResource_enumerateDataResources_setIdentifier_descriptors_container_includingTombstoned_startAfterSet_sorted_usingBlock___block_invoke_3;
  v70[3] = &unk_1E7C8BBF8;
  v70[4] = &v77;
  v31 = [v29 enumeratorAtURL:v58 includingPropertiesForKeys:v30 options:4 errorHandler:v70];

  if (v31)
  {
    if (a9)
    {
      v59 = objc_opt_new();
    }

    else
    {
      v59 = 0;
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v31;
    v33 = [obj countByEnumeratingWithState:&v66 objects:v84 count:16];
    if (v33)
    {
      v34 = *v67;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v67 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v66 + 1) + 8 * i);
          v37 = objc_autoreleasePoolPush();
          if (![CCDataResource directoryContainsDataResource:v36])
          {
LABEL_27:
            v42 = 0;
            goto LABEL_28;
          }

          v38 = MEMORY[0x1E698E9C8];
          v39 = [v36 path];
          v40 = [v38 resourceFromDataResourcePath:v39 inContainer:v14];

          v41 = [objc_opt_class() dataResourceFromSpecifier:v40 inContainer:v14];
          if (a9)
          {
            if (((*(v60 + 2))(v60, v41) & 1) == 0)
            {
              [v59 addObject:v41];
            }

            v42 = 3;
          }

          else
          {
            v43 = v20[2](v20, v41);

            if ((v43 & 1) == 0)
            {
              goto LABEL_27;
            }

            v42 = 2;
          }

LABEL_28:
          objc_autoreleasePoolPop(v37);
          if (v42 != 3 && v42)
          {
            goto LABEL_32;
          }
        }

        v33 = [obj countByEnumeratingWithState:&v66 objects:v84 count:16];
      }

      while (v33);
    }

LABEL_32:

    if (a9)
    {
      v44 = objc_autoreleasePoolPush();
      [v59 sortUsingComparator:&__block_literal_global_9];
      objc_autoreleasePoolPop(v44);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v45 = v59;
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v83 count:16];
      if (v46)
      {
        v47 = *v63;
LABEL_35:
        v48 = 0;
        while (1)
        {
          if (*v63 != v47)
          {
            objc_enumerationMutation(v45);
          }

          if (v20[2](v20, *(*(&v62 + 1) + 8 * v48)))
          {
            break;
          }

          if (v46 == ++v48)
          {
            v46 = [v45 countByEnumeratingWithState:&v62 objects:v83 count:16];
            if (v46)
            {
              goto LABEL_35;
            }

            break;
          }
        }
      }
    }

    CCSetError(v52, v78[5]);
    v26 = v78[5] == 0;
    goto LABEL_43;
  }

  v32 = 0;
  v26 = 0;
LABEL_44:

  _Block_object_dispose(&v77, 8);
  v49 = *MEMORY[0x1E69E9840];
  return v26;
}

unint64_t __129__CCDataResource_enumerateDataResources_setIdentifier_descriptors_container_includingTombstoned_startAfterSet_sorted_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 resourceDirectoryURL];
    v4 = [v3 path];
    v2 = [v2 compare:v4] != -1;
  }

  return v2;
}

uint64_t __129__CCDataResource_enumerateDataResources_setIdentifier_descriptors_container_includingTombstoned_startAfterSet_sorted_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 32) + 16))() & 1) == 0 && (!CCDataResourceStatusIsNotDiscoverable([v3 resourceStatus]) || (*(a1 + 48)))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_autoreleasePoolPop(v4);

  return 0;
}

uint64_t __129__CCDataResource_enumerateDataResources_setIdentifier_descriptors_container_includingTombstoned_startAfterSet_sorted_usingBlock___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 resourceDirectoryURL];
  v6 = [v5 path];
  v7 = [v4 resourceDirectoryURL];

  v8 = [v7 path];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)tombstoneDate:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v1, v2, "Could not retrieve tombstone xattr for resource: %@, error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)markTombstoned:error:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v1, v2, "Could not set tombstone xattr for resource: %@, error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearTombstoneStatus:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v1, v2, "Could not remove tombstone xattr for resource: %@, error: %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)clearTombstoneStatus:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B6DB2000, a2, OS_LOG_TYPE_DEBUG, "Resource: %@ has no existing tombstone date, not clearing", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end