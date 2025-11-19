@interface MCMContainerCacheEntry
+ (id)UUIDForFileHandle:(id)a3;
+ (id)UUIDForURL:(id)a3;
+ (id)_fileHandleForURL:(id)a3 writeable:(BOOL)a4;
+ (id)identifierForFileHandle:(id)a3;
+ (id)identifierForURL:(id)a3;
+ (id)schemaVersionForFileHandle:(id)a3;
+ (id)schemaVersionForURL:(id)a3;
+ (timespec)birthtimeForFileHandle:(id)a3;
+ (timespec)birthtimeForURL:(id)a3;
+ (void)clearAttributesForFileHandle:(id)a3;
+ (void)clearAttributesForURL:(id)a3;
+ (void)setBirthtime:(timespec)a3 forFileHandle:(id)a4;
+ (void)setBirthtime:(timespec)a3 forURL:(id)a4;
+ (void)setIdentifier:(id)a3 forFileHandle:(id)a4;
+ (void)setIdentifier:(id)a3 forURL:(id)a4;
+ (void)setSchemaVersion:(id)a3 forFileHandle:(id)a4;
+ (void)setSchemaVersion:(id)a3 forURL:(id)a4;
+ (void)setUUID:(id)a3 forFileHandle:(id)a4;
+ (void)setUUID:(id)a3 forURL:(id)a4;
- (BOOL)corrupt;
- (BOOL)ignore;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContainerCacheEntry:(id)a3;
- (BOOL)verifyWithError:(id *)a3;
- (MCMContainerCacheEntry)initWithIdentifier:(id)a3 containerPath:(id)a4 schemaVersion:(id)a5 uuid:(id)a6 metadata:(id)a7 userIdentityCache:(id)a8;
- (MCMContainerCacheEntry)initWithMetadata:(id)a3 userIdentityCache:(id)a4;
- (MCMContainerCacheEntry_Internal)next;
- (MCMContainerCacheUpdatable)cache;
- (MCMContainerPath)containerPath;
- (MCMFSNode)fsNode;
- (MCMFileManagerResolvesPaths)fmForNode;
- (MCMUserIdentityCache)userIdentityCache;
- (NSNumber)schemaVersion;
- (NSString)description;
- (NSString)identifier;
- (NSUUID)uuid;
- (id)_fabricateMetadataForContainerPath:(id)a3 identifier:(id)a4 uuid:(id)a5 schemaVersion:(id)a6 userIdentityCache:(id)a7;
- (id)_findUserManagedAssetsDirectoryAtContainerRootURL:(id)a3;
- (id)_identifierForContainerPath:(id)a3;
- (id)_metadataFromContainerPath:(id)a3 identifier:(id)a4 uuid:(id)a5 schemaVersion:(id)a6 userIdentityCache:(id)a7;
- (id)_readMetadataForIdentifier:(id)a3 containerPath:(id)a4 error:(id *)a5;
- (id)containerIdentity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fsNodeWithError:(id *)a3;
- (id)fullDescription;
- (id)initFromContainerPath:(id)a3 identifier:(id)a4 uuid:(id)a5 schemaVersion:(id)a6 userIdentityCache:(id)a7;
- (id)metadataMinimal;
- (id)metadataWithError:(id *)a3;
- (timespec)birthtimeWithError:(id *)a3;
- (unint64_t)generation;
- (unint64_t)hash;
- (void)setCache:(id)a3;
- (void)setContainerPath:(id)a3;
- (void)setCorrupt:(BOOL)a3;
- (void)setFsNode:(id)a3;
- (void)setGeneration:(unint64_t)a3;
- (void)setIgnore:(BOOL)a3;
- (void)setNext:(id)a3;
- (void)setSchemaVersion:(id)a3;
- (void)setUuid:(id)a3;
- (void)setXattrs;
- (void)setXattrsWithFileHandle:(id)a3;
@end

@implementation MCMContainerCacheEntry

- (MCMFSNode)fsNode
{
  result = self->_fsNode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerPath)containerPath
{
  result = self->_containerPath;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)identifier
{
  result = self->_identifier;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)corrupt
{
  result = self->_corrupt;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)ignore
{
  result = self->_ignore;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)metadataMinimal
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(MCMContainerCacheEntry *)self containerIdentity];
  v4 = [MCMMetadataMinimal alloc];
  v5 = [(MCMContainerCacheEntry *)self containerPath];
  v6 = [(MCMContainerCacheEntry *)self schemaVersion];
  v7 = [(MCMContainerCacheEntry *)self userIdentityCache];
  v8 = [(MCMMetadataMinimal *)v4 initWithContainerIdentity:v3 containerPath:v5 schemaVersion:v6 userIdentityCache:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSNumber)schemaVersion
{
  result = self->_schemaVersion;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSUUID)uuid
{
  result = self->_uuid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)containerIdentity
{
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = 1;
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 staticConfig];
  v5 = [(MCMContainerCacheEntry *)self containerPath];
  v19 = [v4 configForContainerClass:{objc_msgSend(v5, "containerClass")}];

  v18 = [(MCMContainerCacheEntry *)self uuid];
  v20 = [(MCMContainerCacheEntry *)self containerPath];
  v6 = [v20 userIdentity];
  v7 = [(MCMContainerCacheEntry *)self identifier];
  v8 = [(MCMContainerCacheEntry *)self containerPath];
  v9 = [v8 containerPathIdentifier];
  v10 = [(MCMContainerCacheEntry *)self cache];
  v11 = [(MCMContainerCacheEntry *)self containerPath];
  v12 = [v11 transient];
  v13 = [(MCMContainerCacheEntry *)self userIdentityCache];
  BYTE1(v17) = v12;
  LOBYTE(v17) = v10 != 0;
  v14 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:v18 userIdentity:v6 identifier:v7 containerConfig:v19 platform:0 containerPathIdentifier:v9 existed:v17 transient:v13 userIdentityCache:v21 error:?];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (MCMContainerCacheUpdatable)cache
{
  v5 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_cache);
  v3 = *MEMORY[0x1E69E9840];

  return WeakRetained;
}

