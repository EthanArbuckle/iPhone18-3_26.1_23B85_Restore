@interface EDAttachmentPersistenceManager
+ (OS_os_log)log;
+ (__CFString)createFilenameForAttachmentName:(uint64_t)a1;
+ (id)attachmentDirectoryURLWithBasePath:(id)a3;
+ (void)removeSynapseAttachmentAttributesForMessages:(id)a3;
- (BOOL)persistAttachmentMetadata:(id)a3;
- (EDAttachmentFileWriter)_createAttachmentFileWriterForAttachmentMetadata:(void *)a3 basePath:(void *)a4 downloadDate:(void *)a5 queue:(void *)a6 compressionQueue:(void *)a7 completion:;
- (EDAttachmentMetadata)_updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:(void *)a3 metadata:(void *)a4 basePath:(void *)a5 digest:(void *)a6 downloadDate:;
- (EDAttachmentPersistenceManager)initWithDatabase:(id)a3 messagePersistence:(id)a4;
- (id)_accountIdentifiersByAttachmentIDs:(uint64_t)a1;
- (id)_attachmentURLForAttachment:(void *)a3 basePath:;
- (id)_attachmentURLForAttachmentID:(void *)a3 nameOnDisk:(void *)a4 basePath:;
- (id)_attachmentURLForAttachmentMetadata:(void *)a3 basePath:;
- (id)_attachmentURLWithBasePath:(void *)a3 attachmentID:(void *)a4 nameOnDisk:;
- (id)_attachmentURLsAndNamesForMetadata:(void *)a3 basePath:;
- (id)_createTemporaryURLForAttachmentMetadata:(void *)a3 basePath:;
- (id)_temporaryFileURLWithBasePath:(void *)a3 name:;
- (id)_updateAttachmentIDAndCreateFinalFileURLForFile:(void *)a3 metadata:(void *)a4 basePath:(void *)a5 digest:(void *)a6 downloadDate:;
- (id)_updateAttachmentURL:(void *)a3 attachmentName:;
- (id)addSynapseAttributesToAttachmentWithURL:(id)a3 contentType:(id)a4 usingGenerator:(id)a5;
- (id)allAttachmentsInfoForGlobalMessageIDs:(id)a3 basePath:(id)a4;
- (id)attachmentDirectoryURLForMessageID:(int64_t)a3 basePath:(id)a4;
- (id)attachmentURLForGlobalMessageID:(int64_t)a3 mimePartNumber:(id)a4 basePath:(id)a5;
- (id)attachmentURLForGlobalMessageID:(int64_t)a3 remoteURL:(id)a4 basePath:(id)a5;
- (id)attachmentURLForMessageAttachmentID:(id)a3 basePath:(id)a4;
- (id)attachmentURLsForGlobalMessageIDs:(id)a3;
- (id)createAttachmentFileWriterForAttachmentMetadata:(id)a3 basePath:(id)a4 downloadDate:(id)a5 queue:(id)a6 compressionQueue:(id)a7 completion:(id)a8;
- (uint64_t)_moveAttachmentAtURL:(void *)a3 toURL:(uint64_t)a4 outError:;
- (uint64_t)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(void *)a3 orURL:(void *)a4 attachmentMetadata:(void *)a5 basePath:(int)a6 shouldUpdateAttachmentID:;
- (uint64_t)_persistAttachmentWithWrapper:(id *)a1 orURL:(void *)a2 attachmentMetadata:(void *)a3 basePath:(void *)a4 error:(void *)a5;
- (uint64_t)_writeAttachment:(void *)a3 toDirectory:(void *)a4 outError:;
- (uint64_t)_writeFileWrapper:(void *)a3 toURL:(void *)a4 outError:;
- (uint64_t)removeDatabaseAttachments:(uint64_t)a1;
- (uint64_t)removeFilesystemAttachmentsByAccountIdentifier:(uint64_t)a1;
- (void)_createParentDirectoryForFile:(uint64_t)a1;
- (void)_didCompleteWritingAttachmentToFile:(void *)a3 basePath:(void *)a4 digest:(void *)a5 metadata:(void *)a6 downloadDate:;
- (void)_tempDirectoryForArchiveAttachmentsWithParentDirectory:(void *)a1;
- (void)insertMimePartAttachments:(id)a3 forGlobalMessageID:(int64_t)a4;
- (void)isDeletingMessages:(id)a3;
- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceIsDeletingMessages:(id)a3 generationWindow:(id)a4;
- (void)persistenceWillDeleteMessages:(id)a3;
- (void)willDeleteAttachmentsForMessages:(id)a3;
@end

@implementation EDAttachmentPersistenceManager

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__EDAttachmentPersistenceManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_12 != -1)
  {
    dispatch_once(&log_onceToken_12, block);
  }

  v2 = log_log_12;

  return v2;
}

void __37__EDAttachmentPersistenceManager_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_12;
  log_log_12 = v1;
}

+ (id)attachmentDirectoryURLWithBasePath:(id)a3
{
  v3 = [a3 URLByAppendingPathComponent:@"AttachmentData" isDirectory:1];

  return v3;
}

+ (__CFString)createFilenameForAttachmentName:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 ef_sanitizedFileName];
  if (![(__CFString *)v3 length]|| [(__CFString *)v3 length]> 0xFF || ([(__CFString *)v3 isEqualToString:@"."]& 1) != 0 || [(__CFString *)v3 isEqualToString:@".."])
  {

    v3 = @"attachment";
  }

  return v3;
}

- (EDAttachmentPersistenceManager)initWithDatabase:(id)a3 messagePersistence:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EDAttachmentPersistenceManager;
  v8 = [(EDAttachmentPersistenceManager *)&v14 init];
  if (v8)
  {
    v9 = [[EDAttachmentPersistence alloc] initWithDatabase:v6];
    attachmentPersistence = v8->_attachmentPersistence;
    v8->_attachmentPersistence = v9;

    objc_storeStrong(&v8->_messagePersistence, a4);
    v11 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDAttachmentPersistenceManager" qualityOfService:17];
    synapseAttributesScheduler = v8->_synapseAttributesScheduler;
    v8->_synapseAttributesScheduler = v11;
  }

  return v8;
}

- (uint64_t)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(void *)a3 orURL:(void *)a4 attachmentMetadata:(void *)a5 basePath:(int)a6 shouldUpdateAttachmentID:
{
  v96 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v79 = a4;
  v78 = a5;
  v81 = v12;
  if (!a1)
  {
    v72 = 0;
    goto LABEL_89;
  }

  v80 = *(a1 + 8);
  if (v11)
  {
    v13 = [v11 preferredFilename];
    v14 = v13;
    if (!v13)
    {
      v14 = [v11 filename];
    }

    v15 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:v14];
    if (!v13)
    {
    }

    [v11 setPreferredFilename:v15];
    [v11 setFilename:v15];
    if ([v11 isDirectory])
    {
      if (!v81)
      {
        v82 = 0;
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v18 = [v11 regularFileContents];
    v82 = [EDAttachmentPersistence hashForAttachmentData:v18];
  }

  else
  {
    if (v12)
    {
      v16 = [v12 ef_lastPathComponent];
      v17 = [v16 sanitizedString];
      v15 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:v17];

LABEL_12:
      v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v81];
      if (!v18)
      {
        v19 = EDAttachmentsLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v81 orURL:v19 attachmentMetadata:? basePath:? shouldUpdateAttachmentID:?];
        }

        v82 = 0;
        v87 = 0;
        goto LABEL_88;
      }

      v82 = [EDAttachmentPersistence hashForAttachmentData:v18];
      goto LABEL_19;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:sel__persistAndUpdateAttachmentPersistenceTableFromFileWrapper_orURL_attachmentMetadata_basePath_shouldUpdateAttachmentID_ object:a1 file:@"EDAttachmentPersistenceManager.m" lineNumber:88 description:@"Need to have either a fileWrapper or a URL"];
    v15 = 0;
    v82 = 0;
  }

LABEL_19:

