@interface MCMDeleteManifest
+ (id)_deleteManifestsForManagedPath:(id)path userIdentityCache:(id)cache;
+ (id)_deleteManifestsFromFileURLs:(id)ls userIdentityCache:(id)cache;
+ (id)_deleteManifestsFromURL:(id)l userIdentityCache:(id)cache error:(id *)error;
+ (id)_materializeContainerIdentityFromManifestPlist:(id)plist userIdentityCache:(id)cache error:(id *)error;
+ (id)_materializeContainerIdentityFromManifestPlistV1:(id)v1 userIdentityCache:(id)cache error:(id *)error;
+ (id)deleteManifestsForGlobalContainersWithUserIdentityCache:(id)cache;
+ (id)deleteManifestsForUserContainersForPOSIXUser:(id)user userIdentityCache:(id)cache;
+ (id)deleteManifestsForUserContainersWithUserIdentityCache:(id)cache;
+ (id)managedPathForGlobalContainers;
+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache;
+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache forPOSIXUser:(id)user;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeleteManifest:(id)manifest;
- (MCMConcreteContainerIdentity)concreteContainerIdentity;
- (MCMDeleteManifest)initWithConcreteContainerIdentity:(id)identity userIdentityCache:(id)cache;
- (MCMUserIdentityCache)userIdentityCache;
- (NSString)description;
- (NSURL)readURL;
- (NSURL)writeURL;
- (id)_stableFileNameForDeleteOperationPlistWithContainerIdentity:(id)identity;
- (id)_urlForDeleteManifestWithContainerIdentity:(id)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deleteManifestAfterRemovingUsingLibraryRepairForUser:(id)user error:(id *)error;
- (id)deleteManifestAfterWritingUsingLibraryRepairForUser:(id)user error:(id *)error;
- (id)fullDescription;
- (id)initFromURL:(id)l userIdentityCache:(id)cache error:(id *)error;
- (unint64_t)hash;
- (void)setReadURL:(id)l;
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

- (void)setReadURL:(id)l
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_readURL = &self->_readURL;

  objc_storeStrong(p_readURL, l);
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

