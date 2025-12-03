@interface BMPaths
+ (BOOL)getServiceDomain:(unint64_t *)domain subpath:(id *)subpath forPath:(id)path;
+ (BOOL)isTestPathOverridden;
+ (BOOL)pathIsManaged:(id)managed domain:(unint64_t *)domain;
+ (NSString)basePathForTesting;
+ (NSString)syncDirectory;
+ (id)_biomeDirectoryForDomain:(unint64_t)domain options:(unint64_t)options;
+ (id)_biomeSystemDataDirectory;
+ (id)_biomeUserDataDirectory:(unint64_t)directory;
+ (id)_pathForLibraryStreamWithDomain:(unint64_t)domain;
+ (id)_pathForTesting;
+ (id)biomeTemporaryDirectoryForContainer:(id)container;
+ (id)biomeTemporaryDirectoryForDomain:(unint64_t)domain;
+ (id)computeDirectoryForDomain:(unint64_t)domain;
+ (id)dataResourcePathComponentFromResource:(id)resource;
+ (id)databaseDirectoryForDomain:(unint64_t)domain;
+ (id)pathComponentForStreamType:(unint64_t)type;
+ (id)pathForDatabase:(id)database;
+ (id)pathForResource:(id)resource inContainer:(id)container;
+ (id)pathForSetResource:(id)resource inContainer:(id)container;
+ (id)pathForSharedSyncWithAccount:(id)account domain:(unint64_t)domain;
+ (id)pathForSharedSyncWithAccount:(id)account streamType:(unint64_t)type domain:(unint64_t)domain;
+ (id)pathForStreamIdentifier:(id)identifier streamType:(unint64_t)type;
+ (id)pathForStreamType:(unint64_t)type domain:(unint64_t)domain;
+ (id)resourceFromDataResourcePath:(id)path inContainer:(id)container;
+ (id)setsDirectoryInContainer:(id)container;
+ (id)sharedSyncDirectoryForDomain:(unint64_t)domain;
+ (void)setBasePathForTestingWithPath:(id)path;
+ (void)unsetBasePathForTesting;
@end

@implementation BMPaths