LABEL_20:
  v20 = EDAttachmentsLog();
  v75 = a6;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v79 globalMessageID];
    v22 = [v79 mimePartNumber];
    *buf = 138543874;
    v91 = v82;
    v92 = 2048;
    v93 = v21;
    v94 = 2114;
    v95 = v22;
    _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Created hash %{public}@ for attachment for globalMessageID %lld MIME part %{public}@", buf, 0x20u);
  }

  if (v11)
  {
    v23 = [v11 fileAttributes];
    v24 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
    v77 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
    v76 = v24;
  }

  else
  {
    v25 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = [v81 path];
    v23 = [v25 attributesOfItemAtPath:v26 error:0];

    v27 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
    v77 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
    v76 = v27;
    if (!v27 || !v77)
    {
      v49 = EDAttachmentsLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v81 orURL:v49 attachmentMetadata:? basePath:? shouldUpdateAttachmentID:?];
      }

      v87 = 0;
      goto LABEL_87;
    }
  }

  v28 = EDAttachmentsLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Checking if the attachment hash already exists in the attachments table", buf, 2u);
  }

  v29 = [v80 uniqueAttachmentDataForHash:v82];
  v23 = v29;
  v30 = *MEMORY[0x1E699A728];
  if (!v29)
  {
    v33 = [[EDAttachmentMetadata alloc] initWithAttachmentHash:v82 nameOnDisk:v15 size:v76 downloadDate:v77];
    v43 = EDAttachmentsLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C61EF000, v43, OS_LOG_TYPE_DEFAULT, "No existing attachment found. Adding to the attachments table", buf, 2u);
    }

    v44 = [v80 insertAttachmentMetadata:v33];
    if (v44 == v30)
    {
      v41 = 0;
LABEL_62:
      v34 = EDAttachmentsLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [v11 preferredFilename];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:];
      }

      v42 = 0;
      goto LABEL_65;
    }

    v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v44];
    v51 = [v78 URLByAppendingPathComponent:v50 isDirectory:1];

    v52 = EDAttachmentsLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = [v11 preferredFilename];
      *buf = 134218498;
      v91 = v44;
      v92 = 2112;
      v93 = v53;
      v94 = 2112;
      v95 = v51;
      _os_log_impl(&dword_1C61EF000, v52, OS_LOG_TYPE_DEFAULT, "Persisting attachment %lld %@ to disk at directory %@", buf, 0x20u);
    }

    if (v11)
    {
      v86 = 0;
      v54 = [(EDAttachmentPersistenceManager *)a1 _writeAttachment:v11 toDirectory:v51 outError:&v86];
      v41 = v86;

      if ((v54 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v58 = [v51 URLByAppendingPathComponent:v15];
      v85 = 0;
      v59 = [(EDAttachmentPersistenceManager *)a1 _moveAttachmentAtURL:v81 toURL:v58 outError:&v85];
      v41 = v85;

      if (!v59)
      {
        goto LABEL_62;
      }
    }

    v34 = EDAttachmentsLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v11 preferredFilename];
      *buf = 134218242;
      v91 = v44;
      v92 = 2112;
      v93 = v55;
      _os_log_impl(&dword_1C61EF000, v34, OS_LOG_TYPE_DEFAULT, "Persisted attachment %lld %@ to disk", buf, 0x16u);
    }

    v42 = 1;
    goto LABEL_65;
  }

  v31 = MEMORY[0x1E696AEC0];
  v32 = [v29 attachmentID];
  v33 = [v31 stringWithFormat:@"%@", v32];

  v34 = [v78 URLByAppendingPathComponent:v33 isDirectory:1];
  v35 = [v34 URLByAppendingPathComponent:v15];
  v36 = [v35 relativePath];

  v37 = EDAttachmentsLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v91 = v36;
    _os_log_impl(&dword_1C61EF000, v37, OS_LOG_TYPE_DEFAULT, "Found the attachment in the attachments table. Checking if it exists on disk at %@", buf, 0xCu);
  }

  v38 = [MEMORY[0x1E696AC08] defaultManager];
  v39 = [v38 fileExistsAtPath:v36];

  if ((v39 & 1) == 0)
  {
    v45 = EDAttachmentsLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v11 preferredFilename];
      *buf = 138412290;
      v91 = v46;
      _os_log_impl(&dword_1C61EF000, v45, OS_LOG_TYPE_DEFAULT, "No existing attachment found on disk. Writing attachment %@ to disk", buf, 0xCu);
    }

    if (v11)
    {
      v84 = 0;
      v47 = [(EDAttachmentPersistenceManager *)a1 _writeAttachment:v11 toDirectory:v34 outError:&v84];
      v41 = v84;
      if (v47)
      {
LABEL_44:
        v40 = EDAttachmentsLog();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [v11 preferredFilename];
          *buf = 138412290;
          v91 = v48;
          _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "Persisted attachment %@ to disk with existing metadata", buf, 0xCu);
        }

        v42 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v56 = [v34 URLByAppendingPathComponent:v15];
      v83 = 0;
      v57 = [(EDAttachmentPersistenceManager *)a1 _moveAttachmentAtURL:v81 toURL:v56 outError:&v83];
      v41 = v83;

      if (v57)
      {
        goto LABEL_44;
      }
    }

    v40 = EDAttachmentsLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [v11 preferredFilename];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:];
    }

    goto LABEL_35;
  }

  v40 = EDAttachmentsLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_DEFAULT, "Found the attachment on disk. No write needed", buf, 2u);
  }

  v41 = 0;
LABEL_35:
  v42 = 0;
LABEL_47:

  v44 = v30;
LABEL_65:

  v60 = [v23 attachmentID];
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v44 == v30;
  }

  v62 = !v61;

  if (v62)
  {
    v63 = [v23 attachmentID];
    v64 = v63;
    if (!v63)
    {
      v64 = [MEMORY[0x1E696AD98] numberWithLongLong:v44];
    }

    [v79 setAttachmentID:v64];
    if (!v63)
    {
    }

    v65 = EDAttachmentsLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v23 attachmentID];
      *v88 = 138412290;
      v89 = v66;
      _os_log_impl(&dword_1C61EF000, v65, OS_LOG_TYPE_DEFAULT, "Checking if we need to update or insert the attachment metadata in the message_attachments table for attachment: %@", v88, 0xCu);
    }

    if (v75)
    {
      v67 = EDAttachmentsLog();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [v23 attachmentID];
        *v88 = 138412290;
        v89 = v68;
        _os_log_impl(&dword_1C61EF000, v67, OS_LOG_TYPE_DEFAULT, "Update the message_attachments table with the updated attachment ID: %@", v88, 0xCu);
      }

      v69 = [v80 updateAttachmentIDForMessageAttachment:v79];
    }

    else
    {
      v70 = EDAttachmentsLog();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = [v79 attachmentID];
        *v88 = 138412290;
        v89 = v71;
        _os_log_impl(&dword_1C61EF000, v70, OS_LOG_TYPE_DEFAULT, "Create a new entry into the message_attachments table with attachment ID: %@", v88, 0xCu);
      }

      v69 = [v80 insertMessageAttachmentMetadata:v79];
    }

    v42 = v69;
  }

  v87 = v42;

LABEL_87:
LABEL_88:

  v72 = v87;
LABEL_89:

  v73 = *MEMORY[0x1E69E9840];
  return v72;
}

- (uint64_t)_writeAttachment:(void *)a3 toDirectory:(void *)a4 outError:
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v24 = 0;
    goto LABEL_25;
  }

  v9 = [v7 isDirectory];
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v12 = [v11 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v30];
  v13 = v30;

  if (v12)
  {
    v14 = [v7 preferredFilename];
    if (v14 || ([v7 filename], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (v9)
      {
        [v8 URLByAppendingPathComponent:v14 isDirectory:1];
      }

      else
      {
        [v8 URLByAppendingPathComponent:v14 isDirectory:0];
      }
      v16 = ;
      v29 = v13;
      v17 = [v16 checkResourceIsReachableAndReturnError:&v29];
      v18 = v29;

      if (v17)
      {
        v19 = EDAttachmentsLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [v16 path];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
        }

        v27 = v18;
        v15 = [(EDAttachmentPersistenceManager *)a1 _writeFileWrapper:v7 toURL:v16 outError:&v27];
        v13 = v27;

        goto LABEL_22;
      }

      v20 = [v18 domain];
      if ([v20 isEqualToString:*MEMORY[0x1E696A250]])
      {
        v21 = [v18 code] == 260;

        if (v21)
        {
          v28 = v18;
          v15 = [(EDAttachmentPersistenceManager *)a1 _writeFileWrapper:v7 toURL:v16 outError:&v28];
          v13 = v28;

          goto LABEL_22;
        }
      }

      else
      {
      }

      v22 = EDAttachmentsLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [v16 path];
        objc_claimAutoreleasedReturnValue();
        [v18 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
      }

      v15 = 0;
      v13 = v18;
      goto LABEL_22;
    }

    v14 = EDAttachmentsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v8 path];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
    }
  }

  else
  {
    v14 = EDAttachmentsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [v8 path];
      objc_claimAutoreleasedReturnValue();
      [v13 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _writeAttachment:toDirectory:outError:];
    }
  }

  v15 = 0;
  v16 = 0;
LABEL_22:

  objc_autoreleasePoolPop(v10);
  if (a4)
  {
    v23 = v13;
    *a4 = v13;
  }

  v31 = v15;

  v24 = v31;
LABEL_25:

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