- (unint64_t)generation
{
  result = self->_generation;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMFileManagerResolvesPaths)fmForNode
{
  result = self->_fmForNode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setFsNode:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_fsNode = &self->_fsNode;

  objc_storeStrong(p_fsNode, a3);
}

- (void)setCache:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_cache = &self->_cache;

  objc_storeWeak(p_cache, a3);
}

- (void)setGeneration:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_generation = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setNext:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_next = &self->_next;

  objc_storeStrong(p_next, a3);
}

- (MCMContainerCacheEntry_Internal)next
{
  result = self->_next;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setIgnore:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_ignore = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setCorrupt:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_corrupt = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (void)setUuid:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_uuid = &self->_uuid;

  objc_storeStrong(p_uuid, a3);
}

- (void)setSchemaVersion:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_schemaVersion = &self->_schemaVersion;

  objc_storeStrong(p_schemaVersion, a3);
}

- (void)setContainerPath:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_containerPath = &self->_containerPath;

  objc_storeStrong(p_containerPath, a3);
}

- (id)_metadataFromContainerPath:(id)a3 identifier:(id)a4 uuid:(id)a5 schemaVersion:(id)a6 userIdentityCache:(id)a7
{
  v20 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 containerPathForRealPath];
  v17 = [(MCMContainerCacheEntry *)self _fabricateMetadataForContainerPath:v16 identifier:v15 uuid:v14 schemaVersion:v13 userIdentityCache:v12];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_findUserManagedAssetsDirectoryAtContainerRootURL:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[MCMFileManager defaultManager];
  v25 = 0;
  v22 = v3;
  v5 = [v4 urlsForItemsInDirectoryAtURL:v3 error:&v25];
  v6 = v25;

  if (!v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = [v3 path];
      *buf = 138412546;
      v32 = v21;
      v33 = 2112;
      v34 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Couldn't read container contents when reconstructing metadata; path = [%@], error = %@", buf, 0x16u);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      v12 = 0;
      do
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * v12);

        v14 = [v13 lastPathComponent];
        if ([v14 hasPrefix:@"com.apple.UserManagedAssets."])
        {
          v24 = 0;
          v15 = +[MCMFileManager defaultManager];
          v23 = 0;
          v16 = [v15 itemAtURL:v13 exists:&v24 isDirectory:&v24 + 1 error:&v23];
          v6 = v23;

          if (v16)
          {
            if (HIBYTE(v24) == 1 && v24 == 1)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [v22 path];
              *buf = 138412546;
              v32 = v18;
              v33 = 2112;
              v34 = v6;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Couldn't stat container contents when reconstructing metadata; path = [%@], error = %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v6 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v10);
  }

  v14 = 0;
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_identifierForContainerPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 containerClass];
  v5 = [v3 containerRootURL];
  v6 = [MCMContainerCacheEntry identifierForURL:v5];

  if (!v6)
  {
    if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
    {
      v6 = 0;
      goto LABEL_10;
    }

    v7 = [v3 containerPathIdentifier];
    v8 = +[MCMEntitlementBypassList sharedBypassList];
    v9 = v8;
    if (v4 == 13)
    {
      v10 = [v8 systemGroupContainerIdIsWellknown:v7];

      if ((v10 & 1) == 0)
      {
LABEL_5:
        v6 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v11 = [v8 systemContainerIdIsWellknown:v7];

      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v6 = v7;
    goto LABEL_9;
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_fabricateMetadataForContainerPath:(id)a3 identifier:(id)a4 uuid:(id)a5 schemaVersion:(id)a6 userIdentityCache:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v11 containerClass];
  v17 = [v11 containerRootURL];
  v48 = [v11 containerPathIdentifier];
  v47 = [v11 userIdentity];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v19 = containermanager_copy_global_configuration();
  v20 = [v19 staticConfig];
  v42 = v16;
  v46 = [v20 configForContainerClass:v16];

  v21 = container_log_handle_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v52 = v17;
    v53 = 2112;
    v54 = v12;
    v55 = 2112;
    v56 = v13;
    v57 = 2112;
    v58 = v14;
    _os_log_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_DEFAULT, "Attempting to recover from corrupt metadata for [%@]; identifier = %@, uuid = %@, schemaVersion = %@", buf, 0x2Au);
  }

  v44 = v15;
  v45 = v17;
  if (!v12)
  {
    v12 = [(MCMContainerCacheEntry *)self _identifierForContainerPath:v11];
    if (!v12)
    {
      p_super = container_log_handle_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v17;
        _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Unable to recover from corrupt metadata for [%@], no identifier", buf, 0xCu);
      }

      v12 = 0;
      goto LABEL_25;
    }
  }

  if (v13)
  {
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v30 = [MCMContainerCacheEntry UUIDForURL:v17];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [MEMORY[0x1E696AFB0] UUID];
    }

    v13 = v32;

    if (v14)
    {
      goto LABEL_7;
    }
  }

  v38 = [MCMContainerCacheEntry schemaVersionForURL:v17];
  v39 = v38;
  v40 = &unk_1F5A76FA8;
  if (v38)
  {
    v40 = v38;
  }

  v14 = v40;

