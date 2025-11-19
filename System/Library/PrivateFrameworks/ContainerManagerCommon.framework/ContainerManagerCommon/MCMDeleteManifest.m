@interface MCMDeleteManifest
+ (id)_deleteManifestsForManagedPath:(id)a3 userIdentityCache:(id)a4;
+ (id)_deleteManifestsFromFileURLs:(id)a3 userIdentityCache:(id)a4;
+ (id)_deleteManifestsFromURL:(id)a3 userIdentityCache:(id)a4 error:(id *)a5;
+ (id)_materializeContainerIdentityFromManifestPlist:(id)a3 userIdentityCache:(id)a4 error:(id *)a5;
+ (id)_materializeContainerIdentityFromManifestPlistV1:(id)a3 userIdentityCache:(id)a4 error:(id *)a5;
+ (id)deleteManifestsForGlobalContainersWithUserIdentityCache:(id)a3;
+ (id)deleteManifestsForUserContainersForPOSIXUser:(id)a3 userIdentityCache:(id)a4;
+ (id)deleteManifestsForUserContainersWithUserIdentityCache:(id)a3;
+ (id)managedPathForGlobalContainers;
+ (id)managedPathForUserContainersWithUserIdentityCache:(id)a3;
+ (id)managedPathForUserContainersWithUserIdentityCache:(id)a3 forPOSIXUser:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeleteManifest:(id)a3;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (MCMDeleteManifest)initWithConcreteContainerIdentity:(id)a3 userIdentityCache:(id)a4;
- (MCMUserIdentityCache)userIdentityCache;
- (NSString)description;
- (NSURL)readURL;
- (NSURL)writeURL;
- (id)_stableFileNameForDeleteOperationPlistWithContainerIdentity:(id)a3;
- (id)_urlForDeleteManifestWithContainerIdentity:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deleteManifestAfterRemovingUsingLibraryRepairForUser:(id)a3 error:(id *)a4;
- (id)deleteManifestAfterWritingUsingLibraryRepairForUser:(id)a3 error:(id *)a4;
- (id)fullDescription;
- (id)initFromURL:(id)a3 userIdentityCache:(id)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)setReadURL:(id)a3;
@end

@implementation MCMDeleteManifest

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMConcreteContainerIdentity)concreteContainerIdentity
{
  result = self->_concreteContainerIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setReadURL:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_readURL = &self->_readURL;

  objc_storeStrong(p_readURL, a3);
}