- (uint64_t)_moveAttachmentAtURL:(void *)a3 toURL:(uint64_t)a4 outError:
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_14;
  }

  v10 = [v8 URLByDeletingLastPathComponent];
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:a4];

  if (v12)
  {
    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      [v13 removeItemAtURL:v7 error:0];

LABEL_12:
      v14 = 1;
      goto LABEL_13;
    }

    v15 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [v15 moveItemAtURL:v7 toURL:v9 error:a4];

    if (v14)
    {
      v16 = EFMarkFileAsPurgeable();
      v17 = 0;
      if ((v16 & 1) == 0)
      {
        v18 = EDAttachmentsLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [v9 path];
          objc_claimAutoreleasedReturnValue();
          [v17 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _moveAttachmentAtURL:toURL:outError:];
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

LABEL_14:
  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

- (uint64_t)_persistAttachmentWithWrapper:(id *)a1 orURL:(void *)a2 attachmentMetadata:(void *)a3 basePath:(void *)a4 error:(void *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v38 = a3;
  v9 = a4;
  v40 = a5;
  v46 = v9;
  if (!a1)
  {
    v17 = 0;
    goto LABEL_49;
  }

  v10 = [v9 globalMessageID];
  v42 = [v9 mimePartNumber];
  v37 = [v9 remoteURL];
  v41 = a1[1];
  v11 = EDAttachmentsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Checking to see if the attachment metadata already exists in the message_attachments table", buf, 2u);
  }

  v52 = 0;
  if (v42)
  {
    v45 = [v41 messageAttachmentExistsForGlobalMessageID:v10 mimePartNumber:v42 hasAttachmentEntry:&v52];
LABEL_8:
    if (v52 == 1 && v45)
    {
      v12 = EDAttachmentsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "Found both the attachment metadata and the attachment in the message_attachments and attachments table. No insertion needed.", buf, 2u);
      }

      v13 = [(EDAttachmentPersistenceManager *)a1 _attachmentURLForAttachmentMetadata:v46 basePath:v40];
      if (v43)
      {
        v14 = [(EDAttachmentPersistenceManager *)a1 _writeFileWrapper:v43 toURL:v13 outError:0];
      }

      else
      {
        v14 = [(EDAttachmentPersistenceManager *)a1 _moveAttachmentAtURL:v38 toURL:v13 outError:0];
      }

      v17 = v14;
    }

    else
    {
      if (v52)
      {
        v34 = [MEMORY[0x1E696AAA8] currentHandler];
        [v34 handleFailureInMethod:sel__persistAttachmentWithWrapper_orURL_attachmentMetadata_basePath_error_ object:a1 file:@"EDAttachmentPersistenceManager.m" lineNumber:364 description:@"We can't possibly have found an attachment entry without a message_attachment"];
      }

      v44 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:v40];
      v36 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = [v43 isRegularFile] ^ 1;
      if (v38)
      {
        LOBYTE(v15) = 0;
      }

      if (v15)
      {
        v18 = EDAttachmentsLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_DEFAULT, "Persisting archive attachment", buf, 2u);
        }

        v19 = [(EDAttachmentPersistenceManager *)a1 _tempDirectoryForArchiveAttachmentsWithParentDirectory:v44];
        [(EDAttachmentPersistenceManager *)a1 _writeAttachment:v43 toDirectory:v19 outError:0];
        [v36 contentsOfDirectoryAtURL:v19 includingPropertiesForKeys:MEMORY[0x1E695E0F0] options:16 error:0];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        obj = v49 = 0u;
        v20 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v20)
        {
          LOBYTE(v17) = 0;
          v22 = *v49;
          *&v21 = 138412290;
          v35 = v21;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v49 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = [*(*(&v48 + 1) + 8 * i) relativeString];
              v25 = [v24 stringByRemovingPercentEncoding];
              v26 = [v19 URLByAppendingPathComponent:v25];

              v27 = objc_alloc(MEMORY[0x1E699B7C0]);
              v47 = 0;
              v28 = [v27 initWithURL:v26 options:1 error:&v47];
              v29 = v47;
              if ([v28 isDirectory])
              {
                v17 = EDAttachmentsLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v35;
                  v54 = v26;
                  _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Persisting archive attachment from temp directory %@", buf, 0xCu);
                }

                LOBYTE(v17) = [(EDAttachmentPersistenceManager *)a1 _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v28 orURL:0 attachmentMetadata:v46 basePath:v44 shouldUpdateAttachmentID:v45];
              }

              if ((v17 & 1) == 0)
              {
                v31 = EDAttachmentsLog();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  [v43 preferredFilename];
                  objc_claimAutoreleasedReturnValue();
                  [EDAttachmentPersistenceManager _persistAttachmentWithWrapper:orURL:attachmentMetadata:basePath:error:];
                }

                goto LABEL_45;
              }

              v17 = 1;
            }

            v20 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        else
        {
LABEL_45:
          v17 = 0;
        }

        [v36 removeItemAtURL:v19 error:0];
      }

      else
      {
        v16 = EDAttachmentsLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Persisting regular file attachment", buf, 2u);
        }

        v17 = [(EDAttachmentPersistenceManager *)a1 _persistAndUpdateAttachmentPersistenceTableFromFileWrapper:v43 orURL:v38 attachmentMetadata:v46 basePath:v44 shouldUpdateAttachmentID:v45];
      }

      v13 = v44;
    }

    goto LABEL_48;
  }

  if (v37)
  {
    v45 = [v41 messageAttachmentExistsForGlobalMessageID:v10 remoteURL:v37 hasAttachmentEntry:&v52];
    goto LABEL_8;
  }

  v13 = EDAttachmentsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    v30 = [v46 ef_publicDescription];
    [EDAttachmentPersistenceManager _persistAttachmentWithWrapper:v30 orURL:buf attachmentMetadata:? basePath:? error:?];
  }

  v17 = 0;
LABEL_48:

LABEL_49:
  v32 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)createAttachmentFileWriterForAttachmentMetadata:(id)a3 basePath:(id)a4 downloadDate:(id)a5 queue:(id)a6 compressionQueue:(id)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v13 name];

  if (v19)
  {
    v20 = v13;
  }

  else
  {
    v26 = [EDMessageAttachmentMetadata alloc];
    v21 = [v13 globalMessageID];
    v27 = [v13 mimePartNumber];
    v22 = [v13 attachmentID];
    v23 = [v13 remoteURL];
    v20 = [(EDMessageAttachmentMetadata *)v26 initWithGlobalMessageID:v21 name:@"attachment" mimePart:v27 attachmentID:v22 remoteURL:v23];
  }

  v24 = [(EDAttachmentPersistenceManager *)self _createAttachmentFileWriterForAttachmentMetadata:v20 basePath:v14 downloadDate:v15 queue:v16 compressionQueue:v17 completion:v18];

  return v24;
}

- (EDAttachmentFileWriter)_createAttachmentFileWriterForAttachmentMetadata:(void *)a3 basePath:(void *)a4 downloadDate:(void *)a5 queue:(void *)a6 compressionQueue:(void *)a7 completion:
{
  v32 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v24 = a5;
  v16 = a6;
  v17 = a7;
  if (a1)
  {
    v18 = [(EDAttachmentPersistenceManager *)a1 _attachmentURLForAttachmentMetadata:v13 basePath:v14];
    if ([v18 checkResourceIsReachableAndReturnError:0])
    {
      v19 = EDAttachmentsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        [v13 globalMessageID];
        [v13 mimePartNumber];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:];
      }

      a1 = 0;
    }

    else
    {
      v19 = [(EDAttachmentPersistenceManager *)a1 _createTemporaryURLForAttachmentMetadata:v13 basePath:v14];
      if (v19)
      {
        v20 = [EDAttachmentFileWriter alloc];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke;
        v25[3] = &unk_1E8250550;
        v26 = v13;
        v27 = v19;
        v28 = a1;
        v29 = v14;
        v30 = v15;
        v31 = v17;
        a1 = [(EDAttachmentFileWriter *)v20 initWithFinalURL:v27 queue:v24 compressionQueue:v16 completion:v25];

        v21 = v26;
      }

      else
      {
        v21 = EDAttachmentsLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [v13 globalMessageID];
          [v13 mimePartNumber];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:];
        }

        a1 = 0;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)_attachmentURLForAttachmentMetadata:(void *)a3 basePath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 mimePartNumber];

    if (v7)
    {
      v8 = [v5 globalMessageID];
      v9 = [v5 mimePartNumber];
      v10 = [a1 attachmentURLForGlobalMessageID:v8 mimePartNumber:v9 basePath:v6];
LABEL_6:
      a1 = v10;

      goto LABEL_7;
    }

    v11 = [v5 remoteURL];

    if (v11)
    {
      v12 = [v5 globalMessageID];
      v9 = [v5 remoteURL];
      v10 = [a1 attachmentURLForGlobalMessageID:v12 remoteURL:v9 basePath:v6];
      goto LABEL_6;
    }

    a1 = 0;
  }