LABEL_7:
  v50 = 1;
  BYTE1(v41) = isKindOfClass & 1;
  LOBYTE(v41) = 1;
  v22 = [MCMConcreteContainerIdentityForLibsystem containerIdentityWithUUID:v13 userIdentity:v47 identifier:v12 containerConfig:v46 platform:0 containerPathIdentifier:v48 existed:v41 transient:v15 userIdentityCache:&v50 error:?];
  if (!v22)
  {
    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      error_description = container_get_error_description();
      *buf = 138412546;
      v52 = v17;
      v53 = 2080;
      v54 = error_description;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Unable to generate identity for [%@]: error = %s", buf, 0x16u);
    }

LABEL_25:
    v25 = 0;
    v23 = 0;
    v26 = 0;
    v28 = 0;
    v24 = v11;
    goto LABEL_26;
  }

  v23 = v22;
  v24 = [MCMContainerPath containerPathForContainerIdentity:v22 containerPathIdentifier:v48];

  if (v24)
  {
    v25 = [(MCMContainerCacheEntry *)self _findUserManagedAssetsDirectoryAtContainerRootURL:v45];
    v26 = [[MCMMetadata alloc] initWithContainerIdentity:v23 info:0 containerPath:v24 userManagedAssetsDirName:v25 schemaVersion:v14 dataProtectionClass:0xFFFFFFFFLL creator:0 userIdentityCache:v15];
    v49 = 0;
    v27 = [(MCMMetadata *)v26 writeMetadataToDiskWithError:&v49];
    v28 = v49;
    if (v27)
    {
      p_super = container_log_handle_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v52 = v48;
        v53 = 2112;
        v54 = v12;
        v55 = 2048;
        v56 = v42;
        _os_log_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_DEFAULT, "Fabricated metadata for [%@:%@(%llu)]", buf, 0x20u);
      }
    }

    else
    {
      v34 = container_log_handle_for_category();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v52 = v48;
        v53 = 2048;
        v54 = v42;
        v55 = 2112;
        v56 = v28;
        _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "Unable to write generated metadata for [%@(%llu)]: error = %@", buf, 0x20u);
      }

      p_super = &v26->super.super;
      v26 = 0;
    }
  }

  else
  {
    p_super = container_log_handle_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v52 = v23;
      v53 = 2112;
      v54 = v48;
      _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "Could not construct containerPath; identity = %@, containerPathIdentifier = %@", buf, 0x16u);
    }

    v25 = 0;
    v26 = 0;
    v28 = 0;
    v24 = 0;
  }

LABEL_26:

  v35 = v26;
  v36 = *MEMORY[0x1E69E9840];
  return v26;
}

