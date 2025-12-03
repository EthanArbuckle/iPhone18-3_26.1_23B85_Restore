@interface MCMMetadata
- (BOOL)_initFromMetadataInDictionary:(id)dictionary containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class fsNode:(id)node fileURL:(id)l userIdentityCache:(id)cache error:(id *)self0;
- (BOOL)_persisted;
- (BOOL)_writeFileURL:(id)l dictionary:(id)dictionary options:(unint64_t)options error:(id *)error;
- (BOOL)verifyWithError:(id *)error;
- (BOOL)writeMetadataToDiskWithError:(id *)error;
- (BOOL)writeMetadataToFileURL:(id)l options:(unint64_t)options error:(id *)error;
- (MCMFSNode)fsNode;
- (MCMMetadata)initWithContainerIdentity:(id)identity containerPath:(id)path schemaVersion:(id)version userIdentityCache:(id)cache;
- (MCMMetadata)initWithContainerIdentity:(id)identity info:(id)info containerPath:(id)path userManagedAssetsDirName:(id)name schemaVersion:(id)version dataProtectionClass:(int)class fsNode:(id)node creator:(id)self0 userIdentityCache:(id)self1;
- (NSDictionary)info;
- (NSString)creator;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)shortDescription;
- (NSString)userManagedAssetsDirName;
- (NSURL)fileURL;
- (container_object_s)createLibsystemContainerWithError:(id *)error;
- (id)_modifiedDictBySettingValue:(id)value forKey:(id)key onInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initByReadingAndValidatingMetadataAtFileURL:(id)l containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class userIdentityCache:(id)cache error:(id *)error;
- (id)metadataByChangingDataProtectionClass:(int)class;
- (id)metadataByDeletingInfoDictKeys:(id)keys;
- (id)metadataBySettingCreator:(id)creator;
- (id)metadataBySettingInfoValue:(id)value forKey:(id)key;
- (id)metadataBySettingUserManagedAssetsDirName:(id)name;
- (id)metadataBySettingValuesWithInfoDict:(id)dict fullReplace:(BOOL)replace;
- (int)dataProtectionClass;
- (void)_clearPersistedStatus;
@end

@implementation MCMMetadata