- (NSURL)readURL
{
  result = self->_readURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)writeURL
{
  result = self->_writeURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_stableFileNameForDeleteOperationPlistWithContainerIdentity:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 containerConfig];
  v6 = [v5 containerClass];
  v7 = [v3 identifier];
  v8 = [v3 transient];
  v9 = [v3 userIdentity];
  v10 = [v9 identifier];
  v11 = [v3 uuid];
  v12 = [v4 stringWithFormat:@"%llu-%@-%d-%@-%@", v6, v7, v8, v10, v11];

  *md = 0u;
  v25 = 0u;
  v13 = [v12 UTF8String];
  v14 = strlen(v13);
  CC_SHA256(v13, v14, md);
  v15 = 0;
  v23 = 0;
  v16 = v22 + 1;
  memset(v22, 0, sizeof(v22));
  do
  {
    v17 = md[v15];
    *(v16 - 1) = _stableFileNameForDeleteOperationPlistWithContainerIdentity__hexLookup[v17 >> 4];
    *v16 = _stableFileNameForDeleteOperationPlistWithContainerIdentity__hexLookup[v17 & 0xF];
    v16 += 2;
    ++v15;
  }

  while (v15 != 32);
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v22];
  v19 = [v18 stringByAppendingPathExtension:@"plist"];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_urlForDeleteManifestWithContainerIdentity:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMDeleteManifest *)self _stableFileNameForDeleteOperationPlistWithContainerIdentity:v4];
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 managedPathRegistry];
  v8 = [v7 containermanagerDeleteOperations];

  v9 = containermanager_copy_global_configuration();
  v10 = [v4 containerConfig];
  v11 = [v9 isGlobalContainerClass:{objc_msgSend(v10, "containerClass")}];

  if ((v11 & 1) == 0)
  {
    v12 = [(MCMDeleteManifest *)self userIdentityCache];
    v13 = [v4 userIdentity];
    v14 = [v13 posixUser];
    v15 = [v12 userIdentityForPersonalPersonaWithPOSIXUser:v14];

    v16 = [(MCMDeleteManifest *)self userIdentityCache];
    v17 = [v16 managedUserPathRegistryForUserIdentity:v15];

    v18 = [v17 containermanagerUserDeleteOperations];

    v8 = v18;
  }

  v19 = [v8 url];
  v20 = [v19 URLByAppendingPathComponent:v5 isDirectory:0];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 32), self->_userIdentityCache);
    objc_storeStrong(v5 + 2, self->_readURL);
    objc_storeStrong(v5 + 1, self->_writeURL);
    objc_storeStrong(v5 + 3, self->_concreteContainerIdentity);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self == v4;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMDeleteManifest *)self isEqualToDeleteManifest:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToDeleteManifest:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(MCMDeleteManifest *)self readURL];
    if (v6)
    {
      v3 = [v5 readURL];
      if (!v3)
      {
        v7 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v8 = [(MCMDeleteManifest *)self readURL];
    if (v8)
    {

      if (v6)
      {
      }

LABEL_12:
      v6 = [(MCMDeleteManifest *)self concreteContainerIdentity];
      v10 = [v5 concreteContainerIdentity];
      if ([v6 isEqualToContainerIdentity:v10])
      {
        v11 = [(MCMDeleteManifest *)self readURL];
        v12 = [v5 readURL];
        if ([v11 isEqual:v12])
        {
          v13 = [(MCMDeleteManifest *)self writeURL];
          v14 = [v5 writeURL];
          v7 = [v13 isEqual:v14];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_19;
    }

    v9 = [v5 readURL];

    if (v6)
    {
    }

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (unint64_t)hash
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v4 = [v3 hash];
  v5 = [(MCMDeleteManifest *)self readURL];
  v6 = [v5 hash];
  v7 = [(MCMDeleteManifest *)self writeURL];
  v8 = [v7 hash];

  v9 = *MEMORY[0x1E69E9840];
  return v6 ^ v4 ^ v8;
}

- (id)fullDescription
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MCMDeleteManifest *)self readURL];
  v7 = [(MCMDeleteManifest *)self writeURL];
  v8 = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v9 = [v3 stringWithFormat:@"<%@: %p readURL = [%@], writeURL = [%@], concreteContainerIdentity = %@>", v5, self, v6, v7, v8];;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MCMDeleteManifest *)self readURL];
  v5 = [(MCMDeleteManifest *)self writeURL];
  v6 = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v7 = [v3 stringWithFormat:@"(from:[%@], to:[%@], %@)", v4, v5, v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)deleteManifestAfterRemovingUsingLibraryRepairForUser:(id)a3 error:(id *)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMDeleteManifest *)self readURL];
  if (!v7)
  {
    v12 = self;
    v10 = 0;
    v11 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v20[0] = 0;
  v8 = [v6 fixAndRetryIfPermissionsErrorWithURL:v7 error:v20 duringBlock:&__block_literal_global_7751];
  v9 = v20[0];
  v10 = v9;
  if (v8)
  {
    goto LABEL_3;
  }

  v13 = [v9 domain];
  if ([v13 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v14 = [v10 code];

    if (v14 == 2)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v15 = [MCMError alloc];
  v16 = [v7 path];
  v11 = -[MCMError initWithErrorType:category:path:POSIXerrno:](v15, "initWithErrorType:category:path:POSIXerrno:", 122, 1, v16, [v10 code]);

LABEL_11:
  v12 = [(MCMDeleteManifest *)self copy];
  [(MCMDeleteManifest *)v12 setReadURL:0];
  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!v12)
  {
    v17 = v11;
    *a4 = v11;
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

uint64_t __80__MCMDeleteManifest_deleteManifestAfterRemovingUsingLibraryRepairForUser_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[MCMFileManager defaultManager];
  v6 = [v5 removeItemAtURL:v4 error:a3];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)deleteManifestAfterWritingUsingLibraryRepairForUser:(id)a3 error:(id *)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v8 = [v7 plist];

  v35[0] = @"version";
  v35[1] = @"identity";
  v36[0] = &unk_1F5A76858;
  v36[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v10 = +[MCMFileManager defaultManager];
  v11 = [(MCMDeleteManifest *)self writeURL];
  v12 = [v10 dataWritingOptionsForFileAtURL:v11];

  v13 = [(MCMDeleteManifest *)self writeURL];
  v28 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__MCMDeleteManifest_deleteManifestAfterWritingUsingLibraryRepairForUser_error___block_invoke;
  v25[3] = &unk_1E86B0690;
  v14 = v9;
  v26 = v14;
  v27 = v12;
  LOBYTE(v11) = [v6 fixAndRetryIfPermissionsErrorWithURL:v13 error:&v28 duringBlock:v25];

  v15 = v28;
  if (v11)
  {
    v16 = [(MCMDeleteManifest *)self copy];
    v17 = [(MCMDeleteManifest *)self writeURL];
    [v16 setReadURL:v17];
    v18 = 0;
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = [(MCMDeleteManifest *)self writeURL];
      *buf = 138412802;
      v30 = v15;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to write delete manifest; error = %@, url = [%@], manifest = %@", buf, 0x20u);
    }

    v20 = [MCMError alloc];
    v17 = [(MCMDeleteManifest *)self writeURL];
    v18 = [(MCMError *)v20 initWithNSError:v15 url:v17 defaultErrorType:125];
    v16 = 0;
  }

  if (a4 && !v16)
  {
    v21 = v18;
    *a4 = v18;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t __79__MCMDeleteManifest_deleteManifestAfterWritingUsingLibraryRepairForUser_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 MCM_writeToURL:a2 withOptions:v5 error:a3];
}

- (id)initFromURL:(id)a3 userIdentityCache:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v23 = 0;
  v11 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:v9 options:0 error:&v23];
  v12 = v23;
  if (v11)
  {
    v22 = 0;
    v13 = [MCMDeleteManifest _materializeContainerIdentityFromManifestPlist:v11 userIdentityCache:v10 error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = [(MCMDeleteManifest *)self initWithConcreteContainerIdentity:v13 userIdentityCache:v10];
      objc_storeStrong(&v15->_readURL, a3);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v21 = [v9 path];
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v21;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to parse delete manifest; error = %@, path = [%@]", buf, 0x16u);
    }

    v14 = [[MCMError alloc] initWithNSError:v12 url:v9 defaultErrorType:123];
  }

  if (a5)
  {
    v17 = v14;
    v15 = 0;
    v13 = 0;
    *a5 = v14;
  }

  else
  {
    v15 = 0;
    v13 = 0;
  }