- (id)_readMetadataForIdentifier:(id)a3 containerPath:(id)a4 error:(id *)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [v7 containerClassPath];
  v9 = [v8 containerClass];
  v10 = [v8 userIdentity];
  v11 = [MCMMetadata alloc];
  v12 = [(MCMContainerCacheEntry *)self userIdentityCache];
  v19 = 0;
  v13 = [(MCMMetadataMinimal *)v11 initByReadingAndValidatingMetadataAtContainerPath:v7 userIdentity:v10 containerClass:v9 userIdentityCache:v12 error:&v19];
  v14 = v19;

  if (!v13)
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not read metadata at [%@]: %@", buf, 0x16u);
    }

    if (a5)
    {
      v16 = v14;
      *a5 = v14;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 80), self->_userIdentityCache);
    objc_storeStrong((v5 + 16), self->_identifier);
    objc_storeStrong((v5 + 24), self->_containerPath);
    objc_storeStrong((v5 + 32), self->_schemaVersion);
    objc_storeStrong((v5 + 40), self->_uuid);
    *(v5 + 8) = self->_corrupt;
    *(v5 + 9) = self->_ignore;
    objc_storeWeak((v5 + 64), 0);
    objc_storeStrong((v5 + 88), self->_fmForNode);
    *(v5 + 56) = self->_generation;
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
      v5 = [(MCMContainerCacheEntry *)self isEqualToContainerCacheEntry:v4];
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqualToContainerCacheEntry:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MCMContainerCacheEntry *)self fsNode];
    if (!v6)
    {
      v11 = [v5 fsNode];
      if (v11)
      {
        v12 = v11;
        v10 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v7 = [(MCMContainerCacheEntry *)self fsNode];
    if (v7)
    {
      v8 = v7;
      v9 = [v5 fsNode];

      if (v6)
      {

        if (!v9)
        {
          goto LABEL_19;
        }
      }

      else if (!v9)
      {
        goto LABEL_19;
      }
    }

    else if (v6)
    {
    }

    v13 = [(MCMContainerCacheEntry *)self fsNode];
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = v13;
    v15 = [(MCMContainerCacheEntry *)self fsNode];
    v16 = [v5 fsNode];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
LABEL_15:
      v12 = [(MCMContainerCacheEntry *)self identifier];
      v18 = [v5 identifier];
      if ([v12 isEqualToString:v18])
      {
        v19 = [(MCMContainerCacheEntry *)self containerPath];
        v20 = [v5 containerPath];
        if ([v19 isEqual:v20] && (v21 = -[MCMContainerCacheEntry corrupt](self, "corrupt"), v21 == objc_msgSend(v5, "corrupt")))
        {
          v22 = [(MCMContainerCacheEntry *)self schemaVersion];
          v23 = [v5 schemaVersion];
          if ([v22 isEqualToNumber:v23])
          {
            v27 = [(MCMContainerCacheEntry *)self uuid];
            v24 = [v5 uuid];
            v10 = [v27 isEqual:v24];
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_27;
    }

LABEL_19:
    v10 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v10 = 0;
LABEL_29:

  v25 = *MEMORY[0x1E69E9840];
  return v10;
}

- (unint64_t)hash
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(MCMContainerCacheEntry *)self identifier];
  v4 = [v3 hash];
  v5 = [(MCMContainerCacheEntry *)self containerPath];
  v6 = [v5 containerRootURL];
  v7 = [v6 hash];

  v8 = *MEMORY[0x1E69E9840];
  return v7 ^ v4;
}

- (id)fullDescription
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MCMContainerCacheEntry *)self identifier];
  v6 = [(MCMContainerCacheEntry *)self generation];
  v7 = [(MCMContainerCacheEntry *)self containerPath];
  v8 = [(MCMContainerCacheEntry *)self schemaVersion];
  v9 = [(MCMContainerCacheEntry *)self uuid];
  v10 = [(MCMContainerCacheEntry *)self fsNode];
  if ([(MCMContainerCacheEntry *)self corrupt])
  {
    v11 = ", CORRUPT";
  }

  else
  {
    v11 = "";
  }

  v12 = [(MCMContainerCacheEntry *)self ignore];
  v13 = ", IGNORED";
  if (!v12)
  {
    v13 = "";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p identifier = %@, generation = %llu, containerPath = %@, schemaVersion = %@, uuid = %@, fsNode = %@%s%s>", v4, self, v5, v6, v7, v8, v9, v10, v11, v13];;

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSString)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MCMContainerCacheEntry *)self identifier];
  v5 = [(MCMContainerCacheEntry *)self generation];
  v6 = [(MCMContainerCacheEntry *)self containerPath];
  v7 = [(MCMContainerCacheEntry *)self schemaVersion];
  v8 = [(MCMContainerCacheEntry *)self uuid];
  v9 = [(MCMContainerCacheEntry *)self fsNode];
  if ([(MCMContainerCacheEntry *)self corrupt])
  {
    v10 = "|CORRUPT";
  }

  else
  {
    v10 = "";
  }

  v11 = [(MCMContainerCacheEntry *)self ignore];
  v12 = "|IGNORED";
  if (!v11)
  {
    v12 = "";
  }

  v13 = [v3 stringWithFormat:@"(%@|%llu|%@|%@|%@|%@%s%s)", v4, v5, v6, v7, v8, v9, v10, v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (timespec)birthtimeWithError:(id *)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = [(MCMContainerCacheEntry *)self containerPath];
  v6 = [v5 containerRootURL];

  v7 = [MCMContainerCacheEntry birthtimeForURL:v6];
  if (v7 | v8)
  {
    v11 = v7;
    v13 = v8;
    v10 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  v19[0] = 0;
  v9 = [(MCMContainerCacheEntry *)self fsNodeWithError:v19];
  v10 = v19[0];
  if (v9)
  {
    v11 = [v9 birthtime];
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

  if (a3)
  {
LABEL_8:
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 == 0;
    }

    if (v14)
    {
      v15 = v10;
      *a3 = v10;
    }
  }

LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
  v17 = v11;
  v18 = v13;
  result.tv_nsec = v18;
  result.tv_sec = v17;
  return result;
}

- (id)fsNodeWithError:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [(MCMContainerCacheEntry *)self containerPath];
  v6 = [v5 containerRootURL];

  v7 = [(MCMContainerCacheEntry *)self fmForNode];
  v12[0] = 0;
  v8 = [v7 fsNodeOfURL:v6 followSymlinks:0 error:v12];
  v9 = v12[0];

  if (a3 && !v8)
  {
    *a3 = [[MCMError alloc] initWithNSError:v9 url:v6 defaultErrorType:127];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)verifyWithError:(id *)a3
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = [(MCMContainerCacheEntry *)self containerPath];
  v86 = [(MCMContainerCacheEntry *)self identifier];
  v87 = [v4 containerClassPath];
  v5 = [v87 userIdentity];
  v6 = [(MCMContainerCacheEntry *)self userIdentityCache];
  v85 = [v6 libraryRepairForUserIdentity:v5];

  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__14908;
  v101 = __Block_byref_object_dispose__14909;
  v102 = 0;
  v7 = +[MCMFileManager defaultManager];
  v8 = [v4 metadataURL];
  v96 = 0;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __42__MCMContainerCacheEntry_verifyWithError___block_invoke;
  v92[3] = &unk_1E86B11B8;
  v83 = v7;
  v93 = v83;
  v94 = &v103;
  v95 = &v97;
  LOBYTE(v7) = [v85 fixAndRetryIfPermissionsErrorWithURL:v8 containerPath:v4 containerIdentifier:v86 error:&v96 duringBlock:v92];
  v9 = v96;

  if ((v7 & 1) == 0)
  {
    v39 = [MCMError alloc];
    v40 = [v4 metadataURL];
    v41 = [(MCMError *)v39 initWithNSError:v9 url:v40 defaultErrorType:12];

    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v108 = self;
      v109 = 2112;
      v110 = v9;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, failed to check; cacheEntry = %@, error = %@", buf, 0x16u);
    }

    goto LABEL_42;
  }

  if (v104[3])
  {
    v10 = [(MCMContainerCacheEntry *)self fsNode];

    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = [(MCMContainerCacheEntry *)self fsNode];
    v12 = [v11 isEqual:v98[5]];

    if (v12)
    {
      v13 = [(MCMContainerCacheEntry *)self fsNode];
      v14 = [v13 ctime];
      if (v14 == [v98[5] ctime])
      {
        v15 = [(MCMContainerCacheEntry *)self fsNode];
        [v15 ctime];
        v17 = v16;
        [v98[5] ctime];
        LOBYTE(v17) = v17 == v18;

        if (v17)
        {
LABEL_7:
          v19 = objc_opt_class();
          v20 = [(MCMContainerCacheEntry *)self containerPath];
          v21 = [v20 containerRootURL];
          v22 = [v19 identifierForURL:v21];

          if (v22 && ([v86 MCM_isEqualToString:v22 caseSensitive:{objc_msgSend(v87, "isCaseSensitive")}] & 1) == 0)
          {
            v42 = container_log_handle_for_category();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v108 = self;
              v109 = 2112;
              v110 = v22;
              _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, identifier doesn't match; cacheEntry = %@, current identifier = %@", buf, 0x16u);
            }

            v26 = 0;
          }

          else
          {
            v23 = objc_opt_class();
            v24 = [(MCMContainerCacheEntry *)self containerPath];
            v25 = [v24 containerRootURL];
            v26 = [v23 UUIDForURL:v25];

            if (!v26 || (-[MCMContainerCacheEntry uuid](self, "uuid"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 isEqual:v26], v27, (v28 & 1) != 0))
            {
              v29 = objc_opt_class();
              v30 = [(MCMContainerCacheEntry *)self containerPath];
              v31 = [v30 containerRootURL];
              v32 = [v29 schemaVersionForURL:v31];

              if (!v32 || (-[MCMContainerCacheEntry schemaVersion](self, "schemaVersion"), v33 = objc_claimAutoreleasedReturnValue(), v34 = [v33 isEqual:v32], v33, (v34 & 1) != 0))
              {
                v79 = [(MCMContainerCacheEntry *)self containerPath];
                v35 = [v79 containerRootURL];
                v36 = [(MCMContainerCacheEntry *)self containerPath];
                v37 = [v36 containerDataURL];
                v76 = [v35 isEqual:v37];

                if (v76)
                {
                  v38 = v9;
LABEL_59:
                  [(MCMContainerCacheEntry *)self setFsNode:v98[5]];
                  v41 = 0;
                  v67 = 1;
                  goto LABEL_55;
                }

                v90 = 0;
                v60 = [(MCMContainerCacheEntry *)self containerPath];
                v61 = [v60 containerDataURL];
                v88 = v9;
                v89 = 0;
                v80 = [v83 itemAtURL:v61 followSymlinks:0 exists:&v90 isDirectory:0 fsNode:&v89 error:&v88];
                v77 = v60;
                v42 = v89;
                v38 = v88;

                if (v80)
                {
                  if (v90 != 1 || [v42 isDirectory]&& ![v42 isSymlink])
                  {

                    goto LABEL_59;
                  }

                  v62 = [MCMError alloc];
                  v81 = [(MCMContainerCacheEntry *)self containerPath];
                  v78 = [v81 containerDataURL];
                  v63 = [v78 path];
                  v41 = [(MCMError *)v62 initWithErrorType:163 category:1 path:v63 POSIXerrno:0];

                  v64 = container_log_handle_for_category();
                  if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_57;
                  }

                  *buf = 138412546;
                  v108 = self;
                  v109 = 2112;
                  v110 = v42;
                  v65 = "Cache entry failed verification, Data subdirectory doesn't target expectation; cacheEntry = %@, node = %@";
                }

                else
                {
                  v72 = [MCMError alloc];
                  v82 = [(MCMContainerCacheEntry *)self containerPath];
                  v73 = [v82 containerDataURL];
                  v41 = [(MCMError *)v72 initWithNSError:v38 url:v73 defaultErrorType:105];

                  v64 = container_log_handle_for_category();
                  if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                  {
LABEL_57:

                    v9 = v38;
                    goto LABEL_52;
                  }

                  *buf = 138412546;
                  v108 = self;
                  v109 = 2112;
                  v110 = v38;
                  v65 = "Cache entry failed verification, could not stat Data subdirectory; cacheEntry = %@, error = [%@]";
                }

                _os_log_error_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_ERROR, v65, buf, 0x16u);
                goto LABEL_57;
              }

              v42 = container_log_handle_for_category();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v108 = self;
                v109 = 2112;
                v110 = v32;
                _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, schemaVersion doesn't match; cacheEntry = %@, current schemaVersion = %@", buf, 0x16u);
              }

              goto LABEL_51;
            }

            v42 = container_log_handle_for_category();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v108 = self;
              v109 = 2112;
              v110 = v26;
              _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, UUID doesn't match; cacheEntry = %@, current uuid = %@", buf, 0x16u);
            }
          }

          v32 = 0;