LABEL_7:

  return a1;
}

- (id)_createTemporaryURLForAttachmentMetadata:(void *)a3 basePath:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 name];
    a1 = [(EDAttachmentPersistenceManager *)a1 _temporaryFileURLWithBasePath:v6 name:v7];
  }

  return a1;
}

void __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = EDAttachmentsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke_cold_1(&v17, [*(a1 + 32) globalMessageID]);
    }

    v7 = [MEMORY[0x1E696AC08] defaultManager];
    [v7 removeItemAtURL:*(a1 + 40) error:0];
LABEL_5:

    goto LABEL_11;
  }

  v8 = EDAttachmentsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) globalMessageID];
    v10 = [*(a1 + 32) mimePartNumber];
    v17 = 134218242;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_1C61EF000, v8, OS_LOG_TYPE_DEFAULT, "Finished writing attachment file for global message ID %llu MIME part [%{public}@] to temporary URL", &v17, 0x16u);
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 64);
  v7 = v15;
  if (!v15)
  {
    v7 = [MEMORY[0x1E695DF00] date];
  }

  [(EDAttachmentPersistenceManager *)v11 _didCompleteWritingAttachmentToFile:v14 basePath:v12 digest:v5 metadata:v13 downloadDate:v7];
  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_11:
  (*(*(a1 + 72) + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didCompleteWritingAttachmentToFile:(void *)a3 basePath:(void *)a4 digest:(void *)a5 metadata:(void *)a6 downloadDate:
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v16 = [(EDAttachmentPersistenceManager *)a1 _updateAttachmentIDAndCreateFinalFileURLForFile:v11 metadata:v14 basePath:v12 digest:v13 downloadDate:v15];
    if (v16)
    {
      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v24 = 0;
      v18 = [v17 moveItemAtURL:v11 toURL:v16 error:&v24];
      v19 = v24;

      if (v18)
      {
        v20 = EDAttachmentsLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          -[EDAttachmentPersistenceManager _didCompleteWritingAttachmentToFile:basePath:digest:metadata:downloadDate:].cold.2(v25, [v14 globalMessageID]);
        }
      }

      else
      {
        v22 = EDAttachmentsLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [v14 globalMessageID];
          [v19 ef_publicDescription];
          objc_claimAutoreleasedReturnValue();
          [EDAttachmentPersistenceManager _didCompleteWritingAttachmentToFile:basePath:digest:metadata:downloadDate:];
        }

        v20 = [MEMORY[0x1E696AC08] defaultManager];
        [v20 removeItemAtURL:v11 error:0];
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696AC08] defaultManager];
      [v21 removeItemAtURL:v11 error:0];
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_temporaryFileURLWithBasePath:(void *)a3 name:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 URLByAppendingPathComponent:@"__temp"];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:0];

    v9 = [MEMORY[0x1E695DF88] dataWithLength:18];
    arc4random_buf([v9 mutableBytes], objc_msgSend(v9, "length"));
    v10 = [v9 base64EncodedStringWithOptions:0];
    v11 = [v10 stringByReplacingOccurrencesOfString:@"/" withString:@"-"];

    v12 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:v6];
    v13 = [v12 stringByAppendingPathExtension:v11];

    v14 = [v7 URLByAppendingPathComponent:v13 isDirectory:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_updateAttachmentIDAndCreateFinalFileURLForFile:(void *)a3 metadata:(void *)a4 basePath:(void *)a5 digest:(void *)a6 downloadDate:
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    v16 = [(EDAttachmentPersistenceManager *)a1 _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:v11 metadata:v12 basePath:v13 digest:v14 downloadDate:v15];
    v17 = [v16 attachmentID];

    if (v17)
    {
      v18 = [v12 attachmentID];

      if (v18)
      {
        v19 = EDAttachmentsLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v16 attachmentID];
          v29 = 138412546;
          v30 = v20;
          v31 = 2048;
          v32 = [v12 globalMessageID];
          _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Updated nil attachment ID to %@ for global message ID %llu", &v29, 0x16u);
        }
      }

      v21 = [v16 attachmentID];
      [v12 setAttachmentID:v21];

      if ([*(a1 + 8) updateAttachmentIDForMessageAttachment:v12] & 1) != 0 || (objc_msgSend(*(a1 + 8), "insertMessageAttachmentMetadata:", v12))
      {
        v22 = [v16 attachmentID];
        v23 = [v16 nameOnDisk];
        v24 = [(EDAttachmentPersistenceManager *)a1 _attachmentURLWithBasePath:v13 attachmentID:v22 nameOnDisk:v23];

        [(EDAttachmentPersistenceManager *)a1 _createParentDirectoryForFile:v24];
LABEL_14:

        goto LABEL_15;
      }

      v26 = EDAttachmentsLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [v12 attachmentID];
        objc_claimAutoreleasedReturnValue();
        [v12 globalMessageID];
        [EDAttachmentPersistenceManager _updateAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:];
      }
    }

    else
    {
      v25 = EDAttachmentsLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        -[EDAttachmentPersistenceManager _updateAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.2(&v29, [v12 globalMessageID]);
      }

      v26 = [MEMORY[0x1E696AC08] defaultManager];
      [v26 removeItemAtURL:v11 error:0];
    }

    v24 = 0;
    goto LABEL_14;
  }

  v24 = 0;
LABEL_15:

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

- (EDAttachmentMetadata)_updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:(void *)a3 metadata:(void *)a4 basePath:(void *)a5 digest:(void *)a6 downloadDate:
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (a1)
  {
    if (v14)
    {
      if ([v14 length] == 32)
      {
        v16 = *(a1 + 8);
        v17 = [v14 ef_hexString];
        v18 = [v16 uniqueAttachmentDataForHash:v17];

        v19 = [(EDAttachmentMetadata *)v18 attachmentID];

        if (v19)
        {
          v20 = EDAttachmentsLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v14 bytes];
            v22 = [v12 globalMessageID];
            v23 = [(EDAttachmentMetadata *)v18 attachmentID];
            *buf = 68158466;
            v45 = 32;
            v46 = 2096;
            v47 = v21;
            v48 = 2048;
            v49 = v22;
            v50 = 2048;
            v51 = [v23 unsignedLongLongValue];
            _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_DEFAULT, "Found existing attachment with digest %.32P (global ID %llu): attachment ID: %llu", buf, 0x26u);
          }
        }

        else
        {

          v43 = 0;
          v26 = *MEMORY[0x1E695DB50];
          v42 = 0;
          v27 = [v11 getResourceValue:&v43 forKey:v26 error:&v42];
          v20 = v43;
          v40 = v42;
          if ((v27 & 1) == 0)
          {
            v28 = EDAttachmentsLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [v12 globalMessageID];
              [v40 ef_publicDescription];
              objc_claimAutoreleasedReturnValue();
              [EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:];
            }
          }

          v29 = [v12 name];
          v41 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:v29];

          v30 = [EDAttachmentMetadata alloc];
          v31 = [v14 ef_hexString];
          v32 = [(EDAttachmentMetadata *)v30 initWithAttachmentHash:v31 nameOnDisk:v41 size:v20 downloadDate:v15];

          v33 = [*(a1 + 8) insertAttachmentMetadata:v32];
          if (v33 == *MEMORY[0x1E699A728])
          {
            v34 = EDAttachmentsLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              -[EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.3(buf, [v12 globalMessageID]);
            }

            v18 = 0;
          }

          else
          {
            v35 = EDAttachmentsLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = v14;
              v37 = [v14 bytes];
              v38 = [v12 globalMessageID];
              *buf = 68158466;
              v45 = 32;
              v46 = 2096;
              v47 = v37;
              v48 = 2048;
              v49 = v38;
              v50 = 2048;
              v51 = v33;
              _os_log_impl(&dword_1C61EF000, v35, OS_LOG_TYPE_DEFAULT, "Did insert new attachment ID for digest %.32P (global ID %llu): attachment ID: %llu", buf, 0x26u);
            }

            v39 = [MEMORY[0x1E696AD98] numberWithLongLong:v33];
            [(EDAttachmentMetadata *)v32 setAttachmentID:v39];

            v18 = v32;
          }
        }

        goto LABEL_12;
      }

      v20 = EDAttachmentsLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        -[EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.1(buf, [v12 globalMessageID]);
      }
    }

    else
    {
      v20 = EDAttachmentsLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        -[EDAttachmentPersistenceManager _updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:].cold.4(buf, [v12 globalMessageID]);
      }
    }

    v18 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v18 = 0;
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_attachmentURLWithBasePath:(void *)a3 attachmentID:(void *)a4 nameOnDisk:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = 0;
  if (a1 && v7 && v8 && v9)
  {
    v12 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:v7];
    v13 = [v8 stringValue];
    v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:1];
    v11 = [v14 URLByAppendingPathComponent:v10 isDirectory:0];
  }

  return v11;
}

