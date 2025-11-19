@interface MCMMetadata
- (BOOL)_initFromMetadataInDictionary:(id)a3 containerPath:(id)a4 userIdentity:(id)a5 containerClass:(unint64_t)a6 fsNode:(id)a7 fileURL:(id)a8 userIdentityCache:(id)a9 error:(id *)a10;
- (BOOL)_persisted;
- (BOOL)_writeFileURL:(id)a3 dictionary:(id)a4 options:(unint64_t)a5 error:(id *)a6;
- (BOOL)verifyWithError:(id *)a3;
- (BOOL)writeMetadataToDiskWithError:(id *)a3;
- (BOOL)writeMetadataToFileURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (MCMFSNode)fsNode;
- (MCMMetadata)initWithContainerIdentity:(id)a3 containerPath:(id)a4 schemaVersion:(id)a5 userIdentityCache:(id)a6;
- (MCMMetadata)initWithContainerIdentity:(id)a3 info:(id)a4 containerPath:(id)a5 userManagedAssetsDirName:(id)a6 schemaVersion:(id)a7 dataProtectionClass:(int)a8 fsNode:(id)a9 creator:(id)a10 userIdentityCache:(id)a11;
- (NSDictionary)info;
- (NSString)creator;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)shortDescription;
- (NSString)userManagedAssetsDirName;
- (NSURL)fileURL;
- (container_object_s)createLibsystemContainerWithError:(id *)a3;
- (id)_modifiedDictBySettingValue:(id)a3 forKey:(id)a4 onInfo:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initByReadingAndValidatingMetadataAtFileURL:(id)a3 containerPath:(id)a4 userIdentity:(id)a5 containerClass:(unint64_t)a6 userIdentityCache:(id)a7 error:(id *)a8;
- (id)metadataByChangingDataProtectionClass:(int)a3;
- (id)metadataByDeletingInfoDictKeys:(id)a3;
- (id)metadataBySettingCreator:(id)a3;
- (id)metadataBySettingInfoValue:(id)a3 forKey:(id)a4;
- (id)metadataBySettingUserManagedAssetsDirName:(id)a3;
- (id)metadataBySettingValuesWithInfoDict:(id)a3 fullReplace:(BOOL)a4;
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