LABEL_51:
          v41 = 0;
          goto LABEL_52;
        }
      }

      else
      {
      }

      v42 = container_log_handle_for_category();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        v26 = 0;
        v32 = 0;
        v22 = 0;
        goto LABEL_51;
      }

      v74 = v98[5];
      *buf = 138412546;
      v108 = self;
      v109 = 2112;
      v110 = v74;
      v49 = "Cache entry failed verification, ctime changed; cacheEntry = %@, current fsNode = %@";
    }

    else
    {
      v42 = container_log_handle_for_category();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v48 = v98[5];
      *buf = 138412546;
      v108 = self;
      v109 = 2112;
      v110 = v48;
      v49 = "Cache entry failed verification, fs node changed; cacheEntry = %@, current fsNode = %@";
    }

    _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, v49, buf, 0x16u);
    goto LABEL_28;
  }

  if (![v5 isDataSeparated])
  {
    goto LABEL_40;
  }

  v43 = +[MCMFileManager defaultManager];
  v44 = [v5 homeDirectoryURL];
  v91 = 0;
  v45 = [v43 mountPointForURL:v44 error:&v91];
  v42 = v91;

  if (!v45)
  {
    v50 = [v42 domain];
    if ([v50 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v51 = [v42 code]== 2;

      if (v51)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v57 = container_log_handle_for_category();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v75 = [v5 homeDirectoryURL];
      *buf = 138412546;
      v108 = v75;
      v109 = 2112;
      v110 = v42;
      _os_log_error_impl(&dword_1DF2C3000, v57, OS_LOG_TYPE_ERROR, "Failed to check mount point at [%@]: %@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v46 = [v5 homeDirectoryURL];
  v47 = [v45 isEqual:v46];

  if (v47)
  {
LABEL_39:

LABEL_40:
    v58 = [MCMError alloc];
    v59 = [v4 metadataURL];
    v41 = [(MCMError *)v58 initWithNSError:v9 url:v59 defaultErrorType:12];

    v42 = container_log_handle_for_category();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v70 = [v4 metadataURL];
      v71 = [v70 path];
      *buf = 138412546;
      v108 = self;
      v109 = 2112;
      v110 = v71;
      _os_log_error_impl(&dword_1DF2C3000, v42, OS_LOG_TYPE_ERROR, "Cache entry failed verification, metadata URL doesn't exist; cacheEntry = %@, metadataURL = [%@]", buf, 0x16u);
    }

    goto LABEL_42;
  }

LABEL_25:
  v52 = MEMORY[0x1E696AEC0];
  v53 = [v5 identifier];
  v54 = [v5 homeDirectoryURL];
  v55 = [v54 path];
  v56 = [v52 stringWithFormat:@"Persona [%@] volume not mounted at [%@]", v53, v55];

  v41 = [[MCMError alloc] initWithErrorType:162 category:1 message:v56];
LABEL_42:
  v26 = 0;
  v32 = 0;
  v22 = 0;
LABEL_52:

  if (a3)
  {
    v66 = v41;
    *a3 = v41;
  }

  [(MCMContainerCacheEntry *)self setCorrupt:1];
  v67 = 0;
  v38 = v9;
LABEL_55:

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);

  v68 = *MEMORY[0x1E69E9840];
  return v67;
}

uint64_t __42__MCMContainerCacheEntry_verifyWithError___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  v5 = *(a1[6] + 8);
  obj[0] = *(v5 + 40);
  v6 = [v3 itemAtURL:a2 followSymlinks:1 exists:v4 + 24 isDirectory:0 fsNode:obj error:a3];
  objc_storeStrong((v5 + 40), obj[0]);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)metadataWithError:(id *)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [(MCMContainerCacheEntry *)self identifier];
  v6 = [(MCMContainerCacheEntry *)self containerPath];
  v20[0] = 0;
  v7 = [(MCMContainerCacheEntry *)self _readMetadataForIdentifier:v5 containerPath:v6 error:v20];
  v8 = v20[0];

  if (v7)
  {
LABEL_2:
    v9 = [(MCMContainerCacheEntry *)self containerIdentity];
    v10 = [v7 metadataByChangingContainerIdentity:v9];

    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if ([v8 type] == 108)
  {
    v11 = [(MCMContainerCacheEntry *)self containerPath];
    v12 = [(MCMContainerCacheEntry *)self containerIdentity];
    v13 = [v12 identifier];
    v14 = [(MCMContainerCacheEntry *)self containerIdentity];
    v15 = [v14 uuid];
    v16 = [(MCMContainerCacheEntry *)self userIdentityCache];
    v7 = [(MCMContainerCacheEntry *)self _metadataFromContainerPath:v11 identifier:v13 uuid:v15 schemaVersion:0 userIdentityCache:v16];

    if (v7)
    {

      v8 = 0;
      goto LABEL_2;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (!v10)
  {
    v17 = v8;
    *a3 = v8;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)initFromContainerPath:(id)a3 identifier:(id)a4 uuid:(id)a5 schemaVersion:(id)a6 userIdentityCache:(id)a7
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = [(MCMContainerCacheEntry *)self _metadataFromContainerPath:a3 identifier:a4 uuid:a5 schemaVersion:a6 userIdentityCache:v12];
  if (v13)
  {
    v14 = [(MCMContainerCacheEntry *)self initWithMetadata:v13 userIdentityCache:v12];
  }

  else
  {

    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (MCMContainerCacheEntry)initWithIdentifier:(id)a3 containerPath:(id)a4 schemaVersion:(id)a5 uuid:(id)a6 metadata:(id)a7 userIdentityCache:(id)a8
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = MCMContainerCacheEntry;
  v18 = [(MCMContainerCacheEntry *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_userIdentityCache, a8);
    objc_storeStrong(&v19->_identifier, a3);
    objc_storeStrong(&v19->_containerPath, a4);
    objc_storeStrong(&v19->_schemaVersion, a5);
    objc_storeStrong(&v19->_uuid, a6);
    v20 = [v16 fsNode];
    fsNode = v19->_fsNode;
    v19->_fsNode = v20;

    objc_storeWeak(&v19->_cache, 0);
    *&v19->_corrupt = 0;
    v22 = +[MCMFileManager defaultManager];
    fmForNode = v19->_fmForNode;
    v19->_fmForNode = v22;

    v19->_generation = *MEMORY[0x1E69E9968];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v19;
}

- (MCMContainerCacheEntry)initWithMetadata:(id)a3 userIdentityCache:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 conformsToProtocol:&unk_1F5A81C70])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 identifier];
  v10 = [v6 containerPath];
  v11 = [v6 schemaVersion];
  v12 = [v6 uuid];
  v13 = [(MCMContainerCacheEntry *)self initWithIdentifier:v9 containerPath:v10 schemaVersion:v11 uuid:v12 metadata:v8 userIdentityCache:v7];

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)setXattrsWithFileHandle:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MCMContainerCacheEntry *)self identifier];
  [v5 setIdentifier:v6 forFileHandle:v4];

  v7 = objc_opt_class();
  v8 = [(MCMContainerCacheEntry *)self uuid];
  [v7 setUUID:v8 forFileHandle:v4];

  v9 = objc_opt_class();
  v11 = [(MCMContainerCacheEntry *)self schemaVersion];
  [v9 setSchemaVersion:? forFileHandle:?];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setXattrs
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(MCMContainerCacheEntry *)self containerPath];
  v5 = [v4 containerRootURL];
  v7 = [v3 _fileHandleForURL:v5 writeable:1];

  [(MCMContainerCacheEntry *)self setXattrsWithFileHandle:v7];
  v6 = *MEMORY[0x1E69E9840];
}