- (void)_createParentDirectoryForFile:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = [v3 URLByDeletingLastPathComponent];
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:0];

    v3 = v6;
  }
}

- (uint64_t)_writeFileWrapper:(void *)a3 toURL:(void *)a4 outError:
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (!a1)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v31 = 0;
  v9 = [v7 writeToURL:v8 options:3 originalContentsURL:0 error:&v31];
  v10 = v31;
  if (!v9)
  {
    v14 = EDAttachmentsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = [v8 path];
      v23 = [v10 ef_publicDescription];
      *buf = 138412802;
      v33 = v7;
      v34 = 2114;
      v35 = v22;
      v36 = 2114;
      v37 = v23;
      _os_log_error_impl(&dword_1C61EF000, v14, OS_LOG_TYPE_ERROR, "Failed to write attachment file wrapper %@ to %{public}@, %{public}@", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v11 = EDAttachmentsLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 path];
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Persisting attachment to filesystem: %{public}@", buf, 0xCu);
  }

  [*(a1 + 16) setContentProtectionForAttachmentFile:v8];
  v30[1] = 0;
  v13 = EFMarkFileAsPurgeable();
  v14 = 0;
  if ((v13 & 1) == 0)
  {
    v15 = EDAttachmentsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v8 path];
      objc_claimAutoreleasedReturnValue();
      [v14 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _moveAttachmentAtURL:toURL:outError:];
    }
  }

  v16 = [v7 isDirectory];
  v17 = *(a1 + 16);
  v18 = v17;
  if (v16)
  {
    v30[0] = 0;
    v19 = [v17 compressDirectory:v8 shouldCancel:0 error:v30];
    v20 = v30[0];

    if ((v19 & 1) == 0)
    {
      v21 = EDAttachmentsLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v8 path];
        objc_claimAutoreleasedReturnValue();
        [v20 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _writeFileWrapper:toURL:outError:];
      }

LABEL_18:
    }
  }

  else
  {
    v29 = 0;
    v24 = [v17 compressFile:v8 error:&v29];
    v20 = v29;

    if ((v24 & 1) == 0)
    {
      v21 = EDAttachmentsLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [v8 path];
        objc_claimAutoreleasedReturnValue();
        [v20 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [EDAttachmentPersistenceManager _writeFileWrapper:toURL:outError:];
      }

      goto LABEL_18;
    }
  }

  if (v20)
  {
    v25 = EDAttachmentsLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [v8 path];
      objc_claimAutoreleasedReturnValue();
      [v20 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [EDAttachmentPersistenceManager _writeFileWrapper:toURL:outError:];
    }
  }

LABEL_24:
  if (a4)
  {
    v26 = v10;
    *a4 = v10;
  }

LABEL_27:
  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_tempDirectoryForArchiveAttachmentsWithParentDirectory:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[3];
    if (!v4)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [MEMORY[0x1E696AFB0] UUID];
      v7 = [v5 stringWithFormat:@"__temp_%@", v6];

      v8 = [v3 URLByAppendingPathComponent:v7];
      v9 = a1[3];
      a1[3] = v8;

      v4 = a1[3];
    }

    a1 = v4;
  }

  return a1;
}

- (uint64_t)removeDatabaseAttachments:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = EDAttachmentsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Removing attachments to delete %@ from the attachments table", &v7, 0xCu);
    }

    a1 = [*(a1 + 8) removeAttachments:v3];
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

- (uint64_t)removeFilesystemAttachmentsByAccountIdentifier:(uint64_t)a1
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    a1 = EDAttachmentsLog();
    if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_1C61EF000, a1, OS_LOG_TYPE_DEFAULT, "Removing attachments to delete %@ from the filesystem", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v8 = 0x2020000000;
    v9 = 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__EDAttachmentPersistenceManager_removeFilesystemAttachmentsByAccountIdentifier___block_invoke;
    v6[3] = &unk_1E8250578;
    v6[4] = &buf;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
    LOBYTE(a1) = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  v4 = *MEMORY[0x1E69E9840];
  return a1 & 1;
}

void __81__EDAttachmentPersistenceManager_removeFilesystemAttachmentsByAccountIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v21 = a3;
  v22 = v5;
  if ([v5 isEqualToString:@"regularAccountIdentifier"])
  {
    [MEMORY[0x1E699AE20] baseMailDirectory];
  }

  else
  {
    [EDPersonaPersistenceLayoutManager baseAccountDirectoryForPersonaIdentifier:v5];
  }
  v20 = ;
  v6 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:?];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v21;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) stringValue];
        v12 = [v6 URLByAppendingPathComponent:v11 isDirectory:1];

        v13 = EDAttachmentsLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = v12;
          _os_log_impl(&dword_1C61EF000, v13, OS_LOG_TYPE_DEFAULT, "Deleting attachment directory: %{public}@", buf, 0xCu);
        }

        v14 = *(*(a1 + 32) + 8);
        if (*(v14 + 24) == 1)
        {
          v15 = [MEMORY[0x1E696AC08] defaultManager];
          v23 = 0;
          v16 = [v15 removeItemAtURL:v12 error:&v23];
          v17 = v23;
          *(*(*(a1 + 32) + 8) + 24) = v16;
        }

        else
        {
          v17 = 0;
          *(v14 + 24) = 0;
        }

        if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
        {
          v18 = EDAttachmentsLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v29 = v12;
            _os_log_error_impl(&dword_1C61EF000, v18, OS_LOG_TYPE_ERROR, "Failed to delete attachment directory: %{public}@", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)_updateAttachmentURL:(void *)a3 attachmentName:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [EDAttachmentPersistenceManager createFilenameForAttachmentName:v6];

    if (v5)
    {
      v9 = [v5 ef_lastPathComponent];
      v10 = [v9 sanitizedString];
      v11 = [v10 localizedCompare:v8];

      if (v11)
      {
        v12 = [v5 URLByDeletingLastPathComponent];
        a1 = [v12 URLByAppendingPathComponent:v8];

        v13 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = 0;
        v14 = [v13 copyItemAtURL:v5 toURL:a1 error:&v19];
        v15 = v19;

        if (v14)
        {
          EFMarkFileAsPurgeable();
LABEL_6:

          goto LABEL_11;
        }

        if ([v15 code] == 516)
        {
          v16 = [v15 domain];
          v17 = [v16 isEqualToString:*MEMORY[0x1E696A250]];

          if (v17)
          {
            goto LABEL_6;
          }
        }
      }
    }

    a1 = v5;
  }

  else
  {
    v8 = v6;
  }

LABEL_11:

  return a1;
}

- (id)attachmentURLForGlobalMessageID:(int64_t)a3 mimePartNumber:(id)a4 basePath:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = EDAttachmentsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 path];
    v23 = 134218498;
    v24 = a3;
    v25 = 2114;
    v26 = v8;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Fetching attachment URL for globalMessageID %lld MIME part number %{public}@ at base path %@", &v23, 0x20u);
  }

  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v13 = attachmentPersistence;
  v14 = [(EDAttachmentPersistence *)v13 attachmentMetadataForMessage:a3 mimePartNumber:v8];

  v15 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachment:v14 basePath:v9];
  if (v15)
  {
    v16 = EDAttachmentsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 path];
      v23 = 138544130;
      v24 = v15;
      v25 = 2048;
      v26 = a3;
      v27 = 2114;
      v28 = v8;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Found attachment URL %{public}@ for globalMessageID %lld MIME part number %{public}@ at base path %@", &v23, 0x2Au);
    }

    v18 = v15;
  }

  else
  {
    v19 = EDAttachmentsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v9 path];
      v23 = 134218498;
      v24 = a3;
      v25 = 2114;
      v26 = v8;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Could not find attachment URL for globalMessageID %lld MIME part number %{public}@ at base path %@", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_attachmentURLForAttachment:(void *)a3 basePath:
{
  v20[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 attachmentMetadata];
    v8 = [v7 attachmentID];
    v9 = [v8 stringValue];
    if (v9)
    {
      v10 = [v7 nameOnDisk];

      if (v10)
      {
        v11 = [v7 attachmentID];
        v12 = [v7 nameOnDisk];
        v13 = [(EDAttachmentPersistenceManager *)a1 _attachmentURLWithBasePath:v6 attachmentID:v11 nameOnDisk:v12];

        v14 = [v5 messageMetadata];
        v15 = [v14 name];
        a1 = [(EDAttachmentPersistenceManager *)a1 _updateAttachmentURL:v13 attachmentName:v15];

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
    }

    v16 = EDAttachmentsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [v7 attachmentID];
      [EDAttachmentPersistenceManager _attachmentURLForAttachment:v17 basePath:v20];
    }

    a1 = 0;
    goto LABEL_9;
  }