- (BOOL)_writeFileURL:(id)a3 dictionary:(id)a4 options:(unint64_t)a5 error:(id *)a6
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v12 = [(MCMMetadataMinimal *)self userIdentityCache];
  v13 = [(MCMMetadataMinimal *)self userIdentity];
  v14 = [v12 libraryRepairForUserIdentity:v13];

  v15 = [(MCMMetadataMinimal *)self containerPath];
  v16 = [(MCMMetadataMinimal *)self identifier];
  v26[0] = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__MCMMetadata__writeFileURL_dictionary_options_error___block_invoke;
  v23[3] = &unk_1E86B0690;
  v17 = v10;
  v24 = v17;
  v25 = a5;
  v18 = [v14 fixAndRetryIfPermissionsErrorWithURL:v11 containerPath:v15 containerIdentifier:v16 error:v26 duringBlock:v23];

  v19 = v26[0];
  if (a6 && (v18 & 1) == 0)
  {
    v20 = v19;
    *a6 = v19;
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
  v2 = [(MCMMetadata *)self fsNode];
  v3 = v2 != 0;

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

  v4 = [(MCMMetadataMinimal *)self containerPath];
  v5 = [v4 metadataURL];
  fileURL = self->_fileURL;
  self->_fileURL = v5;

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

- (id)copyWithZone:(_NSZone *)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MCMMetadata;
  v4 = [(MCMMetadataMinimal *)&v8 copyWithZone:a3];
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

- (id)metadataBySettingCreator:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMMetadata *)self copy];
  v6 = v5[10];
  v5[10] = v4;

  [v5 _clearPersistedStatus];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataBySettingUserManagedAssetsDirName:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMMetadata *)self copy];
  v6 = v5[7];
  v5[7] = v4;

  [v5 _clearPersistedStatus];
  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataByChangingDataProtectionClass:(int)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = [(MCMMetadata *)self copy];
  v4[10] = a3;
  [v4 _clearPersistedStatus];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (container_object_s)createLibsystemContainerWithError:(id *)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 1;
  v5 = [(MCMMetadataMinimal *)self containerIdentity];
  v6 = [(MCMMetadataMinimal *)self containerPath];
  v7 = [v6 containerPathIdentifier];
  v8 = [v5 createLibsystemContainerWithContainerPathIdentifier:v7 existed:-[MCMMetadataMinimal existed](self error:{"existed"), v12}];

  if (a3 && v12[0] != 1 && !v8)
  {
    v9 = [MCMError alloc];
    *a3 = [(MCMError *)v9 initWithErrorType:v12[0]];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)metadataByDeletingInfoDictKeys:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = [(MCMMetadata *)v5 info];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
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

        v13 = [(MCMMetadata *)v5 _modifiedDictBySettingValue:0 forKey:*(*(&v22 + 1) + 8 * i) onInfo:v6];
        v14 = v13;
        if (v13)
        {
          v15 = v13;

          v10 = 1;
          v6 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v9);

    if (v10)
    {
      v16 = [(MCMMetadata *)v5 copy];

      v17 = [v6 copy];
      info = v16->_info;
      v16->_info = v17;

      [(MCMMetadata *)v16 _clearPersistedStatus];
      v5 = v16;
    }
  }

  else
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)metadataBySettingValuesWithInfoDict:(id)a3 fullReplace:(BOOL)a4
{
  v4 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  v8 = [(MCMMetadata *)v7 info];
  if (v4)
  {
    v9 = v6;

    v8 = v9;
LABEL_13:
    v20 = [(MCMMetadata *)v7 copy];

    v21 = [v8 copy];
    info = v20->_info;
    v20->_info = v21;

    [(MCMMetadata *)v20 _clearPersistedStatus];
    v7 = v20;
    goto LABEL_15;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v6;
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
        v18 = [(MCMMetadata *)v7 _modifiedDictBySettingValue:v17 forKey:v16 onInfo:v8];

        if (v18)
        {
          v19 = v18;

          v13 = 1;
          v8 = v19;
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

  return v7;
}

- (id)metadataBySettingInfoValue:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = self;
  v7 = a4;
  v8 = a3;
  v9 = [(MCMMetadata *)v6 info];
  v10 = [(MCMMetadata *)v6 _modifiedDictBySettingValue:v8 forKey:v7 onInfo:v9];

  if (v10)
  {
    v11 = [(MCMMetadata *)v6 copy];

    v12 = [v10 copy];
    info = v11->_info;
    v11->_info = v12;

    [(MCMMetadata *)v11 _clearPersistedStatus];
    v6 = v11;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_modifiedDictBySettingValue:(id)a3 forKey:(id)a4 onInfo:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    if (v9)
    {
      v13 = [v9 objectForKeyedSubscript:v8];
      if (v13)
      {
        v14 = [v10 mutableCopy];
        [v14 removeObjectForKey:v8];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:v8];
    v12 = v11;
    if (v11 && ([v11 isEqual:v7] & 1) != 0)
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

  [v14 setValue:v7 forKey:v8];
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)verifyWithError:(id *)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v5 = [(MCMMetadataMinimal *)self userIdentityCache];
  v6 = [(MCMMetadataMinimal *)self userIdentity];
  v7 = [v5 libraryRepairForUserIdentity:v6];

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
  v8 = [(MCMMetadata *)self fileURL];
  v9 = [(MCMMetadataMinimal *)self containerPath];
  v10 = [(MCMMetadataMinimal *)self identifier];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __31__MCMMetadata_verifyWithError___block_invoke;
  v45[3] = &unk_1E86AFF20;
  v45[4] = &v57;
  v45[5] = &v53;
  v45[6] = &v47;
  v46 = 0;
  v11 = [v7 fixAndRetryIfPermissionsErrorWithURL:v8 containerPath:v9 containerIdentifier:v10 error:&v46 duringBlock:v45];
  v12 = v46;

  if ((v11 & 1) == 0)
  {
    v18 = [MCMError alloc];
    v19 = [(MCMMetadata *)self fileURL];
    v17 = [(MCMError *)v18 initWithNSError:v12 url:v19 defaultErrorType:12];

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = [(MCMMetadata *)self shortDescription];
      *buf = 138412546;
      v62 = v20;
      v63 = 2112;
      v64 = v12;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Could not check existance of metadata for [%@]; error = %@", buf, 0x16u);
    }

    goto LABEL_23;
  }

  if ((v58[3] & 1) == 0)
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v39 = [(MCMMetadata *)self fileURL];
      v40 = [v39 path];
      *buf = 138412290;
      v62 = v40;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Metadata failed verification, URL doesn't exist; URL = [%@]", buf, 0xCu);
    }

    v22 = [MCMError alloc];
    v15 = [(MCMMetadata *)self fileURL];
    v23 = [v15 path];
    v17 = [(MCMError *)v22 initWithErrorType:127 category:1 path:v23 POSIXerrno:2];

    goto LABEL_23;
  }

  if (*(v54 + 24) == 1)
  {
    v13 = container_log_handle_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v41 = [(MCMMetadata *)self fileURL];
      v42 = [v41 path];
      *buf = 138412290;
      v62 = v42;
      _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Metadata failed verification, URL is a directory; URL = [%@]", buf, 0xCu);
    }

    v14 = [MCMError alloc];
    v15 = [(MCMMetadata *)self fileURL];
    v16 = [v15 path];
    v17 = [(MCMError *)v14 initWithErrorType:127 category:1 path:v16 POSIXerrno:21];

    goto LABEL_23;
  }

  v24 = [(MCMMetadata *)self fsNode];

  if (!v24)
  {
LABEL_16:
    objc_storeStrong(&self->_fsNode, v48[5]);
    v17 = 0;
    v33 = 1;
    goto LABEL_26;
  }

  v25 = [(MCMMetadata *)self fsNode];
  v26 = [v25 isEqual:v48[5]];

  if (v26)
  {
    v27 = [(MCMMetadata *)self fsNode];
    v28 = [v27 ctime];
    if (v28 == [v48[5] ctime])
    {
      v29 = [(MCMMetadata *)self fsNode];
      [v29 ctime];
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

    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v43 = [(MCMMetadata *)self shortDescription];
      v44 = v48[5];
      *buf = 138412546;
      v62 = v43;
      v63 = 2112;
      v64 = v44;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Metadata failed verification, ctime changed; cacheEntry = %@, current fsNode = %@", buf, 0x16u);
    }
  }

  else
  {
    v15 = container_log_handle_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v34 = [(MCMMetadata *)self shortDescription];
      v35 = v48[5];
      *buf = 138412546;
      v62 = v34;
      v63 = 2112;
      v64 = v35;
      _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Metadata failed verification, fs node changed; metadata = %@, current fsNode = %@", buf, 0x16u);
    }
  }

  v17 = 0;
