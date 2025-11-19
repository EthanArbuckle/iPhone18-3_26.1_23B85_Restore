@interface BMPaths
+ (BOOL)getServiceDomain:(unint64_t *)a3 subpath:(id *)a4 forPath:(id)a5;
+ (BOOL)isTestPathOverridden;
+ (BOOL)pathIsManaged:(id)a3 domain:(unint64_t *)a4;
+ (NSString)basePathForTesting;
+ (NSString)syncDirectory;
+ (id)_biomeDirectoryForDomain:(unint64_t)a3 options:(unint64_t)a4;
+ (id)_biomeSystemDataDirectory;
+ (id)_biomeUserDataDirectory:(unint64_t)a3;
+ (id)_pathForLibraryStreamWithDomain:(unint64_t)a3;
+ (id)_pathForTesting;
+ (id)biomeTemporaryDirectoryForContainer:(id)a3;
+ (id)biomeTemporaryDirectoryForDomain:(unint64_t)a3;
+ (id)computeDirectoryForDomain:(unint64_t)a3;
+ (id)dataResourcePathComponentFromResource:(id)a3;
+ (id)databaseDirectoryForDomain:(unint64_t)a3;
+ (id)pathComponentForStreamType:(unint64_t)a3;
+ (id)pathForDatabase:(id)a3;
+ (id)pathForResource:(id)a3 inContainer:(id)a4;
+ (id)pathForSetResource:(id)a3 inContainer:(id)a4;
+ (id)pathForSharedSyncWithAccount:(id)a3 domain:(unint64_t)a4;
+ (id)pathForSharedSyncWithAccount:(id)a3 streamType:(unint64_t)a4 domain:(unint64_t)a5;
+ (id)pathForStreamIdentifier:(id)a3 streamType:(unint64_t)a4;
+ (id)pathForStreamType:(unint64_t)a3 domain:(unint64_t)a4;
+ (id)resourceFromDataResourcePath:(id)a3 inContainer:(id)a4;
+ (id)setsDirectoryInContainer:(id)a3;
+ (id)sharedSyncDirectoryForDomain:(unint64_t)a3;
+ (void)setBasePathForTestingWithPath:(id)a3;
+ (void)unsetBasePathForTesting;
@end

@implementation BMPaths

+ (id)_pathForTesting
{
  v2 = [a1 basePathForTesting];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (NSString)basePathForTesting
{
  if (os_variant_allows_internal_security_policies())
  {
    v2 = _bmBasePathForTesting;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_biomeSystemDataDirectory
{
  v3 = [a1 _pathForTesting];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a1 _systemRoot];
    v5 = [v6 stringByAppendingPathComponent:@"/private/var/db/biome"];
  }

  return v5;
}

+ (BOOL)isTestPathOverridden
{
  result = os_variant_allows_internal_security_policies();
  if (!_bmBasePathForTesting)
  {
    return 0;
  }

  return result;
}

+ (id)biomeTemporaryDirectoryForContainer:(id)a3
{
  v3 = [a3 url];
  v4 = [v3 path];
  v5 = +[BMStoreDirectory tmp];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

+ (id)biomeTemporaryDirectoryForDomain:(unint64_t)a3
{
  v3 = [a1 biomeDirectoryForDomain:a3];
  v4 = +[BMStoreDirectory tmp];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)_biomeDirectoryForDomain:(unint64_t)a3 options:(unint64_t)a4
{
  if (a3 == 1)
  {
    v4 = [a1 _biomeSystemDataDirectory];
  }

  else if (a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 _biomeUserDataDirectory:a4];
  }

  return v4;
}

+ (id)_biomeUserDataDirectory:(unint64_t)a3
{
  v4 = [a1 _pathForTesting];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [a1 _userHome];
    v6 = [v7 stringByAppendingPathComponent:@"/Library/Biome"];
  }

  return v6;
}

+ (NSString)syncDirectory
{
  v2 = [a1 biomeDirectoryForDomain:0];
  v3 = +[BMStoreDirectory sync];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)pathComponentForStreamType:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = +[BMStoreDirectory public];
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v4 = __biome_log_for_category(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[BMPaths pathComponentForStreamType:];
    }
  }

  else
  {
    if (a3 == 2)
    {
      v3 = +[BMStoreDirectory restricted];
      goto LABEL_19;
    }

    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v3 = +[BMStoreDirectory private];
        goto LABEL_19;
      }

LABEL_15:
      v5 = __biome_log_for_category(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[BMPaths pathComponentForStreamType:];
      }

      goto LABEL_18;
    }

    v4 = __biome_log_for_category(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[BMPaths pathComponentForStreamType:];
    }
  }

LABEL_18:
  v3 = 0;