+ (id)_pathForTesting
{
  basePathForTesting = [self basePathForTesting];
  v3 = basePathForTesting;
  if (basePathForTesting)
  {
    v4 = basePathForTesting;
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
  _pathForTesting = [self _pathForTesting];
  v4 = _pathForTesting;
  if (_pathForTesting)
  {
    v5 = _pathForTesting;
  }

  else
  {
    _systemRoot = [self _systemRoot];
    v5 = [_systemRoot stringByAppendingPathComponent:@"/private/var/db/biome"];
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

+ (id)biomeTemporaryDirectoryForContainer:(id)container
{
  v3 = [container url];
  path = [v3 path];
  v5 = +[BMStoreDirectory tmp];
  v6 = [path stringByAppendingPathComponent:v5];

  return v6;
}

+ (id)biomeTemporaryDirectoryForDomain:(unint64_t)domain
{
  v3 = [self biomeDirectoryForDomain:domain];
  v4 = +[BMStoreDirectory tmp];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)_biomeDirectoryForDomain:(unint64_t)domain options:(unint64_t)options
{
  if (domain == 1)
  {
    _biomeSystemDataDirectory = [self _biomeSystemDataDirectory];
  }

  else if (domain)
  {
    _biomeSystemDataDirectory = 0;
  }

  else
  {
    _biomeSystemDataDirectory = [self _biomeUserDataDirectory:options];
  }

  return _biomeSystemDataDirectory;
}

+ (id)_biomeUserDataDirectory:(unint64_t)directory
{
  _pathForTesting = [self _pathForTesting];
  v5 = _pathForTesting;
  if (_pathForTesting)
  {
    v6 = _pathForTesting;
  }

  else
  {
    _userHome = [self _userHome];
    v6 = [_userHome stringByAppendingPathComponent:@"/Library/Biome"];
  }

  return v6;
}

+ (NSString)syncDirectory
{
  v2 = [self biomeDirectoryForDomain:0];
  v3 = +[BMStoreDirectory sync];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)pathComponentForStreamType:(unint64_t)type
{
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
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
    if (type == 2)
    {
      v3 = +[BMStoreDirectory restricted];
      goto LABEL_19;
    }

    if (type != 3)
    {
      if (type == 4)
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

+ (id)pathForSharedSyncWithAccount:(id)account domain:(unint64_t)domain
{
  identifier = [account identifier];
  if ((BMIdentifierIsPathSafe(identifier) & 1) == 0)
  {
    [BMPaths pathForSharedSyncWithAccount:a2 domain:self];
  }

  v8 = [BMPaths sharedSyncDirectoryForDomain:domain];
  v9 = [v8 stringByAppendingPathComponent:identifier];

  return v9;
}

+ (id)pathForSharedSyncWithAccount:(id)account streamType:(unint64_t)type domain:(unint64_t)domain
{
  v6 = [self pathForSharedSyncWithAccount:account domain:domain];
  v7 = +[BMStoreDirectory streams];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [BMPaths pathComponentForStreamType:type];
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

+ (id)sharedSyncDirectoryForDomain:(unint64_t)domain
{
  v3 = [BMPaths biomeDirectoryForDomain:domain];
  v4 = +[BMStoreDirectory sharedSync];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)pathForStreamType:(unint64_t)type domain:(unint64_t)domain
{
  v5 = [BMPaths biomeDirectoryForDomain:domain];
  v6 = +[BMStoreDirectory streams];
  v7 = [v5 stringByAppendingPathComponent:v6];

  v8 = [BMPaths pathComponentForStreamType:type];
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

+ (id)pathForStreamIdentifier:(id)identifier streamType:(unint64_t)type
{
  identifierCopy = identifier;
  if (BMIdentifierIsPathSafe(identifierCopy))
  {
    v7 = [self pathForStreamType:type domain:{BMServiceDomainForStream(type, identifierCopy)}];
    v8 = [v7 stringByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)getServiceDomain:(unint64_t *)domain subpath:(id *)subpath forPath:(id)path
{
  pathCopy = path;
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
      if ([pathCopy hasPrefix:v11])
      {
        v13 = [pathCopy length];
        if (v13 == [v11 length] || objc_msgSend(pathCopy, "characterAtIndex:", objc_msgSend(v11, "length")) == 47)
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

  if (domain)
  {
    *domain = v8;
  }

  if (subpath)
  {
    v15 = [pathCopy length];
    v16 = [v11 length];
    if (v15 >= v16 + 1)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v15;
    }

    *subpath = [pathCopy substringFromIndex:v17];
  }

  v14 = 1;
LABEL_18:

  return v14;
}

+ (BOOL)pathIsManaged:(id)managed domain:(unint64_t *)domain
{
  managedCopy = managed;
  if ([self getServiceDomain:domain subpath:0 forPath:managedCopy])
  {
    v7 = +[BMPaths _pathForTesting];
    v8 = !v7 || ([managedCopy hasPrefix:v7] & 1) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)computeDirectoryForDomain:(unint64_t)domain
{
  v3 = [self biomeDirectoryForDomain:domain];
  v4 = +[BMStoreDirectory compute];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)databaseDirectoryForDomain:(unint64_t)domain
{
  v3 = [self biomeDirectoryForDomain:domain];
  v4 = +[BMStoreDirectory databases];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (id)setsDirectoryInContainer:(id)container
{
  v3 = [container url];
  path = [v3 path];
  v5 = +[BMStoreDirectory sets];
  v6 = [path stringByAppendingPathComponent:v5];

  return v6;
}

+ (id)pathForDatabase:(id)database
{
  databaseCopy = database;
  v5 = [[BMResourceSpecifier alloc] initWithType:3 name:databaseCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [self databaseDirectoryForDomain:BMServiceDomainForResource(v5)];
    v8 = [v7 stringByAppendingPathComponent:databaseCopy];
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

+ (id)pathForSetResource:(id)resource inContainer:(id)container
{
  resourceCopy = resource;
  v7 = [self setsDirectoryInContainer:container];
  name = [resourceCopy name];
  v9 = [name isEqual:@"BMSetsResource"];

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v11 = [self dataResourcePathComponentFromResource:resourceCopy];
    if (v11)
    {
      v12 = [v7 stringByAppendingPathComponent:v11];

      v7 = v12;
    }

    v10 = v7;
  }

  return v10;
}

+ (id)pathForResource:(id)resource inContainer:(id)container
{
  resourceCopy = resource;
  containerCopy = container;
  type = [resourceCopy type];
  v9 = 0;
  if (type > 3)
  {
    if (type == 4)
    {
      syncDirectory = [self pathForSetResource:resourceCopy inContainer:containerCopy];
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_13;
      }

      name = [resourceCopy name];
      v13 = [name isEqual:@"BMSyncResource"];

      if (v13)
      {
        syncDirectory = [self syncDirectory];
      }

      else
      {
        name2 = [resourceCopy name];
        v17 = [name2 isEqual:@"BMSharedSyncResource"];

        if (!v17)
        {
          name3 = [resourceCopy name];
          v19 = [name3 isEqual:@"BMSetsMergeableDeltasResource"];

          if (v19)
          {
            v20 = [self biomeTemporaryDirectoryForContainer:containerCopy];
            v21 = +[BMStoreDirectory setsMergeableDeltas];
            v9 = [v20 stringByAppendingPathComponent:v21];
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_13;
        }

        syncDirectory = [self sharedSyncDirectoryForDomain:0];
      }
    }

    v9 = syncDirectory;
    goto LABEL_13;
  }

  if (type == 1)
  {
    name4 = [resourceCopy name];
    v11 = [self pathForStreamIdentifier:name4 streamType:2];
  }

  else
  {
    if (type != 3)
    {
      goto LABEL_13;
    }

    name4 = [resourceCopy name];
    v11 = [self pathForDatabase:name4];
  }

  v9 = v11;

LABEL_13:

  return v9;
}

+ (void)setBasePathForTestingWithPath:(id)path
{
  v8 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (os_variant_allows_internal_security_policies())
  {
    if (pathCopy)
    {
      bzero(v7, 0x400uLL);
      realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], v7);
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

+ (id)_pathForLibraryStreamWithDomain:(unint64_t)domain
{
  v3 = [BMPaths _biomeDirectoryForDomain:domain options:0];
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

+ (id)dataResourcePathComponentFromResource:(id)resource
{
  v26 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  name = [resourceCopy name];
  v5 = [@"Default" stringByAppendingPathComponent:name];

  descriptors = [resourceCopy descriptors];
  v24 = 0;
  v7 = [BMResourceDescriptor sortedDescriptorsDetectingDuplicates:descriptors error:&v24];
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

          encodedString = [*(*(&v20 + 1) + 8 * v15) encodedString];
          v5 = [v16 stringByAppendingPathComponent:encodedString];

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

+ (id)resourceFromDataResourcePath:(id)path inContainer:(id)container
{
  v46 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  containerCopy = container;
  v7 = objc_opt_new();
  if (pathCopy)
  {
    v34 = containerCopy;
    v8 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    pathComponents = [pathCopy pathComponents];
    reverseObjectEnumerator = [pathComponents reverseObjectEnumerator];

    v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
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
          v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    reverseObjectEnumerator2 = [v8 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator2 allObjects];
    v18 = [allObjects mutableCopy];

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

      containerCopy = v34;
      v31 = [BMResourceSpecifier resourceFromContainer:v34 withType:4 name:v21 descriptors:v7];
    }

    else
    {
      v31 = 0;
      containerCopy = v34;
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