LABEL_10:

  v18 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)attachmentURLsForGlobalMessageIDs:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v37 allKeys];
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v34 = v5;
  [(EDAttachmentPersistence *)attachmentPersistence attachmentMetadataForMessageIDs:?];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v7)
  {
    v35 = *v52;
    v41 = self;
    do
    {
      v8 = 0;
      v33 = v7;
      do
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v40 = *(*(&v51 + 1) + 8 * v8);
        v9 = [v37 objectForKey:v33];
        v36 = v8;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v38 = v9;
        v10 = v41;
        v11 = [v38 countByEnumeratingWithState:&v47 objects:v60 count:16];
        if (v11)
        {
          v39 = *v48;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v48 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v13 = *(*(&v47 + 1) + 8 * i);
              v14 = [obj objectForKeyedSubscript:v40];
              v15 = [(EDAttachmentPersistenceManager *)v10 _attachmentURLsAndNamesForMetadata:v14 basePath:v13];
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v43 objects:v59 count:16];
              if (v17)
              {
                v18 = *v44;
                do
                {
                  for (j = 0; j != v17; ++j)
                  {
                    if (*v44 != v18)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v20 = *(*(&v43 + 1) + 8 * j);
                    v21 = [v20 url];
                    v22 = v21 == 0;

                    if (!v22)
                    {
                      [v4 addObject:v20];
                    }
                  }

                  v17 = [v16 countByEnumeratingWithState:&v43 objects:v59 count:16];
                }

                while (v17);
              }

              v10 = v41;
            }

            v11 = [v38 countByEnumeratingWithState:&v47 objects:v60 count:16];
          }

          while (v11);
        }

        v8 = v36 + 1;
      }

      while (v36 + 1 != v33);
      v7 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v7);
  }

  if (v4)
  {
    v23 = EDAttachmentsLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = MEMORY[0x1E699B858];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v26 = &stru_1F45B4608;
      }

      else
      {
        v26 = [v4 componentsJoinedByString:{@", "}];
      }

      v28 = [v24 partiallyRedactedStringForString:v26];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = &stru_1F45B4608;
      }

      else
      {
        v29 = v34;
      }

      *buf = 138543618;
      v56 = v28;
      v57 = 2114;
      v58 = v29;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Found attachment URLs %{public}@ for globalMessageIDs %{public}@", buf, 0x16u);

      if ((isKindOfClass & 1) == 0)
      {
      }
    }

    v30 = v4;
  }

  else
  {
    v27 = EDAttachmentsLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = v34;
      _os_log_impl(&dword_1C61EF000, v27, OS_LOG_TYPE_DEFAULT, "Could not find attachment URLs for globalMessageIDs %{public}@", buf, 0xCu);
    }
  }

  v31 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_attachmentURLsAndNamesForMetadata:(void *)a3 basePath:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__EDAttachmentPersistenceManager__attachmentURLsAndNamesForMetadata_basePath___block_invoke;
    v9[3] = &unk_1E82505A0;
    v9[4] = a1;
    v10 = v6;
    a1 = [v5 ef_map:v9];
  }

  return a1;
}

- (id)attachmentURLForGlobalMessageID:(int64_t)a3 remoteURL:(id)a4 basePath:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = EDAttachmentsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 path];
    v23 = 134218498;
    v24 = a3;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_1C61EF000, v10, OS_LOG_TYPE_DEFAULT, "Fetching attachment URL for globalMessageID %lld remoteURL %@ at base path %@", &v23, 0x20u);
  }

  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v13 = attachmentPersistence;
  v14 = [(EDAttachmentPersistence *)v13 attachmentMetadataForMessage:a3 remoteURL:v8];

  v15 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachment:v14 basePath:v9];
  if (v15)
  {
    v16 = EDAttachmentsLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 path];
      v23 = 138544130;
      v24 = v15;
      v25 = 2048;
      v26 = a3;
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_1C61EF000, v16, OS_LOG_TYPE_DEFAULT, "Found attachment URL %{public}@ for globalMessageID %lld remoteURL %@ at base path %@", &v23, 0x2Au);
    }

    v18 = v15;
  }

  else
  {
    v19 = EDAttachmentsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v9 path];
      v23 = 134218498;
      v24 = a3;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v20;
      _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Could not find attachment URL for globalMessageID %lld remoteURL %@ at base path %@", &v23, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  return v15;
}

id __78__EDAttachmentPersistenceManager__attachmentURLsAndNamesForMetadata_basePath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699AC10];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = [v3 first];
  v8 = [v7 attachmentID];
  v9 = [v3 first];
  v10 = [v9 nameOnDisk];
  v11 = [(EDAttachmentPersistenceManager *)v5 _attachmentURLWithBasePath:v6 attachmentID:v8 nameOnDisk:v10];
  v12 = [v3 second];
  v13 = [v4 attachmentWithURL:v11 displayName:v12];

  return v13;
}

- (id)attachmentDirectoryURLForMessageID:(int64_t)a3 basePath:(id)a4
{
  v4 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:a4];

  return v4;
}

- (id)attachmentURLForMessageAttachmentID:(id)a3 basePath:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = EDAttachmentsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    [v7 path];
    objc_claimAutoreleasedReturnValue();
    [EDAttachmentPersistenceManager attachmentURLForMessageAttachmentID:basePath:];
  }

  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v10 = attachmentPersistence;
  v11 = [(EDAttachmentPersistence *)v10 attachmentMetadataForMessageAttachmentID:v6];

  v12 = [v11 attachmentMetadata];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 attachmentID];
    v15 = [v14 longLongValue];
    v16 = [v13 nameOnDisk];
    v17 = [(EDAttachmentPersistenceManager *)self _attachmentURLForAttachmentID:v15 nameOnDisk:v16 basePath:v7];

    v18 = [v11 messageMetadata];
    v19 = [v18 name];
    v20 = [(EDAttachmentPersistenceManager *)self _updateAttachmentURL:v17 attachmentName:v19];

    v21 = EDAttachmentsLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v7 path];
      v25 = 138412802;
      v26 = v20;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_1C61EF000, v21, OS_LOG_TYPE_DEFAULT, "Found attachment URL %@ for messageAttachmentID %@ at base path %@", &v25, 0x20u);
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)_attachmentURLForAttachmentID:(void *)a3 nameOnDisk:(void *)a4 basePath:
{
  v7 = a3;
  v8 = a4;
  v9 = 0;
  if (a1 && v7 && *MEMORY[0x1E699A728] != a2)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a2];
    v11 = [EDAttachmentPersistenceManager attachmentDirectoryURLWithBasePath:v8];
    v12 = [v11 URLByAppendingPathComponent:v10 isDirectory:1];
    v9 = [v12 URLByAppendingPathComponent:v7];
  }

  return v9;
}

- (id)allAttachmentsInfoForGlobalMessageIDs:(id)a3 basePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v10 = attachmentPersistence;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__EDAttachmentPersistenceManager_allAttachmentsInfoForGlobalMessageIDs_basePath___block_invoke;
  v16[3] = &unk_1E82505C8;
  v16[4] = self;
  v11 = v7;
  v17 = v11;
  v12 = v8;
  v18 = v12;
  [(EDAttachmentPersistence *)v10 enumerateAttachmentsInfoForGlobalMessageIDs:v6 withBlock:v16];

  v13 = v18;
  v14 = v12;

  return v12;
}

void __81__EDAttachmentPersistenceManager_allAttachmentsInfoForGlobalMessageIDs_basePath___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v21 = a3;
  v9 = a5;
  v10 = [(EDAttachmentPersistenceManager *)*(a1 + 32) _attachmentURLForAttachmentID:a4 nameOnDisk:v9 basePath:*(a1 + 40)];
  v11 = [EDMessageAttachmentMetadata alloc];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v13 = [(EDMessageAttachmentMetadata *)v11 initWithGlobalMessageID:a2 name:v9 mimePart:v21 attachmentID:v12 remoteURL:0];

  v14 = [MEMORY[0x1E699B848] pairWithFirst:v13 second:v10];
  v15 = *(a1 + 48);
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v17 = [v15 objectForKeyedSubscript:v16];

  if (v17)
  {
    [v17 addObject:v14];
  }

  else
  {
    v18 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
    v19 = *(a1 + 48);
    v20 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v17 = v18;
  }
}

