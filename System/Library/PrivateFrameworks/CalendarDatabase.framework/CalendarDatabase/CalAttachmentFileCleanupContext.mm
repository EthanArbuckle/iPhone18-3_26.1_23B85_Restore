@interface CalAttachmentFileCleanupContext
- (CalAttachmentFileCleanupContext)initWithExternalID:(id)a3 storeUUID:(id)a4 database:(CalDatabase *)a5;
- (CalAttachmentFileCleanupContext)initWithStore:(void *)a3;
- (id)description;
- (void)addAttachmentToDelete:(id)a3;
- (void)cleanup;
- (void)markStoreAsDeleted;
@end

@implementation CalAttachmentFileCleanupContext

- (CalAttachmentFileCleanupContext)initWithStore:(void *)a3
{
  v9.receiver = self;
  v9.super_class = CalAttachmentFileCleanupContext;
  v4 = [(CalAttachmentFileCleanupContext *)&v9 init];
  if (v4)
  {
    v5 = CalCopyDatabaseForRecord();
    v6 = _CalAttachmentFileCopyAttachmentContainerForStore(a3, v5);
    storeAttachmentContainer = v4->_storeAttachmentContainer;
    v4->_storeAttachmentContainer = v6;

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v4;
}

- (CalAttachmentFileCleanupContext)initWithExternalID:(id)a3 storeUUID:(id)a4 database:(CalDatabase *)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CalAttachmentFileCleanupContext;
  v10 = [(CalAttachmentFileCleanupContext *)&v14 init];
  if (v10)
  {
    v11 = _CalAttachmentFileCopyAttachmentContainerForStoreProperties(v8, v9, a5);
    storeAttachmentContainer = v10->_storeAttachmentContainer;
    v10->_storeAttachmentContainer = v11;
  }

  return v10;
}

- (void)addAttachmentToDelete:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_deleteEntireContainer)
  {
    attachmentUUIDsToDelete = self->_attachmentUUIDsToDelete;
    v9 = v5;
    if (!attachmentUUIDsToDelete)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_attachmentUUIDsToDelete;
      self->_attachmentUUIDsToDelete = v7;

      attachmentUUIDsToDelete = self->_attachmentUUIDsToDelete;
    }

    v4 = [(NSMutableArray *)attachmentUUIDsToDelete addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)markStoreAsDeleted
{
  self->_deleteEntireContainer = 1;
  attachmentUUIDsToDelete = self->_attachmentUUIDsToDelete;
  self->_attachmentUUIDsToDelete = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)cleanup
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = v3;
  if (!self->_deleteEntireContainer)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->_attachmentUUIDsToDelete;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (!v13)
    {
      goto LABEL_22;
    }

    v15 = v13;
    v16 = *v32;
    *&v14 = 138412546;
    v28 = v14;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v32 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = [(NSURL *)self->_storeAttachmentContainer URLByAppendingPathComponent:*(*(&v31 + 1) + 8 * v17), v28];
      v30 = 0;
      v19 = [v4 removeItemAtURL:v18 error:&v30];
      v20 = v30;
      v21 = CDBLogHandle;
      if (v19)
      {
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v18;
          v22 = v21;
          v23 = OS_LOG_TYPE_DEFAULT;
          v24 = "Deleted attachment at path %@";
          v25 = 12;
LABEL_15:
          _os_log_impl(&dword_1DEBB1000, v22, v23, v24, buf, v25);
        }
      }

      else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = v28;
        v38 = v18;
        v39 = 2112;
        v40 = v20;
        v22 = v21;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "Failed to delete attachment at path %@: %@";
        v25 = 22;
        goto LABEL_15;
      }

      if (v15 == ++v17)
      {
        v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (!v15)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }
  }

  storeAttachmentContainer = self->_storeAttachmentContainer;
  v35 = 0;
  v6 = [v3 removeItemAtURL:storeAttachmentContainer error:&v35];
  obj = v35;
  v7 = CDBLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_storeAttachmentContainer;
      *buf = 138412290;
      v38 = v8;
      v9 = "Deleted attachments for deleted store at path %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_21:
      _os_log_impl(&dword_1DEBB1000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v26 = self->_storeAttachmentContainer;
    *buf = 138412546;
    v38 = v26;
    v39 = 2112;
    v40 = obj;
    v9 = "Failed to delete attachments for deleted store at path %@: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_21;
  }

LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CalAttachmentFileCleanupContext;
  v4 = [(CalAttachmentFileCleanupContext *)&v9 description];
  storeAttachmentContainer = self->_storeAttachmentContainer;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_deleteEntireContainer];
  v7 = [v3 stringWithFormat:@"[%@], _storeAttachmentContainer: [%@], _deleteEntireContainer: [%@], _attachmentUUIDsToDelete: [%@]", v4, storeAttachmentContainer, v6, self->_attachmentUUIDsToDelete];

  return v7;
}

@end