LABEL_19:

  return v3;
}

+ (id)pathForSharedSyncWithAccount:(id)a3 domain:(unint64_t)a4
{
  v7 = [a3 identifier];
  if ((BMIdentifierIsPathSafe(v7) & 1) == 0)
  {
    [BMPaths pathForSharedSyncWithAccount:a2 domain:a1];
  }

  v8 = [BMPaths sharedSyncDirectoryForDomain:a4];
  v9 = [v8 stringByAppendingPathComponent:v7];

  return v9;
}

+ (id)pathForSharedSyncWithAccount:(id)a3 streamType:(unint64_t)a4 domain:(unint64_t)a5
{
  v6 = [a1 pathForSharedSyncWithAccount:a3 domain:a5];
  v7 = +[BMStoreDirectory streams];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [BMPaths pathComponentForStreamType:a4];
  if (v9)
  {
    v10 = [v8 stringByAppendingPathComponent:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)sharedSyncDirectoryForDomain:(unint64_t)a3
{
  v3 = [BMPaths biomeDirectoryForDomain:a3];
  v4 = +[BMStoreDirectory sharedSync];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)pathForStreamType:(unint64_t)a3 domain:(unint64_t)a4
{
  v5 = [BMPaths biomeDirectoryForDomain:a4];
  v6 = +[BMStoreDirectory streams];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = [BMPaths pathComponentForStreamType:a3];
  if (v8)
  {
    v9 = [v7 stringByAppendingPathComponent:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)pathForStreamIdentifier:(id)a3 streamType:(unint64_t)a4
{
  v6 = a3;
  if (BMIdentifierIsPathSafe(v6))
  {
    v7 = [a1 pathForStreamType:a4 domain:{BMServiceDomainForStream(a4, v6)}];
    v8 = [v7 stringByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)getServiceDomain:(unint64_t *)a3 subpath:(id *)a4 forPath:(id)a5
{
  v7 = a5;
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    v11 = [BMPaths _biomeDirectoryForDomain:v8 options:2];
    if ([v11 hasSuffix:@"/"])
    {
      v12 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 1}];

      v11 = v12;
    }

    if ([v11 length])
    {
      if ([v7 hasPrefix:v11])
      {
        v13 = [v7 length];
        if (v13 == [v11 length] || objc_msgSend(v7, "characterAtIndex:", objc_msgSend(v11, "length")) == 47)
        {
          break;
        }
      }
    }

    v9 = 0;
    v14 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (a3)
  {
    *a3 = v8;
  }

  if (a4)
  {
    v15 = [v7 length];
    v16 = [v11 length];
    if (v15 >= v16 + 1)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v15;
    }

    *a4 = [v7 substringFromIndex:v17];
  }

  v14 = 1;
LABEL_18:

  return v14;
}

+ (BOOL)pathIsManaged:(id)a3 domain:(unint64_t *)a4
{
  v6 = a3;
  if ([a1 getServiceDomain:a4 subpath:0 forPath:v6])
  {
    v7 = +[BMPaths _pathForTesting];
    v8 = !v7 || ([v6 hasPrefix:v7] & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)computeDirectoryForDomain:(unint64_t)a3
{
  v3 = [a1 biomeDirectoryForDomain:a3];
  v4 = +[BMStoreDirectory compute];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)databaseDirectoryForDomain:(unint64_t)a3
{
  v3 = [a1 biomeDirectoryForDomain:a3];
  v4 = +[BMStoreDirectory databases];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)setsDirectoryInContainer:(id)a3
{
  v3 = [a3 url];
  v4 = [v3 path];
  v5 = +[BMStoreDirectory sets];
  v6 = [v4 stringByAppendingPathComponent:v5];

  return v6;
}

+ (id)pathForDatabase:(id)a3
{
  v4 = a3;
  v5 = [[BMResourceSpecifier alloc] initWithType:3 name:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [a1 databaseDirectoryForDomain:BMServiceDomainForResource(v5)];
    v8 = [v7 stringByAppendingPathComponent:v4];
  }

  else
  {
    v9 = __biome_log_for_category(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[BMPaths pathForDatabase:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)pathForSetResource:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = [a1 setsDirectoryInContainer:a4];
  v8 = [v6 name];
  v9 = [v8 isEqual:@"BMSetsResource"];

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v11 = [a1 dataResourcePathComponentFromResource:v6];
    if (v11)
    {
      v12 = [v7 stringByAppendingPathComponent:v11];

      v7 = v12;
    }

    v10 = v7;
  }

  return v10;
}

+ (id)pathForResource:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 type];
  v9 = 0;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v14 = [a1 pathForSetResource:v6 inContainer:v7];
    }

    else
    {
      if (v8 != 5)
      {
        goto LABEL_13;
      }

      v12 = [v6 name];
      v13 = [v12 isEqual:@"BMSyncResource"];

      if (v13)
      {
        v14 = [a1 syncDirectory];
      }

      else
      {
        v16 = [v6 name];
        v17 = [v16 isEqual:@"BMSharedSyncResource"];

        if (!v17)
        {
          v18 = [v6 name];
          v19 = [v18 isEqual:@"BMSetsMergeableDeltasResource"];

          if (v19)
          {
            v20 = [a1 biomeTemporaryDirectoryForContainer:v7];
            v21 = +[BMStoreDirectory setsMergeableDeltas];
            v9 = [v20 stringByAppendingPathComponent:v21];
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_13;
        }

        v14 = [a1 sharedSyncDirectoryForDomain:0];
      }
    }

    v9 = v14;
    goto LABEL_13;
  }

  if (v8 == 1)
  {
    v10 = [v6 name];
    v11 = [a1 pathForStreamIdentifier:v10 streamType:2];
  }

  else
  {
    if (v8 != 3)
    {
      goto LABEL_13;
    }

    v10 = [v6 name];
    v11 = [a1 pathForDatabase:v10];
  }

  v9 = v11;

LABEL_13:

  return v9;
}

+ (void)setBasePathForTestingWithPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (os_variant_allows_internal_security_policies())
  {
    if (v3)
    {
      bzero(v7, 0x400uLL);
      realpath_DARWIN_EXTSN([v3 fileSystemRepresentation], v7);
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      v5 = _bmBasePathForTesting;
      _bmBasePathForTesting = v4;
    }

    else
    {
      v5 = _bmBasePathForTesting;
      _bmBasePathForTesting = 0;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[BMPaths(TestingSupport_Project) setBasePathForTestingWithPath:];
  }

  v6 = *MEMORY[0x1E69E9840];
}

+ (void)unsetBasePathForTesting
{
  v2 = _bmBasePathForTesting;
  _bmBasePathForTesting = 0;
}

+ (id)_pathForLibraryStreamWithDomain:(unint64_t)a3
{
  v3 = [BMPaths _biomeDirectoryForDomain:a3 options:0];
  if (v3)
  {
    v4 = +[BMStoreDirectory streams];
    v5 = [v3 stringByAppendingPathComponent:v4];

    v6 = [BMPaths pathComponentForStreamType:2];
    v7 = [v5 stringByAppendingPathComponent:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)dataResourcePathComponentFromResource:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 name];
  v5 = [@"Default" stringByAppendingPathComponent:v4];

  v6 = [v3 descriptors];
  v24 = 0;
  v7 = [BMResourceDescriptor sortedDescriptorsDetectingDuplicates:v6 error:&v24];
  v8 = v24;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        v16 = v5;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = [*(*(&v20 + 1) + 8 * v15) encodedString];
          v5 = [v16 stringByAppendingPathComponent:v17];

          ++v15;
          v16 = v5;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    v5 = v5;
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)resourceFromDataResourcePath:(id)a3 inContainer:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if (v5)
  {
    v34 = v6;
    v8 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [v5 pathComponents];
    v10 = [v9 reverseObjectEnumerator];

    v11 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        if (([v15 isEqualToString:{@"/", v34}] & 1) == 0)
        {
          [v8 addObject:v15];
        }

        if ([v15 isEqualToString:@"Default"])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v16 = [v8 reverseObjectEnumerator];
    v17 = [v16 allObjects];
    v18 = [v17 mutableCopy];

    if ([v18 count] && (objc_msgSend(v18, "objectAtIndex:", 0), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"Default"), v19, v20) && (objc_msgSend(v18, "removeObjectAtIndex:", 0), objc_msgSend(v18, "count")))
    {
      v21 = [v18 objectAtIndex:0];
      [v18 removeObjectAtIndex:0];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = v18;
      v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v37;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v37 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v36 + 1) + 8 * i);
            v28 = [BMResourceDescriptor alloc];
            v35 = 0;
            v29 = [(BMResourceDescriptor *)v28 initWithEncodedString:v27 error:&v35];
            if (v29)
            {
              v30 = v35 == 0;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
              [v7 addObject:v29];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v24);
      }

      v6 = v34;
      v31 = [BMResourceSpecifier resourceFromContainer:v34 withType:4 name:v21 descriptors:v7];
    }

    else
    {
      v31 = 0;
      v6 = v34;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (void)pathComponentForStreamType:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)pathForSharedSyncWithAccount:(uint64_t)a1 domain:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMPaths.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"BMIdentifierIsPathSafe(identifier)"}];
}

+ (void)pathForDatabase:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end