- (void)willDeleteAttachmentsForMessages:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v21;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 account];
        v9 = [v8 baseAccount];
        v10 = [v9 personaIdentifier];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = @"regularAccountIdentifier";
        }

        v13 = v12;

        v14 = [v3 objectForKeyedSubscript:v13];
        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v3 setObject:v14 forKeyedSubscript:v13];
        }

        [v14 addObject:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v4);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__EDAttachmentPersistenceManager_willDeleteAttachmentsForMessages___block_invoke;
  v24[3] = &unk_1E8250610;
  v24[4] = self;
  v16 = v15;
  v25 = v16;
  [v3 enumerateKeysAndObjectsUsingBlock:v24];
  if ([v16 count])
  {
    v17 = [v16 copy];
    v18 = [MEMORY[0x1E696AF00] currentThread];
    v19 = [v18 threadDictionary];
    [v19 setObject:v17 forKeyedSubscript:@"attachmentsForAccountIdentifiers"];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __67__EDAttachmentPersistenceManager_willDeleteAttachmentsForMessages___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 ef_map:&__block_literal_global_5];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:v5];
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[1];
  }

  v8 = v7;
  v9 = [v6 allObjects];
  v10 = [v8 attachmentsForGlobalMessageIDs:v9];

  [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
}

id __67__EDAttachmentPersistenceManager_willDeleteAttachmentsForMessages___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

- (id)_accountIdentifiersByAttachmentIDs:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__EDAttachmentPersistenceManager__accountIdentifiersByAttachmentIDs___block_invoke;
    v8[3] = &unk_1E8250638;
    v5 = v4;
    v9 = v5;
    [v3 enumerateKeysAndObjectsUsingBlock:v8];
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __69__EDAttachmentPersistenceManager__accountIdentifiersByAttachmentIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{v10, v15}];
        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [*(a1 + 32) objectForKeyedSubscript:v10];
        [v13 addObject:v5];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)isDeletingMessages:(id)a3
{
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v5 = [v4 threadDictionary];
  v6 = [v5 objectForKeyedSubscript:@"attachmentsForAccountIdentifiers"];

  if ([v6 count])
  {
    v7 = [(EDAttachmentPersistenceManager *)self _accountIdentifiersByAttachmentIDs:v6];
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke;
    v21[3] = &unk_1E8250660;
    v21[4] = self;
    v9 = v8;
    v22 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v21];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_2;
    v17[3] = &unk_1E82506B0;
    v12 = v9;
    v18 = v12;
    v13 = v10;
    v19 = v13;
    v14 = v11;
    v20 = v14;
    [v7 enumerateKeysAndObjectsUsingBlock:v17];
    if ([v13 count])
    {
      [(EDAttachmentPersistenceManager *)self removeDatabaseAttachments:v13];
    }

    if ([v14 count])
    {
      [(EDAttachmentPersistenceManager *)self removeFilesystemAttachmentsByAccountIdentifier:v14];
    }

    v15 = [MEMORY[0x1E696AF00] currentThread];
    v16 = [v15 threadDictionary];
    [v16 setObject:0 forKeyedSubscript:@"attachmentsForAccountIdentifiers"];
  }
}

__CFString *__53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_88(uint64_t a1, void *a2)
{
  v2 = [a2 account];
  v3 = [v2 baseAccount];
  v4 = [v3 personaIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"regularAccountIdentifier";
  }

  v7 = v6;

  return v6;
}

void __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_2(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v18 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v5];
  if ([v6 count])
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke_3;
    v23[3] = &unk_1E8250688;
    v24 = v6;
    v7 = [v18 ef_filter:v23];
  }

  else
  {
    [a1[5] addObject:v5];
    v7 = v18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [a1[6] objectForKeyedSubscript:v12];
        v14 = v13 == 0;

        if (v14)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [a1[6] setObject:v15 forKeyedSubscript:v12];
        }

        v16 = [a1[6] objectForKeyedSubscript:v12];
        [v16 addObject:v5];
      }

      v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (void)removeSynapseAttachmentAttributesForMessages:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 ef_compactMap:&__block_literal_global_97];
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Remove Synapse attachment attributes for messages with persistentIDs %{public}@", buf, 0xCu);
    }

    if ([v4 count])
    {
      v6 = objc_alloc_init(MEMORY[0x1E69D5428]);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __79__EDAttachmentPersistenceManager_removeSynapseAttachmentAttributesForMessages___block_invoke_99;
      v8[3] = &unk_1E82506F8;
      v9 = v4;
      [v6 unlinkDocumentsWithRelatedUniqueidentifiers:v9 completion:v8];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __79__EDAttachmentPersistenceManager_removeSynapseAttachmentAttributesForMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 persistentID];

  return v2;
}

void __79__EDAttachmentPersistenceManager_removeSynapseAttachmentAttributesForMessages___block_invoke_99(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = EDAttachmentsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v5 ef_publicDescription];
    v10[0] = 67109634;
    v10[1] = a2;
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "unlinkDocumentsWithRelatedUniqueidentifiers succeeded: %{BOOL}d for persistentIDs %{public}@ error:%@", v10, 0x1Cu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)addSynapseAttributesToAttachmentWithURL:(id)a3 contentType:(id)a4 usingGenerator:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v17 = EDAttachmentsLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *location = 0;
    v18 = "Not adding Synapse attributes. No file URL.";
LABEL_9:
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, v18, location, 2u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v17 = EDAttachmentsLog();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *location = 0;
    v18 = "Not adding Synapse attributes. No content type.";
    goto LABEL_9;
  }

  v11 = MEMORY[0x1E69D5420];
  v12 = [v9 identifier];
  LOBYTE(v11) = [v11 isSupportedContentType:v12];

  if (v11)
  {
    v13 = [MEMORY[0x1E699B868] promise];
    objc_initWeak(location, self);
    v14 = MEMORY[0x1E69D5408];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke;
    v25 = &unk_1E8250798;
    objc_copyWeak(&v29, location);
    v26 = v8;
    v15 = v13;
    v27 = v15;
    v28 = v10;
    [v14 fetchDocumentAttributesForFileAtURL:v26 completion:&v22];
    v16 = [v15 future];

    objc_destroyWeak(&v29);
    objc_destroyWeak(location);

    goto LABEL_13;
  }

  v17 = EDAttachmentsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v8 lastPathComponent];
    *location = 138412546;
    *&location[4] = v19;
    v31 = 2114;
    v32 = v9;
    _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_DEFAULT, "Not adding Synapse attributes to '%@': unsupported type %{public}@", location, 0x16u);
  }

LABEL_12:

  v16 = [MEMORY[0x1E699B7C8] futureWithResult:MEMORY[0x1E695E110]];
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2;
    v8[3] = &unk_1E8250770;
    v9 = v3;
    v10 = a1[4];
    v11 = a1[5];
    v7 = a1[6];
    v12 = v5;
    v13 = v7;
    [v6 performBlock:v8];
  }
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2(uint64_t a1)
{
  location[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = EDAttachmentsLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [*(a1 + 40) lastPathComponent];
      __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_cold_1(v3, location);
    }

    [*(a1 + 48) finishWithResult:MEMORY[0x1E695E110]];
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = (*(*(a1 + 64) + 16))();
    if (v5)
    {
      objc_initWeak(location, *(a1 + 56));
      v6 = *(a1 + 40);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_105;
      v8[3] = &unk_1E8250748;
      objc_copyWeak(&v11, location);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      [v5 saveToFile:v6 completion:v8];

      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
    }

    else
    {
      [*(a1 + 48) finishWithResult:MEMORY[0x1E695E110]];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_105(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106;
    v7[3] = &unk_1E8250720;
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    [v6 performBlock:v7];
  }
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = EDAttachmentsLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 40) lastPathComponent];
      objc_claimAutoreleasedReturnValue();
      __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 40) lastPathComponent];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "Did add Synapse attributes to '%@'.", &v9, 0xCu);
  }

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v2 == 0];
  [v6 finishWithResult:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)persistenceWillDeleteMessages:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Hook called persistenceWillDeleteMessages to prepare attachment deletion for messages %{public}@", &v7, 0xCu);
    }

    [(EDAttachmentPersistenceManager *)self willDeleteAttachmentsForMessages:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistenceIsDeletingMessages:(id)a3 generationWindow:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v6 = EDAttachmentsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1C61EF000, v6, OS_LOG_TYPE_DEFAULT, "Hook called persistenceIsDeletingMessages to delete attachments for messages %{public}@", &v8, 0xCu);
    }

    [(EDAttachmentPersistenceManager *)self isDeletingMessages:v5];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)persistenceDidDeleteMessages:(id)a3 generationWindow:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Hook called persistenceDidDeleteMessages %{public}@", &v7, 0xCu);
    }

    [EDAttachmentPersistenceManager removeSynapseAttachmentAttributesForMessages:v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)persistAttachmentMetadata:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v6 = attachmentPersistence;
  if (![v4 globalMessageID])
  {
    v9 = EDAttachmentsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Trying to insert an attachment entry with no global message ID";
LABEL_35:
      _os_log_error_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    }