LABEL_23:

  if (a3)
  {
    v36 = v17;
    v33 = 0;
    *a3 = v17;
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

- (BOOL)writeMetadataToFileURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v76 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = self;
  objc_sync_enter(v9);
  LOBYTE(self) = [(MCMMetadata *)v9 _persisted];
  objc_sync_exit(v9);

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
  v13 = [(MCMMetadata *)v9 info];

  if (v13)
  {
    v14 = [(MCMMetadata *)v9 info];
    [v12 setValue:v14 forKey:@"MCMMetadataInfo"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MCMMetadataMinimal containerClass](v9, "containerClass")}];
  [v12 setValue:v15 forKey:@"MCMMetadataContentClass"];

  if ([MCMUserIdentity isUserIdentityRequiredForContainerClass:[(MCMMetadataMinimal *)v9 containerClass]])
  {
    v16 = [(MCMMetadataMinimal *)v9 userIdentity];
    v17 = [v16 plist];
    [v12 setValue:v17 forKey:@"MCMMetadataUserIdentity"];
  }

  v18 = [(MCMMetadataMinimal *)v9 identifier];
  [v12 setValue:v18 forKey:@"MCMMetadataIdentifier"];

  v19 = [(MCMMetadataMinimal *)v9 uuid];
  v20 = [v19 UUIDString];
  [v12 setValue:v20 forKey:@"MCMMetadataUUID"];

  [v12 setValue:&unk_1F5A765A0 forKey:@"MCMMetadataVersion"];
  v21 = [(MCMMetadataMinimal *)v9 schemaVersion];
  [v12 setValue:v21 forKey:@"MCMMetadataSchemaVersion"];

  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[MCMMetadata dataProtectionClass](v9, "dataProtectionClass")}];
  [v12 setValue:v22 forKey:@"MCMMetadataActiveDPClass"];

  v23 = [(MCMMetadata *)v9 userManagedAssetsDirName];

  if (v23)
  {
    v24 = [(MCMMetadata *)v9 userManagedAssetsDirName];
    [v12 setValue:v24 forKey:@"MCMMetadataUserManagedAssetsDirName"];
  }

  v25 = [(MCMMetadata *)v9 creator];

  if (v25)
  {
    v26 = [(MCMMetadata *)v9 creator];
    [v12 setValue:v26 forKey:@"MCMMetadataCreator"];
  }

  v27 = v9;
  objc_sync_enter(v27);
  v61 = 0;
  v28 = [(MCMMetadata *)v27 _writeFileURL:v8 dictionary:v12 options:a4 error:&v61];
  v10 = v61;
  if (v28)
  {
    v29 = +[MCMFileManager defaultManager];
    v60 = 0;
    v30 = [v29 fsNodeOfURL:v8 followSymlinks:0 error:&v60];
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
        v57 = [(MCMMetadataMinimal *)v27 uuid];
        v59 = [(MCMMetadataMinimal *)v27 containerPath];
        v55 = [v59 containerPathIdentifier];
        v51 = [(MCMMetadataMinimal *)v27 identifier];
        v49 = [(MCMMetadataMinimal *)v27 containerClass];
        v53 = [(MCMMetadata *)v27 conformsToProtocol:&unk_1F5A81C70];
        if (v53)
        {
          v47 = [(MCMMetadata *)v27 fsNode];
          v45 = [v47 inode];
        }

        else
        {
          v45 = 0;
        }

        v46 = [v8 path];
        *buf = 138544898;
        v63 = v57;
        v64 = 2114;
        v65 = v55;
        v66 = 2112;
        v67 = v51;
        v68 = 2050;
        v69 = v49;
        v70 = 2048;
        v71 = v45;
        v72 = 2112;
        v73 = v46;
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
      v56 = [(MCMMetadataMinimal *)v27 uuid];
      v58 = [(MCMMetadataMinimal *)v27 containerPath];
      v52 = [v58 containerPathIdentifier];
      v50 = [(MCMMetadataMinimal *)v27 identifier];
      v48 = [(MCMMetadataMinimal *)v27 containerClass];
      v54 = [(MCMMetadata *)v27 conformsToProtocol:&unk_1F5A81C70];
      if (v54)
      {
        v47 = [(MCMMetadata *)v27 fsNode];
        v42 = [v47 inode];
      }

      else
      {
        v42 = 0;
      }

      v43 = [v8 path];
      v44 = [(MCMMetadata *)v27 shortDescription];
      *buf = 138544898;
      v63 = v56;
      v64 = 2114;
      v65 = v52;
      v66 = 2112;
      v67 = v50;
      v68 = 2050;
      v69 = v48;
      v70 = 2048;
      v71 = v42;
      v72 = 2112;
      v73 = v43;
      v74 = 2112;
      v75 = v44;
      _os_log_debug_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_DEBUG, "[u %{public}@:p %{public}@:c %@(%{public}llu):i%llu] Wrote metadata to [%@]: %@", buf, 0x48u);

      if (v54)
      {
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_21;
  }

  v34 = [[MCMError alloc] initWithNSError:v10 url:v8 defaultErrorType:34];
  v35 = container_log_handle_for_category();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v41 = [v8 path];
    *buf = 138412546;
    v63 = v41;
    v64 = 2112;
    v65 = v10;
    _os_log_error_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_ERROR, "Failed to write metadata dictionary to URL %@: %@", buf, 0x16u);
  }

  objc_sync_exit(v27);
  objc_autoreleasePoolPop(v11);
  if (a5)
  {
    v36 = v34;
    v37 = 0;
    *a5 = v34;
  }

  else
  {
    v37 = 0;
  }