+ (id)_fileHandleForURL:(id)a3 writeable:(BOOL)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MCMFileHandle alloc];
  v6 = [v4 path];

  LOBYTE(v10) = 1;
  v7 = [(MCMFileHandle *)v5 initWithPath:v6 relativeToFileHandle:0 direction:9 symlinks:0 createMode:0 createDPClass:0 openLazily:v10];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)clearAttributesForFileHandle:(id)a3
{
  v28[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v28[0] = @"com.apple.containermanager.identifier";
  v28[1] = @"com.apple.containermanager.schema-version";
  v28[2] = @"com.apple.containermanager.uuid";
  v28[3] = @"com.apple.containermanager.birthtime";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v23 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 138412802;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v16 = 0;
        v11 = [v3 removeXattr:v10 error:{&v16, v15}];
        v12 = v16;
        if ((v11 & 1) == 0)
        {
          v13 = container_log_handle_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v15;
            v18 = v10;
            v19 = 2112;
            v20 = v3;
            v21 = 2112;
            v22 = v12;
            _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Could not clear xattr [%@] from [%@]; error = %@", buf, 0x20u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v24 objects:v23 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (void)clearAttributesForURL:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = [a1 _fileHandleForURL:a3 writeable:1];
  [a1 clearAttributesForFileHandle:?];
  v4 = *MEMORY[0x1E69E9840];
}

+ (void)setBirthtime:(timespec)a3 forFileHandle:(id)a4
{
  tv_nsec = a3.tv_nsec;
  tv_sec = a3.tv_sec;
  v16 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = [v6 stringWithFormat:@"%ld.%09ld", tv_sec, tv_nsec];
  v13 = 0;
  LOBYTE(v6) = [v7 setXattr:@"com.apple.containermanager.birthtime" valueAsString:v8 error:&v13];

  v9 = v13;
  v10 = v9;
  if ((v6 & 1) == 0 && v9)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to set xattr birthtime; error = %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)setBirthtime:(timespec)a3 forURL:(id)a4
{
  tv_nsec = a3.tv_nsec;
  tv_sec = a3.tv_sec;
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a1 _fileHandleForURL:a4 writeable:1];
  [a1 setBirthtime:tv_sec forFileHandle:tv_nsec];
  v7 = *MEMORY[0x1E69E9840];
}

+ (void)setUUID:(id)a3 forFileHandle:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [a4 setXattr:@"com.apple.containermanager.uuid" valueAsUUID:a3 error:&v9];
  v5 = v9;
  v6 = v5;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to set xattr uuid; error = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)setUUID:(id)a3 forURL:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = [a1 _fileHandleForURL:a4 writeable:1];
  [a1 setUUID:v6 forFileHandle:?];

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)setSchemaVersion:(id)a3 forFileHandle:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [a4 setXattr:@"com.apple.containermanager.schema-version" valueAsNumber:a3 error:&v9];
  v5 = v9;
  v6 = v5;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to set xattr schemaVersion; error = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)setSchemaVersion:(id)a3 forURL:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = [a1 _fileHandleForURL:a4 writeable:1];
  [a1 setSchemaVersion:v6 forFileHandle:?];

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)setIdentifier:(id)a3 forFileHandle:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = [a4 setXattr:@"com.apple.containermanager.identifier" valueAsString:a3 error:&v9];
  v5 = v9;
  v6 = v5;
  if ((v4 & 1) == 0 && v5)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to set xattr identifier; error = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)setIdentifier:(id)a3 forURL:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v8 = [a1 _fileHandleForURL:a4 writeable:1];
  [a1 setIdentifier:v6 forFileHandle:?];

  v7 = *MEMORY[0x1E69E9840];
}

