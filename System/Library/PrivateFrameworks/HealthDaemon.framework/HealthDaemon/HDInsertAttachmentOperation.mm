@interface HDInsertAttachmentOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertAttachmentOperation)initWithAttachmentReferences:(id)references attachment:(id)attachment fileOnDisk:(BOOL)disk;
- (HDInsertAttachmentOperation)initWithCoder:(id)coder;
- (id)transactionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertAttachmentOperation

- (HDInsertAttachmentOperation)initWithAttachmentReferences:(id)references attachment:(id)attachment fileOnDisk:(BOOL)disk
{
  referencesCopy = references;
  attachmentCopy = attachment;
  v16.receiver = self;
  v16.super_class = HDInsertAttachmentOperation;
  v10 = [(HDInsertAttachmentOperation *)&v16 init];
  if (v10)
  {
    v11 = [attachmentCopy copy];
    attachment = v10->_attachment;
    v10->_attachment = v11;

    v13 = [referencesCopy copy];
    attachmentReferences = v10->_attachmentReferences;
    v10->_attachmentReferences = v13;

    v10->_fileOnDisk = disk;
  }

  return v10;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v83 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAA00];
  transactionCopy = transaction;
  profileCopy = profile;
  v10 = objc_alloc_init(v7);
  attachmentManager = [profileCopy attachmentManager];
  unconfirmedFilesDirectoryURL = [attachmentManager unconfirmedFilesDirectoryURL];
  identifier = [(HDAttachment *)self->_attachment identifier];
  uUIDString = [identifier UUIDString];
  v15 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString];

  attachmentManager2 = [profileCopy attachmentManager];

  filesDirectoryURL = [attachmentManager2 filesDirectoryURL];
  identifier2 = [(HDAttachment *)self->_attachment identifier];
  uUIDString2 = [identifier2 UUIDString];
  v20 = [filesDirectoryURL URLByAppendingPathComponent:uUIDString2];

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __68__HDInsertAttachmentOperation_performWithProfile_transaction_error___block_invoke;
  v61[3] = &unk_278616D68;
  v61[4] = self;
  v21 = v10;
  v62 = v21;
  v22 = v15;
  v63 = v22;
  v23 = v20;
  v64 = v23;
  [transactionCopy onCommit:v61 orRollback:0];
  attachmentReferences = self->_attachmentReferences;
  selfCopy = self;
  attachment = self->_attachment;
  v26 = attachmentReferences;
  v27 = attachment;
  v28 = transactionCopy;
  v70 = 0;
  v29 = [HDAttachmentEntity _insertIfDoesNotExistAttachment:v27 transaction:v28 error:&v70];
  v30 = v70;

  if (v29)
  {
    v56 = v27;
    v57 = v22;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v31 = v26;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v66 objects:v77 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v67;
      v54 = v23;
      v55 = v21;
      while (2)
      {
        v35 = 0;
        v36 = v30;
        do
        {
          if (*v67 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v66 + 1) + 8 * v35);
          v65 = v36;
          v38 = [HDAttachmentReferenceEntity _insertIfDoesNotExistReference:v37 transaction:v28 error:&v65];
          v30 = v65;

          if (!v38)
          {
            _HKInitializeLogging();
            v39 = *MEMORY[0x277CCC2A0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              v72 = selfCopy;
              v73 = 2114;
              v74 = v37;
              v75 = 2114;
              v76 = v30;
              _os_log_error_impl(&dword_228986000, v39, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to insert reference %{public}@. Reverting attachment storage. %{public}@", buf, 0x20u);
            }

            v40 = v30;
            v30 = v40;
            v23 = v54;
            v21 = v55;
            v22 = v57;
            if (v40)
            {
              if (error)
              {
                v41 = v40;
                *error = v30;
              }

              else
              {
                _HKLogDroppedError();
              }
            }

            buf[0] = v30 == 0;
            goto LABEL_23;
          }

          ++v35;
          v36 = v30;
        }

        while (v33 != v35);
        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v66 objects:v77 count:16];
        v23 = v54;
        v21 = v55;
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    buf[0] = 1;
    v22 = v57;
LABEL_23:
    v27 = v56;
  }

  else
  {
    _HKInitializeLogging();
    v42 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *v77 = 138543874;
      v78 = selfCopy;
      v79 = 2114;
      v80 = v27;
      v81 = 2114;
      v82 = v30;
      _os_log_error_impl(&dword_228986000, v42, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to insert attachment %{public}@, %{public}@", v77, 0x20u);
    }

    v43 = v30;
    v30 = v43;
    if (v43)
    {
      if (error)
      {
        v44 = v43;
        *error = v30;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    buf[0] = v30 == 0;
  }

  v45 = buf[0];
  if ((v45 & 1) == 0 && selfCopy->_fileOnDisk)
  {
    path = [v22 path];
    v60 = 0;
    v47 = [v21 removeItemAtPath:path error:&v60];
    v48 = v60;

    if ((v47 & 1) == 0)
    {
      _HKInitializeLogging();
      v49 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v52 = v49;
        path2 = [v22 path];
        *v77 = 138543874;
        v78 = selfCopy;
        v79 = 2114;
        v80 = path2;
        v81 = 2114;
        v82 = v48;
        _os_log_error_impl(&dword_228986000, v52, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", v77, 0x20u);
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return v45;
}

void __68__HDInsertAttachmentOperation_performWithProfile_transaction_error___block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1[4] + 32))
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[7];
    v14 = 0;
    v5 = [v2 moveItemAtURL:v3 toURL:v4 error:&v14];
    v6 = v14;
    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        v9 = a1[4];
        v10 = a1[6];
        v11 = v7;
        v12 = [v10 path];
        v13 = [a1[7] path];
        *buf = 138544130;
        v16 = v9;
        v17 = 2114;
        v18 = v12;
        v19 = 2114;
        v20 = v13;
        v21 = 2114;
        v22 = v6;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to move file from %{public}@ -> %{public}@ directory, %{public}@", buf, 0x2Au);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HDInsertAttachmentOperation)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachment"];
  v6 = MEMORY[0x277CBEB98];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"attachment_references"];

  v10 = [coderCopy decodeBoolForKey:@"file_on_disk"];
  v11 = [(HDInsertAttachmentOperation *)self initWithAttachmentReferences:v9 attachment:v5 fileOnDisk:v10];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  attachment = self->_attachment;
  coderCopy = coder;
  [coderCopy encodeObject:attachment forKey:@"attachment"];
  [coderCopy encodeObject:self->_attachmentReferences forKey:@"attachment_references"];
  [coderCopy encodeBool:self->_fileOnDisk forKey:@"file_on_disk"];
}

- (id)transactionContext
{
  v3 = +[HDMutableDatabaseTransactionContext contextForWritingProtectedData];
  v4 = [v3 contextWithAccessibilityAssertion:self->_assertion];

  return v4;
}

@end