- (NSString)creator
{
  result = self->_creator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSURL)fileURL
{
  result = self->_fileURL;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (int)dataProtectionClass
{
  result = self->_dataProtectionClass;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMFSNode)fsNode
{
  result = self->_fsNode;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSString)userManagedAssetsDirName
{
  result = self->_userManagedAssetsDirName;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)info
{
  result = self->_info;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_writeFileURL:(id)l dictionary:(id)dictionary options:(unint64_t)options error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  lCopy = l;
  userIdentityCache = [(MCMMetadataMinimal *)self userIdentityCache];
  userIdentity = [(MCMMetadataMinimal *)self userIdentity];
  v14 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  containerPath = [(MCMMetadataMinimal *)self containerPath];
  identifier = [(MCMMetadataMinimal *)self identifier];
  v26[0] = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__MCMMetadata__writeFileURL_dictionary_options_error___block_invoke;
  v23[3] = &unk_1E86B0690;
  v17 = dictionaryCopy;
  v24 = v17;
  optionsCopy = options;
  v18 = [v14 fixAndRetryIfPermissionsErrorWithURL:lCopy containerPath:containerPath containerIdentifier:identifier error:v26 duringBlock:v23];

  v19 = v26[0];
  if (error && (v18 & 1) == 0)
  {
    v20 = v19;
    *error = v19;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __54__MCMMetadata__writeFileURL_dictionary_options_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 MCM_writeToURL:a2 withOptions:v5 error:a3];
}

- (BOOL)_persisted
{
  v6 = *MEMORY[0x1E69E9840];
  fsNode = [(MCMMetadata *)self fsNode];
  v3 = fsNode != 0;

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_clearPersistedStatus
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMMetadata;
  [(MCMMetadataMinimal *)&v8 _clearPersistedStatus];
  fsNode = self->_fsNode;
  self->_fsNode = 0;

  containerPath = [(MCMMetadataMinimal *)self containerPath];
  metadataURL = [containerPath metadataURL];
  fileURL = self->_fileURL;
  self->_fileURL = metadataURL;

  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __26__MCMMetadata_description__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __26__MCMMetadata_description__block_invoke(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = MEMORY[0x1E696AEC0];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  if (a2)
  {
    v4 = [v4 redactedDescription];
  }

  v26 = v4;
  v24 = [*(a1 + 32) containerClass];
  v6 = [*(a1 + 32) transient];
  v7 = "";
  if (v6)
  {
    v7 = "T";
  }

  v23 = v7;
  v8 = [*(a1 + 32) userIdentity];
  v9 = [v8 shortDescription];
  v10 = v9;
  v11 = v9;
  if (a2)
  {
    v11 = [v9 redactedDescription];
  }

  v12 = [*(a1 + 32) uuid];
  v13 = [*(a1 + 32) containerPath];
  v14 = [v13 containerPathIdentifier];
  v15 = [*(a1 + 32) dataProtectionClass];
  v16 = [*(a1 + 32) userManagedAssetsDirName];
  v17 = v16;
  if (a2)
  {
    [v16 redactedDescription];
    v18 = v22 = v5;
    v19 = [v25 stringWithFormat:@"<%@(%llu%s)%@;u%@;p%@;dp%d;uma%@>", v26, v24, v23, v11, v12, v14, v15, v18];;

    v5 = v22;
    v17 = v13;
    v14 = v12;
    v13 = v11;
    v12 = v10;
    v10 = v8;
    v8 = v26;
  }

  else
  {
    v19 = [v25 stringWithFormat:@"<%@(%llu%s)%@;u%@;p%@;dp%d;uma%@>", v26, v24, v23, v11, v12, v14, v15, v16];;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (NSString)shortDescription
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMMetadata *)self description];
}

- (NSString)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MCMMetadata_debugDescription__block_invoke;
  v7[3] = &unk_1E86B1128;
  v7[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v7];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __31__MCMMetadata_debugDescription__block_invoke(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v30 = MEMORY[0x1E696AEC0];
  v4 = *(a1 + 32);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v29 = *(a1 + 32);
  v7 = [v29 userIdentity];
  v8 = v7;
  v9 = v7;
  if (a2)
  {
    v9 = [v7 redactedDescription];
  }

  v10 = [*(a1 + 32) uuid];
  v28 = [*(a1 + 32) containerClass];
  v11 = [*(a1 + 32) transient];
  v12 = [*(a1 + 32) identifier];
  v13 = v12;
  if (a2)
  {
    v14 = [v12 redactedDescription];
    v26 = [*(a1 + 32) containerPath];
    v15 = [v26 redactedDescription];
    v16 = v6;
    v17 = [*(a1 + 32) dataProtectionClass];
    v18 = [*(a1 + 32) userManagedAssetsDirName];
    [v18 redactedDescription];
    v19 = v27 = v8;
    v25 = v17;
    v6 = v16;
    v20 = [v30 stringWithFormat:@"<%@: %p userIdentity = %@, uuid = %@, containerClass = %llu, transient = %d, identifier = %@, containerPath = %@, dataProtectionClass = %d, userManagedAssetsDirName = %@>", v16, v29, v9, v10, v28, v11, v14, v15, v25, v19];;

    v8 = v27;
    v21 = v13;
    v13 = v10;
    v10 = v9;
  }

  else
  {
    v21 = [*(a1 + 32) containerPath];
    v22 = [*(a1 + 32) dataProtectionClass];
    v14 = [*(a1 + 32) userManagedAssetsDirName];
    v20 = [v30 stringWithFormat:@"<%@: %p userIdentity = %@, uuid = %@, containerClass = %llu, transient = %d, identifier = %@, containerPath = %@, dataProtectionClass = %d, userManagedAssetsDirName = %@>", v6, v29, v9, v10, v28, v11, v13, v21, v22, v14];;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMMetadata;
  v4 = [(MCMMetadataMinimal *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 7, self->_userManagedAssetsDirName);
    objc_storeStrong(v5 + 6, self->_info);
    *(v5 + 10) = self->_dataProtectionClass;
    objc_storeStrong(v5 + 8, self->_fsNode);
    objc_storeStrong(v5 + 10, self->_creator);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)metadataBySettingCreator:(id)creator
{
  v9 = *MEMORY[0x1E69E9840];
  creatorCopy = creator;
  v5 = [(MCMMetadata *)self copy];
  v6 = v5[10];
  v5[10] = creatorCopy;

  [v5 _clearPersistedStatus];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataBySettingUserManagedAssetsDirName:(id)name
{
  v9 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(MCMMetadata *)self copy];
  v6 = v5[7];
  v5[7] = nameCopy;

  [v5 _clearPersistedStatus];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataByChangingDataProtectionClass:(int)class
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMMetadata *)self copy];
  v4[10] = class;
  [v4 _clearPersistedStatus];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (container_object_s)createLibsystemContainerWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 1;
  containerIdentity = [(MCMMetadataMinimal *)self containerIdentity];
  containerPath = [(MCMMetadataMinimal *)self containerPath];
  containerPathIdentifier = [containerPath containerPathIdentifier];
  v8 = [containerIdentity createLibsystemContainerWithContainerPathIdentifier:containerPathIdentifier existed:-[MCMMetadataMinimal existed](self error:{"existed"), v12}];

  if (error && v12[0] != 1 && !v8)
  {
    v9 = [MCMError alloc];
    *error = [(MCMError *)v9 initWithErrorType:v12[0]];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)metadataByDeletingInfoDictKeys:(id)keys
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  selfCopy = self;
  info = [(MCMMetadata *)selfCopy info];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = keysCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [(MCMMetadata *)selfCopy _modifiedDictBySettingValue:0 forKey:*(*(&v22 + 1) + 8 * i) onInfo:info];
        v14 = v13;
        if (v13)
        {
          v15 = v13;

          v10 = 1;
          info = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v9);

    if (v10)
    {
      v16 = [(MCMMetadata *)selfCopy copy];

      v17 = [info copy];
      info = v16->_info;
      v16->_info = v17;

      [(MCMMetadata *)v16 _clearPersistedStatus];
      selfCopy = v16;
    }
  }

  else
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)metadataBySettingValuesWithInfoDict:(id)dict fullReplace:(BOOL)replace
{
  replaceCopy = replace;
  v30 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  selfCopy = self;
  info = [(MCMMetadata *)selfCopy info];
  if (replaceCopy)
  {
    v9 = dictCopy;

    info = v9;
LABEL_13:
    v20 = [(MCMMetadata *)selfCopy copy];

    v21 = [info copy];
    info = v20->_info;
    v20->_info = v21;

    [(MCMMetadata *)v20 _clearPersistedStatus];
    selfCopy = v20;
    goto LABEL_15;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = dictCopy;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [v10 objectForKeyedSubscript:v16];
        v18 = [(MCMMetadata *)selfCopy _modifiedDictBySettingValue:v17 forKey:v16 onInfo:info];

        if (v18)
        {
          v19 = v18;

          v13 = 1;
          info = v19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v12);

    if (v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_15:

  v23 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)metadataBySettingInfoValue:(id)value forKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  keyCopy = key;
  valueCopy = value;
  info = [(MCMMetadata *)selfCopy info];
  v10 = [(MCMMetadata *)selfCopy _modifiedDictBySettingValue:valueCopy forKey:keyCopy onInfo:info];

  if (v10)
  {
    v11 = [(MCMMetadata *)selfCopy copy];

    v12 = [v10 copy];
    info = v11->_info;
    v11->_info = v12;

    [(MCMMetadata *)v11 _clearPersistedStatus];
    selfCopy = v11;
  }

  v14 = *MEMORY[0x1E69E9840];

  return selfCopy;
}

- (id)_modifiedDictBySettingValue:(id)value forKey:(id)key onInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  infoCopy = info;
  v10 = infoCopy;
  if (!valueCopy)
  {
    if (infoCopy)
    {
      v13 = [infoCopy objectForKeyedSubscript:keyCopy];
      if (v13)
      {
        v14 = [v10 mutableCopy];
        [v14 removeObjectForKey:keyCopy];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (infoCopy)
  {
    v11 = [infoCopy objectForKeyedSubscript:keyCopy];
    v12 = v11;
    if (v11 && ([v11 isEqual:valueCopy] & 1) != 0)
    {

LABEL_10:
      v14 = 0;
      goto LABEL_15;
    }

    v14 = [v10 mutableCopy];
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  [v14 setValue:valueCopy forKey:keyCopy];
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)verifyWithError:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  userIdentityCache = [(MCMMetadataMinimal *)self userIdentityCache];
  userIdentity = [(MCMMetadataMinimal *)self userIdentity];
  v7 = [userIdentityCache libraryRepairForUserIdentity:userIdentity];

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3288;
  v51 = __Block_byref_object_dispose__3289;
  v52 = 0;
  fileURL = [(MCMMetadata *)self fileURL];
  containerPath = [(MCMMetadataMinimal *)self containerPath];
  identifier = [(MCMMetadataMinimal *)self identifier];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __31__MCMMetadata_verifyWithError___block_invoke;
  v45[3] = &unk_1E86AFF20;
  v45[4] = &v57;
  v45[5] = &v53;
  v45[6] = &v47;
  v46 = 0;
  v11 = [v7 fixAndRetryIfPermissionsErrorWithURL:fileURL containerPath:containerPath containerIdentifier:identifier error:&v46 duringBlock:v45];
  v12 = v46;

  if ((v11 & 1) == 0)
  {
    v18 = [MCMError alloc];
    fileURL2 = [(MCMMetadata *)self fileURL];
    v17 = [(MCMError *)v18 initWithNSError:v12 url:fileURL2 defaultErrorType:12];

    fileURL4 = container_log_handle_for_category();
    if (os_log_type_enabled(fileURL4, OS_LOG_TYPE_ERROR))
    {
      shortDescription = [(MCMMetadata *)self shortDescription];
      *buf = 138412546;
      v62 = shortDescription;
      v63 = 2112;
      v64 = v12;
      _os_log_error_impl(&dword_1DF2C3000, fileURL4, OS_LOG_TYPE_ERROR, "Could not check existance of metadata for [%@]; error = %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if ((v58[3] & 1) == 0)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      fileURL3 = [(MCMMetadata *)self fileURL];
      path = [fileURL3 path];
      *buf = 138412290;
      v62 = path;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Metadata failed verification, URL doesn't exist; URL = [%@]", buf, 0xCu);
    }

    v22 = [MCMError alloc];
    fileURL4 = [(MCMMetadata *)self fileURL];
    path2 = [fileURL4 path];
    v17 = [(MCMError *)v22 initWithErrorType:127 category:1 path:path2 POSIXerrno:2];

    goto LABEL_23;
  }

  if (*(v54 + 24) == 1)
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      fileURL5 = [(MCMMetadata *)self fileURL];
      path3 = [fileURL5 path];
      *buf = 138412290;
      v62 = path3;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Metadata failed verification, URL is a directory; URL = [%@]", buf, 0xCu);
    }

    v14 = [MCMError alloc];
    fileURL4 = [(MCMMetadata *)self fileURL];
    path4 = [fileURL4 path];
    v17 = [(MCMError *)v14 initWithErrorType:127 category:1 path:path4 POSIXerrno:21];

    goto LABEL_23;
  }

  fsNode = [(MCMMetadata *)self fsNode];

  if (!fsNode)
  {
LABEL_16:
    objc_storeStrong(&self->_fsNode, v48[5]);
    v17 = 0;
    v33 = 1;
    goto LABEL_26;
  }

  fsNode2 = [(MCMMetadata *)self fsNode];
  v26 = [fsNode2 isEqual:v48[5]];

  if (v26)
  {
    fsNode3 = [(MCMMetadata *)self fsNode];
    ctime = [fsNode3 ctime];
    if (ctime == [v48[5] ctime])
    {
      fsNode4 = [(MCMMetadata *)self fsNode];
      [fsNode4 ctime];
      v31 = v30;
      [v48[5] ctime];
      LOBYTE(v31) = v31 == v32;

      if (v31)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    fileURL4 = container_log_handle_for_category();
    if (os_log_type_enabled(fileURL4, OS_LOG_TYPE_ERROR))
    {
      shortDescription2 = [(MCMMetadata *)self shortDescription];
      v44 = v48[5];
      *buf = 138412546;
      v62 = shortDescription2;
      v63 = 2112;
      v64 = v44;
      _os_log_error_impl(&dword_1DF2C3000, fileURL4, OS_LOG_TYPE_ERROR, "Metadata failed verification, ctime changed; cacheEntry = %@, current fsNode = %@", buf, 0x16u);
    }
  }

  else
  {
    fileURL4 = container_log_handle_for_category();
    if (os_log_type_enabled(fileURL4, OS_LOG_TYPE_ERROR))
    {
      shortDescription3 = [(MCMMetadata *)self shortDescription];
      v35 = v48[5];
      *buf = 138412546;
      v62 = shortDescription3;
      v63 = 2112;
      v64 = v35;
      _os_log_error_impl(&dword_1DF2C3000, fileURL4, OS_LOG_TYPE_ERROR, "Metadata failed verification, fs node changed; metadata = %@, current fsNode = %@", buf, 0x16u);
    }
  }

  v17 = 0;
LABEL_23:

  if (error)
  {
    v36 = v17;
    v33 = 0;
    *error = v17;
  }

  else
  {
    v33 = 0;
  }

LABEL_26:

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  v37 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t __31__MCMMetadata_verifyWithError___block_invoke(void *a1, void *a2, uint64_t a3)
{
  obj[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = *(a1[4] + 8);
  v8 = *(a1[5] + 8);
  v9 = *(a1[6] + 8);
  obj[0] = *(v9 + 40);
  v10 = [v6 itemAtURL:v5 followSymlinks:1 exists:v7 + 24 isDirectory:v8 + 24 fsNode:obj error:a3];

  objc_storeStrong((v9 + 40), obj[0]);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)writeMetadataToFileURL:(id)l options:(unint64_t)options error:(id *)error
{
  v76 = *MEMORY[0x1E69E9840];
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LOBYTE(self) = [(MCMMetadata *)selfCopy _persisted];
  objc_sync_exit(selfCopy);

  if (self)
  {
    v10 = 0;
LABEL_21:
    v34 = 0;
    v37 = 1;
    goto LABEL_22;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = objc_opt_new();
  info = [(MCMMetadata *)selfCopy info];

  if (info)
  {
    info2 = [(MCMMetadata *)selfCopy info];
    [v12 setValue:info2 forKey:@"MCMMetadataInfo"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MCMMetadataMinimal containerClass](selfCopy, "containerClass")}];
  [v12 setValue:v15 forKey:@"MCMMetadataContentClass"];

  if ([MCMUserIdentity isUserIdentityRequiredForContainerClass:[(MCMMetadataMinimal *)selfCopy containerClass]])
  {
    userIdentity = [(MCMMetadataMinimal *)selfCopy userIdentity];
    plist = [userIdentity plist];
    [v12 setValue:plist forKey:@"MCMMetadataUserIdentity"];
  }

  identifier = [(MCMMetadataMinimal *)selfCopy identifier];
  [v12 setValue:identifier forKey:@"MCMMetadataIdentifier"];

  uuid = [(MCMMetadataMinimal *)selfCopy uuid];
  uUIDString = [uuid UUIDString];
  [v12 setValue:uUIDString forKey:@"MCMMetadataUUID"];

  [v12 setValue:&unk_1F5A765A0 forKey:@"MCMMetadataVersion"];
  schemaVersion = [(MCMMetadataMinimal *)selfCopy schemaVersion];
  [v12 setValue:schemaVersion forKey:@"MCMMetadataSchemaVersion"];

  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[MCMMetadata dataProtectionClass](selfCopy, "dataProtectionClass")}];
  [v12 setValue:v22 forKey:@"MCMMetadataActiveDPClass"];

  userManagedAssetsDirName = [(MCMMetadata *)selfCopy userManagedAssetsDirName];

  if (userManagedAssetsDirName)
  {
    userManagedAssetsDirName2 = [(MCMMetadata *)selfCopy userManagedAssetsDirName];
    [v12 setValue:userManagedAssetsDirName2 forKey:@"MCMMetadataUserManagedAssetsDirName"];
  }

  creator = [(MCMMetadata *)selfCopy creator];

  if (creator)
  {
    creator2 = [(MCMMetadata *)selfCopy creator];
    [v12 setValue:creator2 forKey:@"MCMMetadataCreator"];
  }

  v27 = selfCopy;
  objc_sync_enter(v27);
  v61 = 0;
  v28 = [(MCMMetadata *)v27 _writeFileURL:lCopy dictionary:v12 options:options error:&v61];
  v10 = v61;
  if (v28)
  {
    v29 = +[MCMFileManager defaultManager];
    v60 = 0;
    v30 = [v29 fsNodeOfURL:lCopy followSymlinks:0 error:&v60];
    v31 = v60;

    if (v30)
    {
      v32 = v30;
      p_super = &v27->_fsNode->super;
      v27->_fsNode = v32;
    }

    else
    {
      p_super = container_log_handle_for_category();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(MCMMetadataMinimal *)v27 uuid];
        containerPath = [(MCMMetadataMinimal *)v27 containerPath];
        containerPathIdentifier = [containerPath containerPathIdentifier];
        identifier2 = [(MCMMetadataMinimal *)v27 identifier];
        containerClass = [(MCMMetadataMinimal *)v27 containerClass];
        v53 = [(MCMMetadata *)v27 conformsToProtocol:&unk_1F5A81C70];
        if (v53)
        {
          fsNode = [(MCMMetadata *)v27 fsNode];
          inode = [fsNode inode];
        }

        else
        {
          inode = 0;
        }

        path = [lCopy path];
        *buf = 138544898;
        v63 = uuid2;
        v64 = 2114;
        v65 = containerPathIdentifier;
        v66 = 2112;
        v67 = identifier2;
        v68 = 2050;
        v69 = containerClass;
        v70 = 2048;
        v71 = inode;
        v72 = 2112;
        v73 = path;
        v74 = 2114;
        v75 = v31;
        _os_log_error_impl(&dword_1DF2C3000, p_super, OS_LOG_TYPE_ERROR, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Could not fetch fsNode for [%@]: %{public}@", buf, 0x48u);

        if (v53)
        {
        }
      }
    }

    objc_sync_exit(v27);
    v38 = container_log_handle_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      uuid3 = [(MCMMetadataMinimal *)v27 uuid];
      containerPath2 = [(MCMMetadataMinimal *)v27 containerPath];
      containerPathIdentifier2 = [containerPath2 containerPathIdentifier];
      identifier3 = [(MCMMetadataMinimal *)v27 identifier];
      containerClass2 = [(MCMMetadataMinimal *)v27 containerClass];
      v54 = [(MCMMetadata *)v27 conformsToProtocol:&unk_1F5A81C70];
      if (v54)
      {
        fsNode = [(MCMMetadata *)v27 fsNode];
        inode2 = [fsNode inode];
      }

      else
      {
        inode2 = 0;
      }

      path2 = [lCopy path];
      shortDescription = [(MCMMetadata *)v27 shortDescription];
      *buf = 138544898;
      v63 = uuid3;
      v64 = 2114;
      v65 = containerPathIdentifier2;
      v66 = 2112;
      v67 = identifier3;
      v68 = 2050;
      v69 = containerClass2;
      v70 = 2048;
      v71 = inode2;
      v72 = 2112;
      v73 = path2;
      v74 = 2112;
      v75 = shortDescription;
      _os_log_debug_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_DEBUG, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Wrote metadata to [%@]: %@", buf, 0x48u);

      if (v54)
      {
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_21;
  }

  v34 = [[MCMError alloc] initWithNSError:v10 url:lCopy defaultErrorType:34];
  v35 = container_log_handle_for_category();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    path3 = [lCopy path];
    *buf = 138412546;
    v63 = path3;
    v64 = 2112;
    v65 = v10;
    _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to write metadata dictionary to URL %@: %@", buf, 0x16u);
  }

  objc_sync_exit(v27);
  objc_autoreleasePoolPop(v11);
  if (error)
  {
    v36 = v34;
    v37 = 0;
    *error = v34;
  }

  else
  {
    v37 = 0;
  }

LABEL_22:

  v39 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)writeMetadataToDiskWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[MCMFileManager defaultManager];
  fileURL = [(MCMMetadata *)self fileURL];
  v7 = [v5 dataWritingOptionsForFileAtURL:fileURL];

  fileURL2 = [(MCMMetadata *)self fileURL];
  LOBYTE(error) = [(MCMMetadata *)self writeMetadataToFileURL:fileURL2 options:v7 error:error];

  v9 = *MEMORY[0x1E69E9840];
  return error;
}

- (BOOL)_initFromMetadataInDictionary:(id)dictionary containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class fsNode:(id)node fileURL:(id)l userIdentityCache:(id)cache error:(id *)self0
{
  v61 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  pathCopy = path;
  nodeCopy = node;
  lCopy = l;
  v57.receiver = self;
  v57.super_class = MCMMetadata;
  v58 = 0;
  LODWORD(identity) = [(MCMMetadataMinimal *)&v57 _initFromMetadataInDictionary:dictionaryCopy containerPath:pathCopy userIdentity:identity containerClass:class fsNode:nodeCopy fileURL:lCopy userIdentityCache:cache error:&v58];
  v20 = v58;
  if (!identity)
  {
    goto LABEL_33;
  }

  objc_storeStrong(&self->_fsNode, node);
  v21 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataUserManagedAssetsDirName"];
  userManagedAssetsDirName = self->_userManagedAssetsDirName;
  self->_userManagedAssetsDirName = v21;

  v23 = self->_userManagedAssetsDirName;
  if (v23)
  {
    objc_opt_class();
    v24 = v23;
    v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;

    if (!v25)
    {
      v36 = [MCMError alloc];
      path = [lCopy path];
      v38 = [(MCMError *)v36 initWithErrorType:29 category:5 path:path POSIXerrno:0];

      v39 = container_log_handle_for_category();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v40 = self->_userManagedAssetsDirName;
      *buf = 138412290;
      v60 = v40;
      v41 = "Invalid metadata User Managed Dir Name String: %@";
LABEL_31:
      _os_log_error_impl(&dword_1DF2C3000, v39, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
      goto LABEL_32;
    }
  }

  v26 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataCreator"];
  creator = self->_creator;
  self->_creator = v26;

  v28 = self->_creator;
  if (v28)
  {
    objc_opt_class();
    v29 = v28;
    v30 = (objc_opt_isKindOfClass() & 1) != 0 ? v29 : 0;

    if (!v30)
    {
      v45 = [MCMError alloc];
      path2 = [lCopy path];
      v38 = [(MCMError *)v45 initWithErrorType:29 category:5 path:path2 POSIXerrno:0];

      v39 = container_log_handle_for_category();
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v47 = self->_creator;
      *buf = 138412290;
      v60 = v47;
      v41 = "Invalid metadata Creator String: %@";
      goto LABEL_31;
    }
  }

  v31 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataInfo"];
  info = self->_info;
  self->_info = v31;

  v33 = self->_info;
  if (v33)
  {
    objc_opt_class();
    v34 = v33;
    v35 = (objc_opt_isKindOfClass() & 1) != 0 ? v34 : 0;

    if (!v35)
    {
      v51 = [MCMError alloc];
      path3 = [lCopy path];
      v38 = [(MCMError *)v51 initWithErrorType:29 category:5 path:path3 POSIXerrno:0];

      v39 = container_log_handle_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v53 = self->_info;
        *buf = 138412290;
        v60 = v53;
        v41 = "Invalid metadata Info: %@";
        goto LABEL_31;
      }

LABEL_32:

      v20 = v38;
LABEL_33:
      if (error)
      {
        v54 = v20;
        v50 = 0;
        *error = v20;
      }

      else
      {
        v50 = 0;
      }

      goto LABEL_36;
    }
  }

  self->_dataProtectionClass = -1;
  v42 = [dictionaryCopy objectForKeyedSubscript:@"MCMMetadataActiveDPClass"];
  objc_opt_class();
  v43 = v42;
  if (objc_opt_isKindOfClass())
  {
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  if (v44)
  {
    self->_dataProtectionClass = [v44 intValue];
  }

  else
  {
    containerClassPath = [pathCopy containerClassPath];
    supportsDataProtection = [containerClassPath supportsDataProtection];

    if (supportsDataProtection)
    {
      self->_dataProtectionClass = 0;
    }
  }

  v50 = 1;
LABEL_36:

  v55 = *MEMORY[0x1E69E9840];
  return v50;
}

- (id)initByReadingAndValidatingMetadataAtFileURL:(id)l containerPath:(id)path userIdentity:(id)identity containerClass:(unint64_t)class userIdentityCache:(id)cache error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v22.receiver = self;
  v22.super_class = MCMMetadata;
  v23[0] = 0;
  v16 = [(MCMMetadataMinimal *)&v22 initByReadingAndValidatingMetadataAtFileURL:lCopy containerPath:path userIdentity:identity containerClass:class userIdentityCache:cache error:v23];
  v17 = v23[0];
  v18 = v17;
  if (v16)
  {
    objc_storeStrong(v16 + 9, l);
  }

  else if (error)
  {
    v19 = v17;
    *error = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (MCMMetadata)initWithContainerIdentity:(id)identity info:(id)info containerPath:(id)path userManagedAssetsDirName:(id)name schemaVersion:(id)version dataProtectionClass:(int)class fsNode:(id)node creator:(id)self0 userIdentityCache:(id)self1
{
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  pathCopy = path;
  nameCopy = name;
  nodeCopy = node;
  creatorCopy = creator;
  v29.receiver = self;
  v29.super_class = MCMMetadata;
  v19 = [(MCMMetadataMinimal *)&v29 initWithContainerIdentity:identity containerPath:pathCopy schemaVersion:version userIdentityCache:cache];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_info, info);
    objc_storeStrong(&v20->_userManagedAssetsDirName, name);
    v20->_dataProtectionClass = class;
    objc_storeStrong(&v20->_fsNode, node);
    objc_storeStrong(&v20->_creator, creator);
    metadataURL = [pathCopy metadataURL];
    fileURL = v20->_fileURL;
    v20->_fileURL = metadataURL;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (MCMMetadata)initWithContainerIdentity:(id)identity containerPath:(id)path schemaVersion:(id)version userIdentityCache:(id)cache
{
  result = [(MCMMetadata *)self initWithContainerIdentity:identity info:MEMORY[0x1E695E0F8] containerPath:path userManagedAssetsDirName:0 schemaVersion:version dataProtectionClass:0xFFFFFFFFLL fsNode:0 creator:0 userIdentityCache:cache, *MEMORY[0x1E69E9840]];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end