+ (timespec)birthtimeForFileHandle:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v3 = [a3 copyValueAsStringFromXattr:@"com.apple.containermanager.birthtime" maxLength:1024 error:&v17];
  v4 = v17;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = [v3 componentsSeparatedByString:@"."];
    v8 = v7;
    if (!v7 || [v7 count] != 2)
    {
      v11 = 0;
      v10 = 0;
      goto LABEL_14;
    }

    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = atol([v9 UTF8String]);

    v12 = [v8 objectAtIndexedSubscript:1];
    v11 = atol([v12 UTF8String]);
  }

  else
  {
    v12 = container_log_handle_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed to get xattr birthtime; error = %@", buf, 0xCu);
    }

    v8 = 0;
    v11 = 0;
    v10 = 0;
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  v15 = v10;
  v16 = v11;
  result.tv_nsec = v16;
  result.tv_sec = v15;
  return result;
}

+ (timespec)birthtimeForURL:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [a1 _fileHandleForURL:a3 writeable:0];
  v5 = [a1 birthtimeForFileHandle:v4];
  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];
  v9 = v5;
  v10 = v7;
  result.tv_nsec = v10;
  result.tv_sec = v9;
  return result;
}

+ (id)UUIDForFileHandle:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a3 copyValueAsUUIDFromXattr:@"com.apple.containermanager.uuid" error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get xattr uuid; error = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)UUIDForURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a1 _fileHandleForURL:a3 writeable:0];
  v5 = [a1 UUIDForFileHandle:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)schemaVersionForFileHandle:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a3 copyValueAsNumberFromXattr:@"com.apple.containermanager.schema-version" error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get xattr schemaVersion; error = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)schemaVersionForURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a1 _fileHandleForURL:a3 writeable:0];
  v5 = [a1 schemaVersionForFileHandle:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)identifierForFileHandle:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = [a3 copyValueAsStringFromXattr:@"com.apple.containermanager.identifier" maxLength:1024 error:&v10];
  v4 = v10;
  v5 = v4;
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (!v6)
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "Failed to get xattr identifier; error = %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)identifierForURL:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [a1 _fileHandleForURL:a3 writeable:0];
  v5 = [a1 identifierForFileHandle:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end