LABEL_10:
  v18 = v15;

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (MCMDeleteManifest)initWithConcreteContainerIdentity:(id)a3 userIdentityCache:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = MCMDeleteManifest;
  v9 = [(MCMDeleteManifest *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_concreteContainerIdentity, a3);
    objc_storeStrong(&v10->_userIdentityCache, a4);
    readURL = v10->_readURL;
    v10->_readURL = 0;

    writeURL = v10->_writeURL;
    v10->_writeURL = 0;

    v13 = [(MCMDeleteManifest *)v10 _urlForDeleteManifestWithContainerIdentity:v7];
    v14 = v10->_writeURL;
    v10->_writeURL = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)_deleteManifestsForManagedPath:(id)a3 userIdentityCache:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 || ([v6 url], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1, "_deleteManifestsFromURL:userIdentityCache:error:", v8, v7, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_deleteManifestsFromFileURLs:(id)a3 userIdentityCache:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25 = a4;
  v22 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v26)
  {
    v24 = *v34;
    do
    {
      v6 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        v8 = [MCMDeleteManifest alloc];
        v27 = 0;
        v9 = [(MCMDeleteManifest *)v8 initFromURL:v7 userIdentityCache:v25 error:&v27];
        v10 = v27;
        v11 = v10;
        if (v9)
        {
          v12 = [v9 concreteContainerIdentity];
          v13 = containermanager_copy_global_configuration();
          v14 = [v12 containerConfig];
          v15 = [v14 containerClass];
          v16 = [v12 userIdentity];
          v17 = [v16 posixUser];
          LODWORD(v15) = [v13 dispositionForContainerClass:v15 forUser:v17];

          if (v15 == 1)
          {
            v18 = container_log_handle_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v29 = v7;
              v30 = 2112;
              v31 = v9;
              _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Recovering from failed delete using [%@]; queuing deletion of %@", buf, 0x16u);
            }

            [v22 addObject:v9];
          }
        }

        else
        {
          if ([v10 type] == 74)
          {
            goto LABEL_15;
          }

          v12 = container_log_handle_for_category();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v29 = v11;
            v30 = 2112;
            v31 = v7;
            _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to materialize delete manifest; error = %@, url = [%@]", buf, 0x16u);
          }
        }