LABEL_22:

  v39 = *MEMORY[0x1E69E9840];
  return v37;
}

- (BOOL)writeMetadataToDiskWithError:(id *)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = +[MCMFileManager defaultManager];
  v6 = [(MCMMetadata *)self fileURL];
  v7 = [v5 dataWritingOptionsForFileAtURL:v6];

  v8 = [(MCMMetadata *)self fileURL];
  LOBYTE(a3) = [(MCMMetadata *)self writeMetadataToFileURL:v8 options:v7 error:a3];

  v9 = *MEMORY[0x1E69E9840];
  return a3;
}

- (BOOL)_initFromMetadataInDictionary:(id)a3 containerPath:(id)a4 userIdentity:(id)a5 containerClass:(unint64_t)a6 fsNode:(id)a7 fileURL:(id)a8 userIdentityCache:(id)a9 error:(id *)a10
{
  v61 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v57.receiver = self;
  v57.super_class = MCMMetadata;
  v58 = 0;
  LODWORD(a5) = [(MCMMetadataMinimal *)&v57 _initFromMetadataInDictionary:v16 containerPath:v17 userIdentity:a5 containerClass:a6 fsNode:v18 fileURL:v19 userIdentityCache:a9 error:&v58];
  v20 = v58;
  if (!a5)
  {
    goto LABEL_33;
  }

  objc_storeStrong(&self->_fsNode, a7);
  v21 = [v16 objectForKeyedSubscript:@"MCMMetadataUserManagedAssetsDirName"];
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
      v37 = [v19 path];
      v38 = [(MCMError *)v36 initWithErrorType:29 category:5 path:v37 POSIXerrno:0];

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

  v26 = [v16 objectForKeyedSubscript:@"MCMMetadataCreator"];
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
      v46 = [v19 path];
      v38 = [(MCMError *)v45 initWithErrorType:29 category:5 path:v46 POSIXerrno:0];

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

  v31 = [v16 objectForKeyedSubscript:@"MCMMetadataInfo"];
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
      v52 = [v19 path];
      v38 = [(MCMError *)v51 initWithErrorType:29 category:5 path:v52 POSIXerrno:0];

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
      if (a10)
      {
        v54 = v20;
        v50 = 0;
        *a10 = v20;
      }

      else
      {
        v50 = 0;
      }

      goto LABEL_36;
    }
  }

  self->_dataProtectionClass = -1;
  v42 = [v16 objectForKeyedSubscript:@"MCMMetadataActiveDPClass"];
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
    v48 = [v17 containerClassPath];
    v49 = [v48 supportsDataProtection];

    if (v49)
    {
      self->_dataProtectionClass = 0;
    }
  }

  v50 = 1;