LABEL_10:
    v11 = 0;
    goto LABEL_31;
  }

  v7 = [v4 name];

  if (!v7)
  {
    v9 = EDAttachmentsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Trying to insert an attachment entry with no name";
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  v8 = [v4 mimePartNumber];
  if (!v8)
  {
    v12 = [v4 remoteURL];

    if (v12)
    {
      goto LABEL_12;
    }

    v9 = EDAttachmentsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "Trying to insert an attachment entry neither a mime part number or remoteURL";
      goto LABEL_35;
    }

    goto LABEL_10;
  }

LABEL_12:
  v13 = EDAttachmentsLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 globalMessageID];
    v15 = [v4 mimePartNumber];
    *buf = 134218242;
    v39 = v14;
    v40 = 2114;
    v41 = v15;
    OUTLINED_FUNCTION_11(&dword_1C61EF000, v13, v16, "Check the message_attachments table if attachment with message ID %lld MIME part %{public}@ exists", buf);
  }

  -[EDAttachmentPersistence messageAttachmentMetadataForMessageID:](v6, "messageAttachmentMetadataForMessageID:", [v4 globalMessageID]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v9 = v35 = 0u;
  v17 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v17)
  {
    v18 = *v35;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        v21 = [v20 mimePartNumber];
        v22 = [v4 mimePartNumber];
        if ([v21 isEqualToString:v22])
        {
          v23 = [v20 globalMessageID];
          LODWORD(v23) = v23 == [v4 globalMessageID];

          if (v23)
          {
            v27 = [v4 mimePartNumber];

            v28 = EDAttachmentsLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v4 attachmentID];
              v31 = [v4 globalMessageID];
              *buf = 138412802;
              v39 = v30;
              v40 = 2048;
              v41 = v31;
              v42 = 2114;
              v43 = v27;
              _os_log_impl(&dword_1C61EF000, v28, OS_LOG_TYPE_DEFAULT, "Attachment metadata with attachment ID %@ already exists in message_attachments table for globalMessageID: %lld mime part number: %{public}@", buf, 0x20u);
            }

            v11 = 1;
            goto LABEL_31;
          }
        }

        else
        {
        }
      }

      v17 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v24 = EDAttachmentsLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v4 globalMessageID];
    *buf = 134218242;
    v39 = v25;
    v40 = 2114;
    v41 = 0;
    OUTLINED_FUNCTION_11(&dword_1C61EF000, v24, v26, "Attachment metadata doesn't exist in message_attachments table for messageID: %lld mime part number: %{public}@. Persisting into the message_attachments table", buf);
  }

  v11 = [(EDAttachmentPersistence *)v6 insertMessageAttachmentMetadata:v4];
LABEL_31:

  v32 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)insertMimePartAttachments:(id)a3 forGlobalMessageID:(int64_t)a4
{
  v6 = a3;
  if (self)
  {
    attachmentPersistence = self->_attachmentPersistence;
  }

  else
  {
    attachmentPersistence = 0;
  }

  v8 = v6;
  [(EDAttachmentPersistence *)attachmentPersistence insertMimePartAttachments:v6 forGlobalMessageID:a4];
}

void __53__EDAttachmentPersistenceManager_isDeletingMessages___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[1];
  }

  v5 = v4;
  v6 = [v5 globalMessageIDsForAttachment:v3];

  if ([v6 count])
  {
    v7 = EDAttachmentsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v3;
      OUTLINED_FUNCTION_11(&dword_1C61EF000, v7, v8, "Duplicate globalMessageIDs found %{public}@ for attachment %{public}@", &v22);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[2];
    }

    v10 = v9;
    v11 = [v10 persistedMessageIDsForGlobalMessageIDs:v6];

    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = v12[2];
    }

    v13 = v12;
    v14 = [v13 persistedMessagesForDatabaseIDs:v11 requireProtectedData:0 temporarilyUnavailableDatabaseIDs:0];

    v15 = EDAttachmentsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543618;
      v23 = v14;
      v24 = 2114;
      v25 = v3;
      OUTLINED_FUNCTION_11(&dword_1C61EF000, v15, v16, "Found persisted messages %{public}@ for attachment %{public}@", &v22);
    }

    v17 = MEMORY[0x1E695DFD8];
    v18 = [v14 ef_map:&__block_literal_global_90];
    v19 = [v17 setWithArray:v18];
    v20 = [v19 allObjects];

    [*(a1 + 40) setObject:v20 forKeyedSubscript:v3];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(uint64_t)a1 orURL:(NSObject *)a2 attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Couldn't read data for attachment URL %@, device may be locked", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:(uint64_t)a1 orURL:(NSObject *)a2 attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Couldn't get file attributes for attachment URL %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error persisting attachment %@ to disk with existing metadata %{public}@", v4, v5);
}

- (void)_persistAndUpdateAttachmentPersistenceTableFromFileWrapper:orURL:attachmentMetadata:basePath:shouldUpdateAttachmentID:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_10(v1, v2, 5.778e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error persisting attachment %@ to disk attachmentID %lld", v5, v6);
}

- (void)_writeAttachment:toDirectory:outError:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to create attachment directory at %{public}@, %{public}@", v5, v6);
}

- (void)_writeAttachment:toDirectory:outError:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error figuring out if %{public}@ already exists, %{public}@", v5, v6);
}

- (void)_writeAttachment:toDirectory:outError:.cold.3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Attachment already exists at %{public}@. Overwriting with current attachment %@", v4, v5);
}

- (void)_writeAttachment:toDirectory:outError:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "No filename set on the file wrapper attachment %{public}@ for write to %{public}@", v4, v5);
}

- (void)_moveAttachmentAtURL:toURL:outError:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error occurred attempting to make file purgeable: %{public}@: %{public}@", v5, v6);
}

- (void)_persistAttachmentWithWrapper:orURL:attachmentMetadata:basePath:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to write archive attachment %@ to %@", v4, v5);
}

- (void)_persistAttachmentWithWrapper:(void *)a1 orURL:(uint64_t)a2 attachmentMetadata:basePath:error:.cold.2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  _os_log_fault_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_FAULT, "attachmentMetadata %{public}@ is missing either a mimePartNumber or a remoteURL. Aborting attachment write", v4, 0xCu);
}

- (void)_createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Unable to create temporary file for global ID %llu MIME part [%{public}@].", v4, v5);
}

- (void)_createAttachmentFileWriterForAttachmentMetadata:basePath:downloadDate:queue:compressionQueue:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_11(&dword_1C61EF000, v6, v4, "Attachment file for global ID %llu MIME part [%{public}@] already exists. Not creating file writer.", v5);
}

void __139__EDAttachmentPersistenceManager__createAttachmentFileWriterForAttachmentMetadata_basePath_downloadDate_queue_compressionQueue_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_8(a1, a2, 3.8521e-34);
  *(v2 + 12) = 1024;
  *(v2 + 14) = v3;
  _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "File writer failed for global ID %llu (%{errno}d). Removing temp files.", v4, 0x12u);
}

- (void)_didCompleteWritingAttachmentToFile:basePath:digest:metadata:downloadDate:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to move attachment to final location (global ID %llu): %{public}@", v4, v5);
}

- (void)_updateAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_10(v1, v2, 5.778e-34);
  *(v3 + 12) = 2048;
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to update attachmentID %@ for global message ID %llu", v5, v6);
}

- (void)_updateOrInsertAttachmentIDAndCreateFinalFileURLForFile:metadata:basePath:digest:downloadDate:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(v1, v2, v3, 3.8521e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to get size of attachment file (global ID %llu): %{public}@", v4, v5);
}

- (void)_writeFileWrapper:toURL:outError:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, 5.8382e-34);
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Error occurred attempting to compress file: %{public}@: %{public}@", v5, v6);
}

- (void)_attachmentURLForAttachment:(void *)a1 basePath:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to create attachment URL for attachment ID %@", v5);
}

- (void)attachmentURLForMessageAttachmentID:basePath:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11(&dword_1C61EF000, v6, v4, "Fetching attachment URL for messageAttachmentID %@ at base path %@", v5);
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.7779e-34);
  _os_log_debug_impl(&dword_1C61EF000, v3, OS_LOG_TYPE_DEBUG, "Attachment '%@' already has synapse attributes.", v4, 0xCu);
}

void __101__EDAttachmentPersistenceManager_addSynapseAttributesToAttachmentWithURL_contentType_usingGenerator___block_invoke_2_106_cold_1()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  OUTLINED_FUNCTION_5_0(&dword_1C61EF000, "Failed to write Synapse attributes to attachment '%@': %@", v5, v6);
}

@end