LABEL_15:
        ++v6;
      }

      while (v26 != v6);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v26);
  }

  v19 = [v22 copy];
  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_deleteManifestsFromURL:(id)a3 userIdentityCache:(id)a4 error:(id *)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[MCMFileManager defaultManager];
  v22 = 0;
  v11 = [v10 urlsForItemsInDirectoryAtURL:v8 error:&v22];
  v12 = v22;

  if (v11)
  {
    v13 = [a1 _deleteManifestsFromFileURLs:v11 userIdentityCache:v9];
    goto LABEL_3;
  }

  v15 = [v12 domain];
  if ([v15 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v16 = [v12 code];

    if (v16 == 2)
    {
      v13 = 0;
LABEL_3:
      v14 = 0;
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v17 = container_log_handle_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = [v8 path];
    *buf = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = v21;
    _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Failed to get items at delete operations URL; error = %@, path = [%@]", buf, 0x16u);
  }

  v14 = [[MCMError alloc] initWithNSError:v12 url:v8 defaultErrorType:146];
  v13 = 0;
  if (a5)
  {
LABEL_12:
    if (!v13)
    {
      v18 = v14;
      *a5 = v14;
    }
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_materializeContainerIdentityFromManifestPlistV1:(id)a3 userIdentityCache:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 1;
  v7 = a4;
  v8 = [a3 objectForKeyedSubscript:@"identity"];
  v9 = [MCMConcreteContainerIdentity concreteContainerIdentityFromPlist:v8 userIdentityCache:v7 error:&v27];

  if (v9)
  {
    v10 = [v9 containerConfig];
    v11 = [v10 containerClass];
    if (v11 > 0xE || ((1 << v11) & 0x4ED4) == 0)
    {
    }

    else
    {
      v13 = [v9 userIdentity];
      v14 = [v13 posixUser];
      v15 = containermanager_copy_global_configuration();
      v16 = [v15 defaultUser];
      v17 = [v14 isEqual:v16];

      if ((v17 & 1) == 0)
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v25 = containermanager_copy_global_configuration();
          v26 = [v25 defaultUser];
          *buf = 138412546;
          v29 = v26;
          v30 = 2112;
          v31 = v9;
          _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Ignoring delete manifest because it references a different uid; current user = %@, identity = %@", buf, 0x16u);
        }

        v19 = [[MCMError alloc] initWithErrorType:74];
        goto LABEL_14;
      }
    }

    v19 = 0;
    goto LABEL_14;
  }

  v20 = [MCMError alloc];
  v21 = [(MCMError *)v20 initWithErrorType:v27];
  v19 = v21;
  if (a5)
  {
    v22 = v21;
    *a5 = v19;
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_materializeContainerIdentityFromManifestPlist:(id)a3 userIdentityCache:(id)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v10 objectForKeyedSubscript:@"version"];
    v12 = [v11 isEqual:&unk_1F5A76858];

    if (v12)
    {
      v18[0] = 0;
      v13 = [a1 _materializeContainerIdentityFromManifestPlistV1:v10 userIdentityCache:v9 error:v18];
      v14 = v18[0];
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if (!a5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if (!v13)
  {
    v15 = v14;
    *a5 = v14;
  }

LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)deleteManifestsForUserContainersForPOSIXUser:(id)a3 userIdentityCache:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 managedPathForUserContainersWithUserIdentityCache:v6 forPOSIXUser:a3];
  v8 = [a1 _deleteManifestsForManagedPath:v7 userIdentityCache:v6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)deleteManifestsForUserContainersWithUserIdentityCache:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 managedPathForUserContainersWithUserIdentityCache:v4];
  v6 = [a1 _deleteManifestsForManagedPath:v5 userIdentityCache:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)deleteManifestsForGlobalContainersWithUserIdentityCache:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 managedPathForGlobalContainers];
  v6 = [a1 _deleteManifestsForManagedPath:v5 userIdentityCache:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)managedPathForUserContainersWithUserIdentityCache:(id)a3 forPOSIXUser:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 handlesUserContainers];

  if (v8)
  {
    v9 = [v5 userIdentityForPersonalPersonaWithPOSIXUser:v6];
    v10 = [v5 managedUserPathRegistryForUserIdentity:v9];
    v11 = [v10 containermanagerUserDeleteOperations];
    if (!v11)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v15 = 138412290;
        v16 = v6;
        _os_log_fault_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_FAULT, "Failed to get user path for storing pending delete operations; posixUser = %@.", &v15, 0xCu);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)managedPathForUserContainersWithUserIdentityCache:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = containermanager_copy_global_configuration();
  v6 = [v5 defaultUser];
  v7 = [a1 managedPathForUserContainersWithUserIdentityCache:v4 forPOSIXUser:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)managedPathForGlobalContainers
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = containermanager_copy_global_configuration();
  v3 = [v2 handlesGlobalContainers];

  if (v3)
  {
    v4 = containermanager_copy_global_configuration();
    v5 = [v4 managedPathRegistry];
    v6 = [v5 containermanagerDeleteOperations];

    if (v6)
    {
      goto LABEL_7;
    }

    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_FAULT, "Failed to get global path for storing pending delete operations.", v10, 2u);
    }
  }

  v6 = 0;
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end