- (id)_stableFileNameForDeleteOperationPlistWithContainerIdentity:(id)identity
{
  v26 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v4 = MEMORY[0x1E696AEC0];
  containerConfig = [identityCopy containerConfig];
  containerClass = [containerConfig containerClass];
  identifier = [identityCopy identifier];
  transient = [identityCopy transient];
  userIdentity = [identityCopy userIdentity];
  identifier2 = [userIdentity identifier];
  uuid = [identityCopy uuid];
  v12 = [v4 stringWithFormat:@"%llu-%@-%d-%@-%@", containerClass, identifier, transient, identifier2, uuid];

  *md = 0u;
  v25 = 0u;
  uTF8String = [v12 UTF8String];
  v14 = strlen(uTF8String);
  CC_SHA256(uTF8String, v14, md);
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

- (id)_urlForDeleteManifestWithContainerIdentity:(id)identity
{
  v23 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = [(MCMDeleteManifest *)self _stableFileNameForDeleteOperationPlistWithContainerIdentity:identityCopy];
  v6 = containermanager_copy_global_configuration();
  managedPathRegistry = [v6 managedPathRegistry];
  containermanagerDeleteOperations = [managedPathRegistry containermanagerDeleteOperations];

  v9 = containermanager_copy_global_configuration();
  containerConfig = [identityCopy containerConfig];
  v11 = [v9 isGlobalContainerClass:{objc_msgSend(containerConfig, "containerClass")}];

  if ((v11 & 1) == 0)
  {
    userIdentityCache = [(MCMDeleteManifest *)self userIdentityCache];
    userIdentity = [identityCopy userIdentity];
    posixUser = [userIdentity posixUser];
    v15 = [userIdentityCache userIdentityForPersonalPersonaWithPOSIXUser:posixUser];

    userIdentityCache2 = [(MCMDeleteManifest *)self userIdentityCache];
    v17 = [userIdentityCache2 managedUserPathRegistryForUserIdentity:v15];

    containermanagerUserDeleteOperations = [v17 containermanagerUserDeleteOperations];

    containermanagerDeleteOperations = containermanagerUserDeleteOperations;
  }

  v19 = [containermanagerDeleteOperations url];
  v20 = [v19 URLByAppendingPathComponent:v5 isDirectory:0];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v8 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = self == equalCopy;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MCMDeleteManifest *)self isEqualToDeleteManifest:equalCopy];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToDeleteManifest:(id)manifest
{
  v17 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    readURL = [(MCMDeleteManifest *)self readURL];
    if (readURL)
    {
      readURL2 = [manifestCopy readURL];
      if (!readURL2)
      {
        v7 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    readURL3 = [(MCMDeleteManifest *)self readURL];
    if (readURL3)
    {

      if (readURL)
      {
      }

LABEL_12:
      readURL = [(MCMDeleteManifest *)self concreteContainerIdentity];
      concreteContainerIdentity = [manifestCopy concreteContainerIdentity];
      if ([readURL isEqualToContainerIdentity:concreteContainerIdentity])
      {
        readURL4 = [(MCMDeleteManifest *)self readURL];
        readURL5 = [manifestCopy readURL];
        if ([readURL4 isEqual:readURL5])
        {
          writeURL = [(MCMDeleteManifest *)self writeURL];
          writeURL2 = [manifestCopy writeURL];
          v7 = [writeURL isEqual:writeURL2];
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

    readURL6 = [manifestCopy readURL];

    if (readURL)
    {
    }

    if (!readURL6)
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
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v4 = [concreteContainerIdentity hash];
  readURL = [(MCMDeleteManifest *)self readURL];
  v6 = [readURL hash];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  v8 = [writeURL hash];

  v9 = *MEMORY[0x1E69E9840];
  return v6 ^ v4 ^ v8;
}

- (id)fullDescription
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  readURL = [(MCMDeleteManifest *)self readURL];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v9 = [v3 stringWithFormat:@"<%@: %p readURL = [%@], writeURL = [%@], concreteContainerIdentity = %@>", v5, self, readURL, writeURL, concreteContainerIdentity];;

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (NSString)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  readURL = [(MCMDeleteManifest *)self readURL];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  v7 = [v3 stringWithFormat:@"(from:[%@], to:[%@], %@)", readURL, writeURL, concreteContainerIdentity];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)deleteManifestAfterRemovingUsingLibraryRepairForUser:(id)user error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  readURL = [(MCMDeleteManifest *)self readURL];
  if (!readURL)
  {
    selfCopy = self;
    v10 = 0;
    v11 = 0;
    if (!error)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v20[0] = 0;
  v8 = [userCopy fixAndRetryIfPermissionsErrorWithURL:readURL error:v20 duringBlock:&__block_literal_global_7751];
  v9 = v20[0];
  v10 = v9;
  if (v8)
  {
    goto LABEL_3;
  }

  domain = [v9 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v10 code];

    if (code == 2)
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
  path = [readURL path];
  v11 = -[MCMError initWithErrorType:category:path:POSIXerrno:](v15, "initWithErrorType:category:path:POSIXerrno:", 122, 1, path, [v10 code]);

LABEL_11:
  selfCopy = [(MCMDeleteManifest *)self copy];
  [(MCMDeleteManifest *)selfCopy setReadURL:0];
  if (!error)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (!selfCopy)
  {
    v17 = v11;
    *error = v11;
  }

LABEL_14:

  v18 = *MEMORY[0x1E69E9840];

  return selfCopy;
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

- (id)deleteManifestAfterWritingUsingLibraryRepairForUser:(id)user error:(id *)error
{
  v36[2] = *MEMORY[0x1E69E9840];
  userCopy = user;
  concreteContainerIdentity = [(MCMDeleteManifest *)self concreteContainerIdentity];
  plist = [concreteContainerIdentity plist];

  v35[0] = @"version";
  v35[1] = @"identity";
  v36[0] = &unk_1F5A76858;
  v36[1] = plist;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v10 = +[MCMFileManager defaultManager];
  writeURL = [(MCMDeleteManifest *)self writeURL];
  v12 = [v10 dataWritingOptionsForFileAtURL:writeURL];

  writeURL2 = [(MCMDeleteManifest *)self writeURL];
  v28 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __79__MCMDeleteManifest_deleteManifestAfterWritingUsingLibraryRepairForUser_error___block_invoke;
  v25[3] = &unk_1E86B0690;
  v14 = v9;
  v26 = v14;
  v27 = v12;
  LOBYTE(writeURL) = [userCopy fixAndRetryIfPermissionsErrorWithURL:writeURL2 error:&v28 duringBlock:v25];

  v15 = v28;
  if (writeURL)
  {
    v16 = [(MCMDeleteManifest *)self copy];
    writeURL3 = [(MCMDeleteManifest *)self writeURL];
    [v16 setReadURL:writeURL3];
    v18 = 0;
  }

  else
  {
    v19 = container_log_handle_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      writeURL4 = [(MCMDeleteManifest *)self writeURL];
      *buf = 138412802;
      v30 = v15;
      v31 = 2112;
      v32 = writeURL4;
      v33 = 2112;
      v34 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to write delete manifest; error = %@, url = [%@], manifest = %@", buf, 0x20u);
    }

    v20 = [MCMError alloc];
    writeURL3 = [(MCMDeleteManifest *)self writeURL];
    v18 = [(MCMError *)v20 initWithNSError:v15 url:writeURL3 defaultErrorType:125];
    v16 = 0;
  }

  if (error && !v16)
  {
    v21 = v18;
    *error = v18;
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

- (id)initFromURL:(id)l userIdentityCache:(id)cache error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  lCopy = l;
  cacheCopy = cache;
  v23 = 0;
  v11 = [MEMORY[0x1E695DF20] MCM_dictionaryWithContentsOfURL:lCopy options:0 error:&v23];
  v12 = v23;
  if (v11)
  {
    v22 = 0;
    v13 = [MCMDeleteManifest _materializeContainerIdentityFromManifestPlist:v11 userIdentityCache:cacheCopy error:&v22];
    v14 = v22;
    if (v13)
    {
      v15 = [(MCMDeleteManifest *)self initWithConcreteContainerIdentity:v13 userIdentityCache:cacheCopy];
      objc_storeStrong(&v15->_readURL, l);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = container_log_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path = [lCopy path];
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = path;
      _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "Failed to parse delete manifest; error = %@, path = [%@]", buf, 0x16u);
    }

    v14 = [[MCMError alloc] initWithNSError:v12 url:lCopy defaultErrorType:123];
  }

  if (error)
  {
    v17 = v14;
    v15 = 0;
    v13 = 0;
    *error = v14;
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

- (MCMDeleteManifest)initWithConcreteContainerIdentity:(id)identity userIdentityCache:(id)cache
{
  v18 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  cacheCopy = cache;
  v17.receiver = self;
  v17.super_class = MCMDeleteManifest;
  v9 = [(MCMDeleteManifest *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_concreteContainerIdentity, identity);
    objc_storeStrong(&v10->_userIdentityCache, cache);
    readURL = v10->_readURL;
    v10->_readURL = 0;

    writeURL = v10->_writeURL;
    v10->_writeURL = 0;

    v13 = [(MCMDeleteManifest *)v10 _urlForDeleteManifestWithContainerIdentity:identityCopy];
    v14 = v10->_writeURL;
    v10->_writeURL = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (id)_deleteManifestsForManagedPath:(id)path userIdentityCache:(id)cache
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  cacheCopy = cache;
  if (!pathCopy || ([pathCopy url], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(self, "_deleteManifestsFromURL:userIdentityCache:error:", v8, cacheCopy, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_deleteManifestsFromFileURLs:(id)ls userIdentityCache:(id)cache
{
  v37 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  cacheCopy = cache;
  v22 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = lsCopy;
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
        v9 = [(MCMDeleteManifest *)v8 initFromURL:v7 userIdentityCache:cacheCopy error:&v27];
        v10 = v27;
        v11 = v10;
        if (v9)
        {
          concreteContainerIdentity = [v9 concreteContainerIdentity];
          v13 = containermanager_copy_global_configuration();
          containerConfig = [concreteContainerIdentity containerConfig];
          containerClass = [containerConfig containerClass];
          userIdentity = [concreteContainerIdentity userIdentity];
          posixUser = [userIdentity posixUser];
          LODWORD(containerClass) = [v13 dispositionForContainerClass:containerClass forUser:posixUser];

          if (containerClass == 1)
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

          concreteContainerIdentity = container_log_handle_for_category();
          if (os_log_type_enabled(concreteContainerIdentity, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v29 = v11;
            v30 = 2112;
            v31 = v7;
            _os_log_error_impl(&dword_1DF2C3000, concreteContainerIdentity, OS_LOG_TYPE_ERROR, "Failed to materialize delete manifest; error = %@, url = [%@]", buf, 0x16u);
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

+ (id)_deleteManifestsFromURL:(id)l userIdentityCache:(id)cache error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  cacheCopy = cache;
  v10 = +[MCMFileManager defaultManager];
  v22 = 0;
  v11 = [v10 urlsForItemsInDirectoryAtURL:lCopy error:&v22];
  v12 = v22;

  if (v11)
  {
    v13 = [self _deleteManifestsFromFileURLs:v11 userIdentityCache:cacheCopy];
    goto LABEL_3;
  }

  domain = [v12 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v12 code];

    if (code == 2)
    {
      v13 = 0;
LABEL_3:
      v14 = 0;
      if (!error)
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
    path = [lCopy path];
    *buf = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = path;
    _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Failed to get items at delete operations URL; error = %@, path = [%@]", buf, 0x16u);
  }

  v14 = [[MCMError alloc] initWithNSError:v12 url:lCopy defaultErrorType:146];
  v13 = 0;
  if (error)
  {
LABEL_12:
    if (!v13)
    {
      v18 = v14;
      *error = v14;
    }
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_materializeContainerIdentityFromManifestPlistV1:(id)v1 userIdentityCache:(id)cache error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 1;
  cacheCopy = cache;
  v8 = [v1 objectForKeyedSubscript:@"identity"];
  v9 = [MCMConcreteContainerIdentity concreteContainerIdentityFromPlist:v8 userIdentityCache:cacheCopy error:&v27];

  if (v9)
  {
    containerConfig = [v9 containerConfig];
    containerClass = [containerConfig containerClass];
    if (containerClass > 0xE || ((1 << containerClass) & 0x4ED4) == 0)
    {
    }

    else
    {
      userIdentity = [v9 userIdentity];
      posixUser = [userIdentity posixUser];
      v15 = containermanager_copy_global_configuration();
      defaultUser = [v15 defaultUser];
      v17 = [posixUser isEqual:defaultUser];

      if ((v17 & 1) == 0)
      {
        v18 = container_log_handle_for_category();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v25 = containermanager_copy_global_configuration();
          defaultUser2 = [v25 defaultUser];
          *buf = 138412546;
          v29 = defaultUser2;
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
  if (error)
  {
    v22 = v21;
    *error = v19;
  }

LABEL_14:

  v23 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_materializeContainerIdentityFromManifestPlist:(id)plist userIdentityCache:(id)cache error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  cacheCopy = cache;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = plistCopy;
    v11 = [v10 objectForKeyedSubscript:@"version"];
    v12 = [v11 isEqual:&unk_1F5A76858];

    if (v12)
    {
      v18[0] = 0;
      v13 = [self _materializeContainerIdentityFromManifestPlistV1:v10 userIdentityCache:cacheCopy error:v18];
      v14 = v18[0];
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if (!error)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    v13 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if (!v13)
  {
    v15 = v14;
    *error = v14;
  }

LABEL_10:

  v16 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)deleteManifestsForUserContainersForPOSIXUser:(id)user userIdentityCache:(id)cache
{
  v11 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v7 = [self managedPathForUserContainersWithUserIdentityCache:cacheCopy forPOSIXUser:user];
  v8 = [self _deleteManifestsForManagedPath:v7 userIdentityCache:cacheCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)deleteManifestsForUserContainersWithUserIdentityCache:(id)cache
{
  v9 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v5 = [self managedPathForUserContainersWithUserIdentityCache:cacheCopy];
  v6 = [self _deleteManifestsForManagedPath:v5 userIdentityCache:cacheCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)deleteManifestsForGlobalContainersWithUserIdentityCache:(id)cache
{
  v9 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  managedPathForGlobalContainers = [self managedPathForGlobalContainers];
  v6 = [self _deleteManifestsForManagedPath:managedPathForGlobalContainers userIdentityCache:cacheCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache forPOSIXUser:(id)user
{
  v17 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  userCopy = user;
  v7 = containermanager_copy_global_configuration();
  handlesUserContainers = [v7 handlesUserContainers];

  if (handlesUserContainers)
  {
    v9 = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:userCopy];
    v10 = [cacheCopy managedUserPathRegistryForUserIdentity:v9];
    containermanagerUserDeleteOperations = [v10 containermanagerUserDeleteOperations];
    if (!containermanagerUserDeleteOperations)
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v15 = 138412290;
        v16 = userCopy;
        _os_log_fault_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_FAULT, "Failed to get user path for storing pending delete operations; posixUser = %@.", &v15, 0xCu);
      }
    }
  }

  else
  {
    containermanagerUserDeleteOperations = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return containermanagerUserDeleteOperations;
}

+ (id)managedPathForUserContainersWithUserIdentityCache:(id)cache
{
  v10 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v5 = containermanager_copy_global_configuration();
  defaultUser = [v5 defaultUser];
  v7 = [self managedPathForUserContainersWithUserIdentityCache:cacheCopy forPOSIXUser:defaultUser];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)managedPathForGlobalContainers
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = containermanager_copy_global_configuration();
  handlesGlobalContainers = [v2 handlesGlobalContainers];

  if (handlesGlobalContainers)
  {
    v4 = containermanager_copy_global_configuration();
    managedPathRegistry = [v4 managedPathRegistry];
    containermanagerDeleteOperations = [managedPathRegistry containermanagerDeleteOperations];

    if (containermanagerDeleteOperations)
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

  containermanagerDeleteOperations = 0;
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return containermanagerDeleteOperations;
}

@end