@interface HDInsertSynchronisedAttachmentReferences
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertSynchronisedAttachmentReferences)initWithAttachmentReferences:(id)references;
- (HDInsertSynchronisedAttachmentReferences)initWithCoder:(id)coder;
@end

@implementation HDInsertSynchronisedAttachmentReferences

- (HDInsertSynchronisedAttachmentReferences)initWithAttachmentReferences:(id)references
{
  referencesCopy = references;
  v9.receiver = self;
  v9.super_class = HDInsertSynchronisedAttachmentReferences;
  v5 = [(HDInsertSynchronisedAttachmentReferences *)&v9 init];
  if (v5)
  {
    v6 = [referencesCopy copy];
    attachmentReferences = v5->_attachmentReferences;
    v5->_attachmentReferences = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_attachmentReferences;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (!v8)
  {
    v17 = 1;
    goto LABEL_28;
  }

  v9 = v8;
  selfCopy = self;
  errorCopy = error;
  v10 = *v33;
  while (2)
  {
    error = 0;
    do
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v32 + 1) + 8 * error);
      v31 = 0;
      v12 = [HDAttachmentReferenceEntity _insertIfDoesNotExistReference:v11 transaction:transactionCopy error:&v31];
      v13 = v31;

      if (!v12)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v38 = selfCopy;
          v39 = 2114;
          v40 = v11;
          v41 = 2114;
          v42 = v13;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest reference %{public}@, %{public}@", buf, 0x20u);
        }

        v19 = v13;
        v13 = v19;
        if (v19)
        {
          if (errorCopy)
          {
            v20 = v19;
            LOBYTE(error) = 0;
            *errorCopy = v13;
          }

          else
          {
            _HKLogDroppedError();
            LOBYTE(error) = 0;
          }

          v23 = v13;
        }

        else
        {
          v23 = 0;
          LOBYTE(error) = 1;
        }

        goto LABEL_27;
      }

      v36 = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v30 = 0;
      v15 = [HDAttachmentReferenceEntity setCloudStatus:1 references:v14 transaction:transactionCopy error:&v30];
      v16 = v30;

      if (!v15)
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v38 = selfCopy;
          v39 = 2114;
          v40 = v11;
          v41 = 2114;
          v42 = v16;
          _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to update cloud status to synchronized for reference %{public}@, %{public}@", buf, 0x20u);
        }

        v22 = v16;
        v23 = v22;
        LOBYTE(error) = v22 == 0;
        if (v22)
        {
          if (errorCopy)
          {
            v24 = v22;
            *errorCopy = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_27:
        v17 = 0;
        goto LABEL_28;
      }

      error = (error + 1);
    }

    while (v9 != error);
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    v17 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

  v25 = *MEMORY[0x277D85DE8];
  return (v17 | error) & 1;
}

- (HDInsertSynchronisedAttachmentReferences)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"attachment_references"];

  v9 = [(HDInsertSynchronisedAttachmentReferences *)self initWithAttachmentReferences:v8];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end