LABEL_36:

  v55 = *MEMORY[0x1E69E9840];
  return v50;
}

- (id)initByReadingAndValidatingMetadataAtFileURL:(id)a3 containerPath:(id)a4 userIdentity:(id)a5 containerClass:(unint64_t)a6 userIdentityCache:(id)a7 error:(id *)a8
{
  v23[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v22.receiver = self;
  v22.super_class = MCMMetadata;
  v23[0] = 0;
  v16 = [(MCMMetadataMinimal *)&v22 initByReadingAndValidatingMetadataAtFileURL:v15 containerPath:a4 userIdentity:a5 containerClass:a6 userIdentityCache:a7 error:v23];
  v17 = v23[0];
  v18 = v17;
  if (v16)
  {
    objc_storeStrong(v16 + 9, a3);
  }

  else if (a8)
  {
    v19 = v17;
    *a8 = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (MCMMetadata)initWithContainerIdentity:(id)a3 info:(id)a4 containerPath:(id)a5 userManagedAssetsDirName:(id)a6 schemaVersion:(id)a7 dataProtectionClass:(int)a8 fsNode:(id)a9 creator:(id)a10 userIdentityCache:(id)a11
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = a4;
  v17 = a5;
  v27 = a6;
  v26 = a9;
  v18 = a10;
  v29.receiver = self;
  v29.super_class = MCMMetadata;
  v19 = [(MCMMetadataMinimal *)&v29 initWithContainerIdentity:a3 containerPath:v17 schemaVersion:a7 userIdentityCache:a11];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_info, a4);
    objc_storeStrong(&v20->_userManagedAssetsDirName, a6);
    v20->_dataProtectionClass = a8;
    objc_storeStrong(&v20->_fsNode, a9);
    objc_storeStrong(&v20->_creator, a10);
    v21 = [v17 metadataURL];
    fileURL = v20->_fileURL;
    v20->_fileURL = v21;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v20;
}

- (MCMMetadata)initWithContainerIdentity:(id)a3 containerPath:(id)a4 schemaVersion:(id)a5 userIdentityCache:(id)a6
{
  result = [(MCMMetadata *)self initWithContainerIdentity:a3 info:MEMORY[0x1E695E0F8] containerPath:a4 userManagedAssetsDirName:0 schemaVersion:a5 dataProtectionClass:0xFFFFFFFFLL fsNode:0 creator:0 userIdentityCache:a6, *MEMORY[0x1E69E9840]];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end