@interface HDAttachmentManager
- (BOOL)_attachmentReferencesForObjectIdentifier:(uint64_t)identifier schemaIdentifier:(uint64_t)schemaIdentifier transaction:(uint64_t)transaction error:(void *)error enumerationHandler:;
- (BOOL)attachmentReferencesForAttachment:(id)attachment error:(id *)error enumerationHandler:(id)handler;
- (BOOL)attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error enumerationHandler:(id)handler;
- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment error:(id *)error;
- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileData:(id)data encrypt:(BOOL)encrypt error:(id *)error;
- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileHandle:(id)handle encrypt:(BOOL)encrypt error:(id *)error;
- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error;
- (BOOL)removeAllReferencesWithAttachmentIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error;
- (BOOL)removeAttachmentReferences:(id)references error:(id *)error;
- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error;
- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier transaction:(id)transaction error:(id *)error;
- (BOOL)replaceReferencesWithObjectIdentifier:(id)identifier replacementIdentifier:(id)replacementIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error;
- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error;
- (HDAttachmentManager)init;
- (HDAttachmentManager)initWithProfile:(id)profile;
- (id)_addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error;
- (id)addAttachmentWithName:(id)name contentTypeIdentifier:(id)identifier fileHandle:(id)handle toObjectWithIdentifier:(id)withIdentifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata error:(id *)self0;
- (id)addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error;
- (id)fileHandleForAttachment:(id)attachment error:(id *)error;
- (id)readerForAttachment:(id)attachment error:(id *)error;
- (id)schemaProviderClasses;
- (id)schemaProviderForIdentifier:(id)identifier error:(id *)error;
- (int64_t)supportedSchemaVersionForReference:(id)reference;
- (uint64_t)_validateAttachment:(void *)attachment toObjectWithIdentifier:(uint64_t)identifier schemaIdentifier:(void *)schemaIdentifier metadata:(uint64_t)metadata error:;
- (uint64_t)createFileDirectoriesWithError:(void *)error;
- (void)_cleanupAttachmentsFolder;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
- (void)runMaintenanceOperationIfNeeded;
@end

@implementation HDAttachmentManager

- (id)schemaProviderClasses
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDAttachmentManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDAttachmentManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v19.receiver = self;
  v19.super_class = HDAttachmentManager;
  v5 = [(HDAttachmentManager *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    [profileCopy registerProfileReadyObserver:v6 queue:0];

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    schemaProvidersByIdentifier = v6->_schemaProvidersByIdentifier;
    v6->_schemaProvidersByIdentifier = v8;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    directoryPath = [WeakRetained directoryPath];
    v12 = [directoryPath stringByAppendingPathComponent:@"Files"];
    filesDirectoryPath = v6->_filesDirectoryPath;
    v6->_filesDirectoryPath = v12;

    v14 = objc_loadWeakRetained(&v6->_profile);
    directoryPath2 = [v14 directoryPath];
    v16 = [directoryPath2 stringByAppendingPathComponent:@"UnconfirmedFiles"];
    unconfirmedFilesDirectoryPath = v6->_unconfirmedFilesDirectoryPath;
    v6->_unconfirmedFilesDirectoryPath = v16;
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator removeObserver:self];

  v6.receiver = self;
  v6.super_class = HDAttachmentManager;
  [(HDAttachmentManager *)&v6 dealloc];
}

- (void)profileDidBecomeReady:(id)ready
{
  daemon = [ready daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:0];
}

- (uint64_t)createFileDirectoriesWithError:(void *)error
{
  v25 = *MEMORY[0x277D85DE8];
  if (!error)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  filesDirectoryURL = [error filesDirectoryURL];
  v20 = 0;
  v6 = [v4 createDirectoryAtURL:filesDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v20];
  v7 = v20;

  if ((v6 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogInfrastructure();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      filesDirectoryURL2 = [error filesDirectoryURL];
      *buf = 138412546;
      v22 = filesDirectoryURL2;
      v23 = 2114;
      v24 = v7;
      _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Unable to create directory (%@). Error: %{public}@", buf, 0x16u);
    }

    v11 = v7;
    if (!v11)
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  unconfirmedFilesDirectoryURL = [error unconfirmedFilesDirectoryURL];
  v19 = v7;
  v9 = 1;
  v10 = [v4 createDirectoryAtURL:unconfirmedFilesDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v19];
  v11 = v19;

  if ((v10 & 1) == 0)
  {
    _HKInitializeLogging();
    v12 = HKLogInfrastructure();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      unconfirmedFilesDirectoryURL2 = [error unconfirmedFilesDirectoryURL];
      *buf = 138412546;
      v22 = unconfirmedFilesDirectoryURL2;
      v23 = 2114;
      v24 = v11;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "Unable to create directory (%@). Error: %{public}@", buf, 0x16u);
    }

    v11 = v11;
    if (!v11)
    {
      goto LABEL_15;
    }

    if (!a2)
    {
LABEL_8:
      _HKLogDroppedError();
      v9 = 0;
LABEL_15:

      goto LABEL_16;
    }

LABEL_13:
    v14 = v11;
    v9 = 0;
    *a2 = v11;
    goto LABEL_15;
  }

LABEL_16:

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (uint64_t)_validateAttachment:(void *)attachment toObjectWithIdentifier:(uint64_t)identifier schemaIdentifier:(void *)schemaIdentifier metadata:(uint64_t)metadata error:
{
  v11 = a2;
  attachmentCopy = attachment;
  schemaIdentifierCopy = schemaIdentifier;
  if (self)
  {
    v14 = [self schemaProviderForIdentifier:identifier error:metadata];
    if (v14)
    {
      WeakRetained = objc_loadWeakRetained(self + 2);
      v16 = [v14 validateAttachment:v11 forObjectWithIdentifier:attachmentCopy metadata:schemaIdentifierCopy profile:WeakRetained error:metadata];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__98;
  v42 = __Block_byref_object_dispose__98;
  v43 = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __105__HDAttachmentManager_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_error___block_invoke;
  v35[3] = &unk_278621800;
  v16 = attachmentCopy;
  v36 = v16;
  v37 = &v38;
  if (![(HDAttachmentManager *)self attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy error:error enumerationHandler:v35])
  {
    goto LABEL_10;
  }

  if (v39[5])
  {
    v17 = [MEMORY[0x277CCA9B8] hk_error:115 format:{@"The attachment with identifier %@ is already attached to object %@.", v39[5], identifierCopy}];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        v20 = 0;
        *error = v18;
      }

      else
      {
        _HKLogDroppedError();
        v20 = 0;
      }

      v23 = v18;
    }

    else
    {
      v23 = 0;
      v20 = 0;
    }

    goto LABEL_24;
  }

  if (([(HDAttachmentManager *)&self->super.isa _validateAttachment:v16 toObjectWithIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy metadata:metadataCopy error:error]& 1) == 0)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_25;
  }

  identifier = [v16 identifier];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v34 = 0;
  v18 = [HDAttachmentEntity attachmentWithIdentifier:identifier profile:WeakRetained error:&v34];
  v23 = v34;

  if (!v18)
  {
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      identifier2 = [v16 identifier];
      v30 = [v28 hk_error:118 format:{@"The attachment with identifier %@ was not found.", identifier2}];

      v24 = v30;
      if (!v24)
      {
        v23 = 0;
        goto LABEL_22;
      }
    }

    if (error)
    {
      v31 = v24;
      v20 = 0;
      *error = v24;
    }

    else
    {
      _HKLogDroppedError();
      v20 = 0;
    }

    v23 = v24;
    goto LABEL_23;
  }

  v24 = [(HDAttachmentManager *)self _addReferenceWithAttachment:v18 toObjectWithIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy metadata:metadataCopy error:error];
  if (!v24)
  {
LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  v25 = objc_alloc(MEMORY[0x277CCD010]);
  identifier3 = [v24 identifier];
  creationDate = [v24 creationDate];
  metadata = [v24 metadata];
  v20 = [v25 _initWithIdentifier:identifier3 objectIdentifier:identifierCopy attachment:v16 creationDate:creationDate metadata:metadata];

LABEL_23:
LABEL_24:

LABEL_25:
  _Block_object_dispose(&v38, 8);

  return v20;
}

uint64_t __105__HDAttachmentManager_addReferenceWithAttachment_toObjectWithIdentifier_schemaIdentifier_metadata_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attachmentIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) identifier];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  return v5 ^ 1u;
}

- (id)addAttachmentWithName:(id)name contentTypeIdentifier:(id)identifier fileHandle:(id)handle toObjectWithIdentifier:(id)withIdentifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata error:(id *)self0
{
  v71[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  identifierCopy = identifier;
  handleCopy = handle;
  withIdentifierCopy = withIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  referenceMetadataCopy = referenceMetadata;
  memset(&v70, 0, sizeof(v70));
  if (fstat([handleCopy fileDescriptor], &v70) < 0)
  {
    v67 = nameCopy;
    v45 = MEMORY[0x277CCA9B8];
    v46 = *__error();
    v47 = __error();
    v48 = [v45 hk_error:102 format:{@"Cannot determine file size: %d: %s", v46, strerror(*v47)}];
    if (v48)
    {
      if (error)
      {
        v49 = v48;
        v44 = 0;
        *error = v48;
      }

      else
      {
        _HKLogDroppedError();
        v44 = 0;
      }

      v24 = v48;
    }

    else
    {
      v24 = 0;
      v44 = 0;
    }

    goto LABEL_33;
  }

  st_size = v70.st_size;
  v24 = [HDEncryptedArchiveSymmetricKey randomKeyWithError:error];
  if (!v24)
  {
    v44 = 0;
    goto LABEL_34;
  }

  v62 = st_size;
  v67 = nameCopy;
  v69 = 0;
  v25 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifierCopy error:&v69];
  v65 = v69;
  v66 = v25;
  if (v25)
  {
    v61 = referenceMetadataCopy;
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
    }

    else
    {
      WeakRetained = 0;
    }

    v68 = 0;
    v27 = [v25 schemaVersionForObjectIdentifier:withIdentifierCopy profile:WeakRetained error:&v68];
    v60 = v68;

    v64 = identifierCopy;
    if (v27 > 0)
    {
      v55 = v27;
      v58 = handleCopy;
      v56 = [HDAttachment alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      [MEMORY[0x277CCAD78] UUID];
      v29 = v59 = schemaIdentifierCopy;
      uUIDString = [v29 UUIDString];
      [MEMORY[0x277CBEAA8] date];
      v32 = v31 = withIdentifierCopy;
      v57 = metadataCopy;
      v33 = [(HDAttachment *)v56 initWithIdentifier:uUID name:v67 type:identifierCopy hash:uUIDString size:v62 creationDate:v32 metadata:metadataCopy encryptionKey:v24];

      schemaIdentifierCopy = v59;
      hkAttachment = [(HDAttachment *)v33 hkAttachment];
      v63 = v31;
      referenceMetadataCopy = v61;
      v35 = [(HDAttachmentManager *)&self->super.isa _validateAttachment:hkAttachment toObjectWithIdentifier:v31 schemaIdentifier:v59 metadata:v61 error:error];

      if (v35)
      {
        v36 = [HDAttachmentReferenceSchemaIdentifier alloc];
        identifier = [(HDAttachment *)v33 identifier];
        v38 = [(HDAttachmentReferenceSchemaIdentifier *)v36 initWithSchemaIdentifier:v59 schemaVersion:v55 objectIdentifier:v31 attachmentIdentifier:identifier];

        v39 = [HDAttachmentReference alloc];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        date = [MEMORY[0x277CBEAA8] date];
        v42 = [(HDAttachmentReference *)v39 initWithIdentifier:uUID2 schemaIdentifier:v38 creationDate:date options:0 metadata:v61];

        v71[0] = v42;
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
        handleCopy = v58;
        LODWORD(uUID2) = [(HDAttachmentManager *)self insertAttachmentReferences:v43 attachment:v33 fileHandle:v58 encrypt:1 error:error];

        [v58 closeFile];
        v44 = 0;
        if (uUID2)
        {
          v44 = [(HDAttachmentReference *)v42 hkAttachmentReferenceWithAttachment:v33];
        }

        withIdentifierCopy = v63;
        identifierCopy = v64;
        schemaIdentifierCopy = v59;
      }

      else
      {
        v44 = 0;
        withIdentifierCopy = v31;
        handleCopy = v58;
      }

      metadataCopy = v57;
      v51 = v60;
      goto LABEL_32;
    }

    if (v27 == -1)
    {
      v50 = [MEMORY[0x277CCA9B8] hk_error:3 format:@"The object type is not supported"];

      referenceMetadataCopy = v61;
    }

    else
    {
      v50 = v60;
      referenceMetadataCopy = v61;
    }

    v33 = v50;
    if (!v33)
    {
      v51 = 0;
      v44 = 0;
LABEL_31:
      identifierCopy = v64;
      goto LABEL_32;
    }

LABEL_27:
    if (error)
    {
      v52 = v33;
      v44 = 0;
      *error = v33;
    }

    else
    {
      _HKLogDroppedError();
      v44 = 0;
    }

    v51 = v33;
    goto LABEL_31;
  }

  v33 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"No schema provider found for identifier '%@'", schemaIdentifierCopy}];
  if (v33)
  {
    v64 = identifierCopy;
    goto LABEL_27;
  }

  v51 = 0;
  v44 = 0;
LABEL_32:

  v48 = v65;
LABEL_33:

  nameCopy = v67;
LABEL_34:

  v53 = *MEMORY[0x277D85DE8];

  return v44;
}

- (id)_addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata error:(id *)error
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  v16 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifierCopy error:error];
  if (v16 && (!self ? (v17 = 0) : (v17 = objc_loadWeakRetained(&self->_profile)), v18 = [v16 schemaVersionForObjectIdentifier:identifierCopy profile:v17 error:error], v17, v18 >= 1))
  {
    v19 = [HDAttachmentReferenceSchemaIdentifier alloc];
    identifier = [attachmentCopy identifier];
    v21 = [(HDAttachmentReferenceSchemaIdentifier *)v19 initWithSchemaIdentifier:schemaIdentifierCopy schemaVersion:v18 objectIdentifier:identifierCopy attachmentIdentifier:identifier];

    v22 = [HDAttachmentReference alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [MEMORY[0x277CBEAA8] date];
    v24 = v31 = attachmentCopy;
    v25 = [(HDAttachmentReference *)v22 initWithIdentifier:uUID schemaIdentifier:v21 creationDate:v24 options:0 metadata:metadataCopy];

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    LODWORD(v24) = [HDAttachmentReferenceEntity insertReference:v25 profile:WeakRetained error:error];

    v27 = v24 == 0;
    attachmentCopy = v31;
    if (v27)
    {
      v28 = 0;
    }

    else
    {
      v28 = v25;
    }

    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  referencesCopy = references;
  v10 = [[HDInsertAttachmentOperation alloc] initWithAttachmentReferences:referencesCopy attachment:attachmentCopy fileOnDisk:0];

  if (self)
  {
    self = objc_loadWeakRetained(&self->_profile);
  }

  v11 = [(HDJournalableOperation *)v10 performOrJournalWithProfile:self error:error];

  return v11;
}

- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileHandle:(id)handle encrypt:(BOOL)encrypt error:(id *)error
{
  encryptCopy = encrypt;
  v96 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  handleCopy = handle;
  referencesCopy = references;
  v15 = [[HDInsertAttachmentOperation alloc] initWithAttachmentReferences:referencesCopy attachment:attachmentCopy fileOnDisk:1];

  v83 = 0;
  LOBYTE(handle) = [(HDAttachmentManager *)self createFileDirectoriesWithError:?];
  v16 = v83;
  v17 = v16;
  if (handle)
  {
    v80 = v15;
    v81 = handleCopy;
    unconfirmedFilesDirectoryURL = [(HDAttachmentManager *)self unconfirmedFilesDirectoryURL];
    identifier = [attachmentCopy identifier];
    uUIDString = [identifier UUIDString];
    v21 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString];

    v22 = objc_alloc_init(MEMORY[0x277CCAA00]);
    path = [v21 path];
    v79 = v22;
    LOBYTE(v22) = [v22 createFileAtPath:path contents:0 attributes:0];

    if (v22)
    {
      v82 = 0;
      v24 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v21 error:&v82];
      v78 = v82;
      if (v24)
      {
        encryptionKey = [attachmentCopy encryptionKey];
        v26 = encryptionKey;
        handleCopy = v81;
        if (encryptCopy && encryptionKey)
        {
          v27 = [HDEncryptedArchive encryptContentsOfFileHandle:v81 to:v24 key:encryptionKey error:error];
          [v24 closeFile];
          if (!v27)
          {
            goto LABEL_65;
          }
        }

        else
        {
          path2 = [v21 path];
          v74 = attachmentCopy;
          v40 = v81;
          v77 = v24;
          v75 = path2;
          v76 = v40;
          if (self)
          {
            v41 = *MEMORY[0x277D85FA0];
            v87 = 0;
            for (i = v40; ; i = v76)
            {
              v43 = [i readDataUpToLength:v41 error:&v87];
              v44 = v87;
              if (v44)
              {
                break;
              }

              if (!v43 || ![v43 length])
              {
                [v77 closeFile];

                v51 = *MEMORY[0x277CCA198];
                v52 = *MEMORY[0x277CCA180];
                v88[0] = *MEMORY[0x277CCA1B0];
                v88[1] = v52;
                v89[0] = v51;
                v89[1] = &unk_283CB2508;
                v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
                v47 = objc_alloc_init(MEMORY[0x277CCAA00]);
                v85 = 0;
                v53 = [v47 setAttributes:v48 ofItemAtPath:v75 error:&v85];
                v54 = v85;
                if (v53)
                {
                  v73 = 1;
                }

                else
                {
                  v72 = v54;
                  _HKInitializeLogging();
                  v59 = *MEMORY[0x277CCC280];
                  if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543874;
                    selfCopy6 = self;
                    v92 = 2114;
                    v93 = v75;
                    v94 = 2114;
                    v95 = v72;
                    _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set protection class for %{public}@. Reverting storage. %{public}@", buf, 0x20u);
                  }

                  v84 = 0;
                  v60 = [v47 removeItemAtPath:v75 error:&v84];
                  v71 = v84;
                  if ((v60 & 1) == 0)
                  {
                    _HKInitializeLogging();
                    v61 = *MEMORY[0x277CCC280];
                    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543874;
                      selfCopy6 = self;
                      v92 = 2114;
                      v93 = v75;
                      v94 = 2114;
                      v95 = v71;
                      _os_log_error_impl(&dword_228986000, v61, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", buf, 0x20u);
                    }
                  }

                  v62 = v72;
                  v73 = v62 == 0;
                  if (v62)
                  {
                    if (error)
                    {
                      v63 = v62;
                      *error = v62;
                    }

                    else
                    {
                      _HKLogDroppedError();
                    }
                  }

                  v54 = v72;
                }

                goto LABEL_59;
              }

              v86 = 0;
              v45 = [v77 writeData:v43 error:&v86];
              v46 = v86;
              v47 = v46;
              if ((v45 & 1) == 0)
              {
                [v77 closeFile];
                _HKInitializeLogging();
                v64 = *MEMORY[0x277CCC280];
                if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  selfCopy6 = self;
                  v92 = 2114;
                  v93 = v75;
                  v94 = 2114;
                  v95 = 0;
                  _os_log_error_impl(&dword_228986000, v64, OS_LOG_TYPE_ERROR, "%{public}@: Failed to write file to URL %{public}@. %{public}@", buf, 0x20u);
                }

                v73 = 1;
                v48 = v43;
                goto LABEL_59;
              }

              v41 = *MEMORY[0x277D85FA0];
              v87 = 0;
            }

            v48 = v44;
            [v77 closeFile];
            _HKInitializeLogging();
            v49 = *MEMORY[0x277CCC280];
            if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              selfCopy6 = self;
              v92 = 2114;
              v93 = v75;
              v94 = 2114;
              v95 = v48;
              _os_log_error_impl(&dword_228986000, v49, OS_LOG_TYPE_ERROR, "%{public}@: Failed to read file from source for URL %{public}@. %{public}@", buf, 0x20u);
            }

            if (error)
            {
              v50 = v48;
              v73 = 0;
              *error = v48;
            }

            else
            {
              _HKLogDroppedError();
              v73 = 0;
            }

            v47 = v43;
LABEL_59:
            v67 = v74;
          }

          else
          {
            v73 = 0;
            v67 = v74;
          }

          handleCopy = v81;
          if (!v73)
          {
            v24 = v77;
LABEL_65:
            v29 = 0;
LABEL_66:
            path5 = v78;
            goto LABEL_67;
          }
        }

        if (self)
        {
          WeakRetained = objc_loadWeakRetained(&self->_profile);
        }

        else
        {
          WeakRetained = 0;
        }

        v29 = [(HDJournalableOperation *)v80 performOrJournalWithProfile:WeakRetained error:error];

        goto LABEL_66;
      }

      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC280];
      handleCopy = v81;
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v65 = v37;
        path3 = [v21 path];
        *buf = 138543874;
        selfCopy6 = self;
        v92 = 2114;
        v93 = path3;
        v94 = 2114;
        v95 = v78;
        _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to create a file handle for URL %{public}@. %{public}@", buf, 0x20u);
      }

      v26 = v78;
      if (v26)
      {
        if (error)
        {
          v38 = v26;
          v24 = 0;
          v29 = 0;
          *error = v26;
        }

        else
        {
          _HKLogDroppedError();
          v24 = 0;
          v29 = 0;
        }

        path5 = v26;
        goto LABEL_67;
      }

      v24 = 0;
      path5 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v30 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v55 = v30;
        path4 = [v21 path];
        v57 = __error();
        v58 = strerror(*v57);
        *buf = 138543874;
        selfCopy6 = self;
        v92 = 2114;
        v93 = path4;
        v94 = 2080;
        v95 = v58;
        _os_log_error_impl(&dword_228986000, v55, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to create file %{public}@ error: %s.", buf, 0x20u);
      }

      v31 = MEMORY[0x277CCA9B8];
      v32 = *__error();
      v33 = __error();
      v34 = strerror(*v33);
      path5 = [v21 path];
      v26 = [v31 hk_error:102 format:{@"Error %d, %s while creating file at %@ ", v32, v34, path5}];
      handleCopy = v81;
      if (v26)
      {
        if (error)
        {
          v36 = v26;
          v29 = 0;
          *error = v26;
        }

        else
        {
          _HKLogDroppedError();
          v29 = 0;
        }

        v24 = v26;
        goto LABEL_67;
      }

      v24 = 0;
    }

    v29 = 1;
LABEL_67:

    v15 = v80;
    goto LABEL_68;
  }

  v21 = v16;
  if (v21)
  {
    if (error)
    {
      v28 = v21;
      v29 = 0;
      *error = v21;
    }

    else
    {
      _HKLogDroppedError();
      v29 = 0;
    }
  }

  else
  {
    v29 = 1;
  }

LABEL_68:

  v69 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)insertAttachmentReferences:(id)references attachment:(id)attachment fileData:(id)data encrypt:(BOOL)encrypt error:(id *)error
{
  encryptCopy = encrypt;
  v95 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  dataCopy = data;
  referencesCopy = references;
  v15 = [[HDInsertAttachmentOperation alloc] initWithAttachmentReferences:referencesCopy attachment:attachmentCopy fileOnDisk:1];

  v88 = 0;
  v16 = [(HDAttachmentManager *)self createFileDirectoriesWithError:?];
  v17 = v88;
  v18 = v17;
  if (v16)
  {
    v81 = dataCopy;
    v82 = v15;
    v19 = objc_alloc_init(MEMORY[0x277CCAA00]);
    unconfirmedFilesDirectoryURL = [(HDAttachmentManager *)self unconfirmedFilesDirectoryURL];
    identifier = [attachmentCopy identifier];
    uUIDString = [identifier UUIDString];
    v23 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString];

    path = [v23 path];
    LOBYTE(unconfirmedFilesDirectoryURL) = [v19 createFileAtPath:path contents:0 attributes:0];

    if ((unconfirmedFilesDirectoryURL & 1) == 0)
    {
      _HKInitializeLogging();
      v36 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v56 = v36;
        path2 = [v23 path];
        *buf = 138543618;
        selfCopy7 = self;
        v93 = 2114;
        *v94 = path2;
        _os_log_error_impl(&dword_228986000, v56, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to create file %{public}@.", buf, 0x16u);
      }

      v37 = MEMORY[0x277CCA9B8];
      path3 = [v23 path];
      v29 = [v37 hk_error:102 format:{@"Error creating file at %@", path3}];
      dataCopy = v81;
      if (v29)
      {
        v15 = v82;
        if (error)
        {
          v39 = v29;
          LOBYTE(v33) = 0;
          *error = v29;
        }

        else
        {
          _HKLogDroppedError();
          LOBYTE(v33) = 0;
        }

        v46 = v29;
      }

      else
      {
        v46 = 0;
        LOBYTE(v33) = 0;
        v15 = v82;
      }

      goto LABEL_64;
    }

    v87 = 0;
    v25 = [MEMORY[0x277CCA9F8] fileHandleForUpdatingURL:v23 error:&v87];
    v79 = v87;
    v80 = v25;
    if (!v25)
    {
      _HKInitializeLogging();
      v40 = MEMORY[0x277CCC280];
      v41 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v63 = v41;
        path4 = [v23 path];
        *buf = 138543874;
        selfCopy7 = self;
        v93 = 2114;
        *v94 = path4;
        *&v94[8] = 2114;
        *&v94[10] = v79;
        _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to retreive fileHandle for %{public}@. Reverting attachment and reference storage. %{public}@", buf, 0x20u);
      }

      path5 = [v23 path];
      v86 = 0;
      v43 = [v19 removeItemAtPath:path5 error:&v86];
      v29 = v86;

      if ((v43 & 1) == 0)
      {
        _HKInitializeLogging();
        v44 = *v40;
        if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          v69 = v44;
          path6 = [v23 path];
          *buf = 138543874;
          selfCopy7 = self;
          v93 = 2114;
          *v94 = path6;
          *&v94[8] = 2114;
          *&v94[10] = v29;
          _os_log_error_impl(&dword_228986000, v69, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", buf, 0x20u);
        }
      }

      path3 = v79;
      v45 = v79;
      if (v45)
      {
        dataCopy = v81;
        v15 = v82;
        if (error)
        {
          v45 = v45;
          LOBYTE(v33) = 0;
          *error = v45;
        }

        else
        {
          v33 = v45;
          _HKLogDroppedError();
          v45 = v33;
          LOBYTE(v33) = 0;
        }
      }

      else
      {
        LOBYTE(v33) = 0;
        dataCopy = v81;
        v15 = v82;
      }

      v46 = 0;
      goto LABEL_63;
    }

    if (fcntl([v25 fileDescriptor], 48, 1))
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v58 = v26;
        path7 = [v23 path];
        v60 = *__error();
        v61 = __error();
        v62 = strerror(*v61);
        *buf = 138543874;
        selfCopy7 = path7;
        v93 = 1024;
        *v94 = v60;
        *&v94[4] = 2082;
        *&v94[6] = v62;
        _os_log_error_impl(&dword_228986000, v58, OS_LOG_TYPE_ERROR, "Error setting F_NOCACHE on file at %{public}@ failed (%d): %{public}s", buf, 0x1Cu);
      }
    }

    v27 = *MEMORY[0x277CCA198];
    v28 = *MEMORY[0x277CCA180];
    v89[0] = *MEMORY[0x277CCA1B0];
    v89[1] = v28;
    v90[0] = v27;
    v90[1] = &unk_283CB2508;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
    path8 = [v23 path];
    v85 = 0;
    v31 = [v19 setAttributes:v29 ofItemAtPath:path8 error:&v85];
    v78 = v85;

    if (v31)
    {
      encryptionKey = [attachmentCopy encryptionKey];
      v77 = encryptionKey;
      if (encryptCopy && encryptionKey)
      {
        v33 = [HDEncryptedArchive archiveForEncryptionWithFileHandle:v80 key:encryptionKey error:error];
        [v80 closeFile];
        dataCopy = v81;
        if (!v33)
        {
LABEL_13:
          v15 = v82;
LABEL_62:
          v46 = v80;

          v45 = v78;
          path3 = v79;
LABEL_63:

LABEL_64:
          goto LABEL_65;
        }

        v34 = [v33 writeData:v81 error:error];
        [v33 close];

        if ((v34 & 1) == 0)
        {
          LOBYTE(v33) = 0;
          goto LABEL_13;
        }

        goto LABEL_45;
      }

      v83 = 0;
      dataCopy = v81;
      v75 = [v80 writeData:v81 error:&v83];
      v53 = v83;
      [v80 closeFile];
      if (v75)
      {

LABEL_45:
        if (self)
        {
          self = objc_loadWeakRetained(&self->_profile);
        }

        v15 = v82;
        LOBYTE(v33) = [(HDJournalableOperation *)v82 performOrJournalWithProfile:self error:error];
        goto LABEL_61;
      }

      v76 = v53;
      _HKInitializeLogging();
      v54 = *MEMORY[0x277CCC280];
      v15 = v82;
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v73 = v54;
        path9 = [v23 path];
        *buf = 138543874;
        selfCopy7 = self;
        v93 = 2114;
        *v94 = path9;
        *&v94[8] = 2114;
        *&v94[10] = v76;
        _os_log_error_impl(&dword_228986000, v73, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to write data to file at %{public}@, %{public}@", buf, 0x20u);

        v15 = v82;
      }

      self = v76;
      if (self)
      {
        if (error)
        {
          selfCopy5 = self;
          *error = self;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      goto LABEL_60;
    }

    _HKInitializeLogging();
    v47 = MEMORY[0x277CCC280];
    v48 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      v65 = v48;
      path10 = [v23 path];
      *buf = 138543874;
      selfCopy7 = self;
      v93 = 2114;
      *v94 = path10;
      *&v94[8] = 2114;
      *&v94[10] = v78;
      _os_log_error_impl(&dword_228986000, v65, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set protection class for %{public}@. Reverting storage. %{public}@", buf, 0x20u);
    }

    path11 = [v23 path];
    v84 = 0;
    v50 = [v19 removeItemAtPath:path11 error:&v84];
    v77 = v84;

    if ((v50 & 1) == 0)
    {
      _HKInitializeLogging();
      v51 = *v47;
      if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v71 = v51;
        path12 = [v23 path];
        *buf = 138543874;
        selfCopy7 = self;
        v93 = 2114;
        *v94 = path12;
        *&v94[8] = 2114;
        *&v94[10] = v77;
        _os_log_error_impl(&dword_228986000, v71, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to remove file at %{public}@, %{public}@", buf, 0x20u);
      }
    }

    self = v78;
    if (self)
    {
      dataCopy = v81;
      v15 = v82;
      if (!error)
      {
        _HKLogDroppedError();
LABEL_60:
        LOBYTE(v33) = 0;
        goto LABEL_61;
      }

      selfCopy8 = self;
      LOBYTE(v33) = 0;
      *error = self;
    }

    else
    {
      LOBYTE(v33) = 0;
      dataCopy = v81;
      v15 = v82;
    }

LABEL_61:

    goto LABEL_62;
  }

  v19 = v17;
  if (!v19)
  {
    goto LABEL_23;
  }

  if (!error)
  {
    _HKLogDroppedError();
LABEL_23:
    LOBYTE(v33) = 0;
    goto LABEL_65;
  }

  v35 = v19;
  LOBYTE(v33) = 0;
  *error = v19;
LABEL_65:

  v67 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error enumerationHandler:(id)handler
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HDAttachmentManager_attachmentReferencesForObjectIdentifier_schemaIdentifier_error_enumerationHandler___block_invoke;
  v19[3] = &unk_2786185E8;
  v19[4] = self;
  v20 = identifierCopy;
  v21 = schemaIdentifierCopy;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = schemaIdentifierCopy;
  v17 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performReadTransactionWithHealthDatabase:database error:error block:v19];

  return error;
}

- (BOOL)_attachmentReferencesForObjectIdentifier:(uint64_t)identifier schemaIdentifier:(uint64_t)schemaIdentifier transaction:(uint64_t)transaction error:(void *)error enumerationHandler:
{
  errorCopy = error;
  v12 = errorCopy;
  if (self)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __118__HDAttachmentManager__attachmentReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke;
    v15[3] = &unk_278621918;
    v15[4] = self;
    v16 = errorCopy;
    v13 = [HDAttachmentReferenceEntity enumerateReferencesForObjectIdentifier:a2 schemaIdentifier:identifier transaction:schemaIdentifier error:transaction enumerationHandler:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)attachmentReferencesForAttachment:(id)attachment error:(id *)error enumerationHandler:(id)handler
{
  attachmentCopy = attachment;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__HDAttachmentManager_attachmentReferencesForAttachment_error_enumerationHandler___block_invoke;
  v15[3] = &unk_278618368;
  v16 = attachmentCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = attachmentCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performReadTransactionWithHealthDatabase:database error:error block:v15];

  return error;
}

BOOL __82__HDAttachmentManager_attachmentReferencesForAttachment_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 identifier];
  v8 = HDAttachmentReferencePredicateForAttachmentIdentifier(v7);
  v9 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:v8 transaction:v6 error:a3 enumerationHandler:*(a1 + 40)];

  return v9;
}

- (id)fileHandleForAttachment:(id)attachment error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  filesDirectoryURL = [(HDAttachmentManager *)self filesDirectoryURL];
  identifier = [attachmentCopy identifier];
  uUIDString = [identifier UUIDString];
  v10 = [filesDirectoryURL URLByAppendingPathComponent:uUIDString];

  v39 = 0;
  v11 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v10 error:&v39];
  v12 = v39;
  v13 = v12;
  if (v11)
  {
    v14 = v11;
  }

  else if ([v12 hk_isCocoaNoSuchFileError])
  {
    errorCopy = error;
    unconfirmedFilesDirectoryURL = [(HDAttachmentManager *)self unconfirmedFilesDirectoryURL];
    identifier2 = [attachmentCopy identifier];
    uUIDString2 = [identifier2 UUIDString];
    v18 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString2];

    v38 = 0;
    v14 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v18 error:&v38];
    v19 = v38;
    if (v14)
    {
      v20 = v14;
    }

    else
    {
      _HKInitializeLogging();
      v26 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        log = v26;
        path = [v18 path];
        *buf = 138543874;
        selfCopy2 = self;
        v42 = 2114;
        v43 = path;
        v44 = 2114;
        v45 = v19;
        _os_log_error_impl(&dword_228986000, log, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: File not found at %{public}@, %{public}@", buf, 0x20u);
      }

      v27 = MEMORY[0x277CCA9B8];
      path2 = [v18 path];
      v29 = [v27 hk_error:102 format:{@"File not found at %@, %@", path2, v19}];
      if (v29)
      {
        if (errorCopy)
        {
          v30 = v29;
          *errorCopy = v29;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v21 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      v33 = v21;
      path3 = [v10 path];
      *buf = 138543874;
      selfCopy2 = self;
      v42 = 2114;
      v43 = path3;
      v44 = 2114;
      v45 = v13;
      _os_log_error_impl(&dword_228986000, v33, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: File not found at %{public}@, %{public}@", buf, 0x20u);
    }

    v22 = MEMORY[0x277CCA9B8];
    path4 = [v10 path];
    v24 = [v22 hk_error:102 format:{@"File not found at %@, %@", path4, v13}];
    if (v24)
    {
      if (error)
      {
        v25 = v24;
        *error = v24;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v14 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)readerForAttachment:(id)attachment error:(id *)error
{
  attachmentCopy = attachment;
  v7 = [(HDAttachmentManager *)self fileHandleForAttachment:attachmentCopy error:error];
  if (v7)
  {
    encryptionKey = [attachmentCopy encryptionKey];

    if (encryptionKey)
    {
      encryptionKey2 = [attachmentCopy encryptionKey];
      v10 = [HDEncryptedArchive archiveForDecryptionWithFileHandle:v7 key:encryptionKey2 error:error];

      [v7 closeFile];
      if (v10)
      {
        v11 = [[HDAttachmentEncryptedReader alloc] initAdoptingArchive:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = [[HDAttachmentFileHandleReader alloc] initAdoptingFileHandle:v7];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)replaceReferencesWithObjectIdentifier:(id)identifier replacementIdentifier:(id)replacementIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error
{
  schemaIdentifierCopy = schemaIdentifier;
  replacementIdentifierCopy = replacementIdentifier;
  identifierCopy = identifier;
  v13 = [[HDReplaceObjectIdentifierOperation alloc] initWithWithObjectIdentifier:identifierCopy replacementIdentifier:replacementIdentifierCopy schemaIdentifier:schemaIdentifierCopy];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(HDJournalableOperation *)v13 performOrJournalWithProfile:WeakRetained error:error];

  return error;
}

- (BOOL)removeAllReferencesWithAttachmentIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier schemaIdentifier:(id)schemaIdentifier error:(id *)error
{
  identifierCopy = identifier;
  objectIdentifierCopy = objectIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke;
  v19[3] = &unk_27861B120;
  v19[4] = self;
  v20 = objectIdentifierCopy;
  v21 = schemaIdentifierCopy;
  v22 = identifierCopy;
  v15 = identifierCopy;
  v16 = schemaIdentifierCopy;
  v17 = objectIdentifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performWriteTransactionWithHealthDatabase:database error:error block:v19 inaccessibilityHandler:0];

  return error;
}

uint64_t __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke_2;
  v24 = &unk_278621828;
  v8 = *(a1 + 48);
  v25 = *(a1 + 56);
  v9 = v5;
  v26 = v9;
  if (![v6 attachmentReferencesForObjectIdentifier:v7 schemaIdentifier:v8 error:a3 enumerationHandler:&v21])
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (![v9 count])
  {
    v12 = *(a1 + 56);
    v13 = [MEMORY[0x277CCA9B8] hk_error:11 format:{@"No references found for attachment: %@ and object: %@", v12, *(a1 + 40), v21, v22, v23, v24, v25}];
    if (v13)
    {
      if (a3)
      {
        v14 = v13;
        *a3 = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_12;
  }

  if ([v9 count] != 1)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_FAULT))
    {
      v17 = *(a1 + 56);
      v18 = *(a1 + 40);
      v19 = v10;
      v20 = [v9 count];
      *buf = 138543874;
      v28 = v17;
      v29 = 2114;
      v30 = v18;
      v31 = 2048;
      v32 = v20;
      _os_log_fault_impl(&dword_228986000, v19, OS_LOG_TYPE_FAULT, "[database] Expected only a single reference for attachment: %{public}@ and object: %{public}@, found %lu", buf, 0x20u);
    }
  }

  v11 = [*(a1 + 32) removeAttachmentReferences:v9 error:a3];
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __107__HDAttachmentManager_removeAllReferencesWithAttachmentIdentifier_objectIdentifier_schemaIdentifier_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 attachmentIdentifier];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 1;
}

- (BOOL)removeAttachmentReferences:(id)references error:(id *)error
{
  referencesCopy = references;
  v7 = [[HDDeleteAttachmentReferenceOperation alloc] initWithReferences:referencesCopy];

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(error) = [(HDJournalableOperation *)v7 performOrJournalWithProfile:WeakRetained error:error];

  return error;
}

- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier error:(id *)error
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__HDAttachmentManager_removeAttachmentReferencesWithObjectIdentifier_schemaIdentifier_error___block_invoke;
  v15[3] = &unk_278615D40;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = schemaIdentifierCopy;
  v12 = schemaIdentifierCopy;
  v13 = identifierCopy;
  LOBYTE(error) = [(HDHealthEntity *)HDAttachmentReferenceEntity performWriteTransactionWithHealthDatabase:database error:error block:v15];

  return error;
}

- (BOOL)removeAttachmentReferencesWithObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier transaction:(id)transaction error:(id *)error
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  transactionCopy = transaction;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__98;
  v23 = __Block_byref_object_dispose__98;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__HDAttachmentManager_removeAttachmentReferencesWithObjectIdentifier_schemaIdentifier_transaction_error___block_invoke;
  v18[3] = &unk_278621850;
  v18[4] = &v19;
  if ([(HDAttachmentManager *)self _attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy transaction:transactionCopy error:error enumerationHandler:v18])
  {
    v13 = [HDDeleteAttachmentReferenceOperation alloc];
    v14 = [(HDDeleteAttachmentReferenceOperation *)v13 initWithReferences:v20[5]];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v16 = [(HDDeleteAttachmentReferenceOperation *)v14 performWithProfile:WeakRetained transaction:transactionCopy error:error];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v16;
}

- (BOOL)readAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error
{
  identifierCopy = identifier;
  clientCopy = client;
  v12 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifier error:error];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [v12 readAuthorizationForObjectIdentifier:identifierCopy client:clientCopy profile:WeakRetained error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)writeAuthorizationForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier client:(id)client error:(id *)error
{
  identifierCopy = identifier;
  clientCopy = client;
  v12 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifier error:error];
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [v12 writeAuthorizationForObjectIdentifier:identifierCopy client:clientCopy profile:WeakRetained error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v87 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v27 = WeakRetained;
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [MEMORY[0x277CBEAA8] date];
    v11 = [currentCalendar startOfDayForDate:date];

    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    database = [v27 database];
    v42 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke;
    v30[3] = &unk_2786218F0;
    v32 = &v79;
    v33 = &v67;
    v13 = v11;
    v31 = v13;
    v34 = &v51;
    v35 = &v63;
    v36 = &v43;
    v37 = &v75;
    v38 = &v55;
    v39 = &v59;
    v40 = &v71;
    v41 = &v47;
    v14 = [(HDHealthEntity *)HDAttachmentEntity performReadTransactionWithHealthDatabase:database error:&v42 block:v30];
    v15 = v42;

    if (v14)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      unconfirmedFilesDirectoryPath = self->_unconfirmedFilesDirectoryPath;
      v29 = 0;
      v18 = [defaultManager contentsOfDirectoryAtPath:unconfirmedFilesDirectoryPath error:&v29];
      v19 = v29;

      if (v19)
      {
        _HKInitializeLogging();
        v20 = HKLogAnalytics();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v85 = 2114;
          v86 = v19;
          _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@ Failed to read directory contents at %{public}@", buf, 0x16u);
        }

        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }

      else
      {
        v22 = [v18 count];
        v23 = objc_alloc_init(HDAttachmentAnalytics);
        [(HDAttachmentAnalytics *)v23 setNumberOfAttachments:v80[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfReferences:v76[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfTombstones:v72[3]];
        [(HDAttachmentAnalytics *)v23 setTotalSizeOfFiles:v68[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfUnconfirmedFiles:v22];
        [(HDAttachmentAnalytics *)v23 setNumberOfOrphanedAttachments:v64[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfOrphanedReferences:v60[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfReferencesCreatedLast24Hours:v56[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfAttachmentsCreatedLast24Hours:v52[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfTombstonesCreatedLast24Hours:v48[3]];
        [(HDAttachmentAnalytics *)v23 setNumberOfAttachmentsWithMultipleReferences:v44[3]];
        daemon = [v27 daemon];
        analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
        [analyticsSubmissionCoordinator attachments_reportDailyAnalytics:v23];

        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }
    }

    else
    {
      _HKInitializeLogging();
      v21 = HKLogAnalytics();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v85 = 2114;
        v86 = v15;
        _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to read directory contents at %{public}@", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    }

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&v47, 8);
    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v55, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(&v71, 8);
    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v79, 8);

    v8 = v27;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

BOOL __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v36 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_2;
  v30[3] = &unk_2786218A0;
  v33 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v31 = v6;
  v34 = v7;
  v8 = v5;
  v32 = v8;
  v35 = *(a1 + 64);
  v9 = [HDAttachmentEntity enumerateAttachmentsWithPredicate:0 transaction:v8 error:&v36 enumerationHandler:v30];
  v10 = v36;
  v11 = v10;
  if (v9)
  {
    v29 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_4;
    v22[3] = &unk_2786218C8;
    v25 = *(a1 + 80);
    v12 = *(a1 + 32);
    v13 = *(a1 + 88);
    v23 = v12;
    v26 = v13;
    v24 = v8;
    v27 = *(a1 + 96);
    v28 = *(a1 + 112);
    v14 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:0 transaction:v24 error:&v29 enumerationHandler:v22];
    v15 = v29;
    v16 = v15;
    if (v14)
    {
      v17 = 1;
    }

    else
    {
      v19 = v15;
      v17 = v19 == 0;
      if (v19)
      {
        if (a3)
        {
          v20 = v19;
          *a3 = v19;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v16 = v10;
    if (v16)
    {
      if (a3)
      {
        v18 = v16;
        v17 = 0;
        *a3 = v16;
      }

      else
      {
        _HKLogDroppedError();
        v17 = 0;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  return v17;
}

BOOL __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  ++*(*(a1[6] + 8) + 24);
  *(*(a1[7] + 8) + 24) += [v5 size];
  v6 = [v5 creationDate];
  v7 = [v6 hk_isAfterOrEqualToDate:a1[4]];

  if (v7)
  {
    ++*(*(a1[8] + 8) + 24);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v8 = [v5 identifier];
  v9 = HDAttachmentReferencePredicateForAttachmentIdentifier(v8);
  v10 = a1[5];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_3;
  v20[3] = &unk_278621878;
  v20[4] = &v22;
  v21 = 0;
  v11 = [HDAttachmentReferenceEntity enumerateReferencesWithPredicate:v9 transaction:v10 error:&v21 enumerationHandler:v20];
  v12 = v21;

  if (v11)
  {
    v13 = v23;
    v14 = v23[3];
    if (!v14)
    {
      ++*(*(a1[9] + 8) + 24);
      v14 = v13[3];
    }

    if (v14 >= 2)
    {
      ++*(*(a1[10] + 8) + 24);
    }

    v15 = 1;
  }

  else
  {
    v16 = v12;
    v17 = v16;
    v15 = v16 == 0;
    if (v16)
    {
      if (a3)
      {
        v18 = v16;
        *a3 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  _Block_object_dispose(&v22, 8);

  return v15;
}

BOOL __70__HDAttachmentManager_reportDailyAnalyticsWithCoordinator_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([v5 type])
  {
LABEL_8:
    if ([v5 type] == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v15 = [v5 creationDate];
      v16 = [v15 hk_isAfterOrEqualToDate:*(a1 + 32)];

      if (v16)
      {
        ++*(*(*(a1 + 80) + 8) + 24);
      }
    }

    v17 = 1;
    goto LABEL_12;
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v6 = [v5 creationDate];
  v7 = [v6 hk_isAfterOrEqualToDate:*(a1 + 32)];

  if (v7)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v8 = objc_alloc(MEMORY[0x277CCAD78]);
  v9 = [v5 objectIdentifier];
  v10 = [v8 initWithUUIDString:v9];

  if (v10)
  {
    v11 = [*(a1 + 40) protectedDatabase];
    v12 = HDDataEntityPredicateForDataUUID();
    v23 = 0;
    v13 = [(HDDataEntity *)HDSampleEntity anyInDatabase:v11 predicate:v12 error:&v23];
    v14 = v23;

    if (!v13)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
    }

    goto LABEL_8;
  }

  v19 = MEMORY[0x277CCA9B8];
  v20 = [v5 objectIdentifier];
  v21 = [v19 hk_error:3 format:{@"reference objectIdentifier '%@' is not a UUID string", v20}];
  v17 = v21 == 0;
  if (v21)
  {
    if (a3)
    {
      v22 = v21;
      *a3 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

LABEL_12:
  return v17;
}

- (id)schemaProviderForIdentifier:(id)identifier error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_schemaProvidersByIdentifier objectForKeyedSubscript:identifierCopy];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    selfCopy = self;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    schemaProviderClasses = [(HDAttachmentManager *)self schemaProviderClasses];
    v10 = [schemaProviderClasses countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v8 = 0;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(schemaProviderClasses);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if ([v14 conformsToProtocol:&unk_283CC7B40])
          {
            schemaIdentifier = [v14 schemaIdentifier];
            v16 = [schemaIdentifier isEqualToString:identifierCopy];

            if (v16)
            {
              v17 = objc_alloc_init(v14);

              [(NSMutableDictionary *)selfCopy->_schemaProvidersByIdentifier setObject:v17 forKeyedSubscript:identifierCopy];
              v8 = v17;
            }
          }
        }

        v11 = [schemaProviderClasses countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    else
    {
      v8 = 0;
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    if (!v8)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:100 format:{@"No schema provider found for identifier '%@'", identifierCopy}];
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)supportedSchemaVersionForReference:(id)reference
{
  v32 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  schemaIdentifier = [referenceCopy schemaIdentifier];
  v23 = 0;
  v6 = [(HDAttachmentManager *)self schemaProviderForIdentifier:schemaIdentifier error:&v23];
  v7 = v23;

  if (v6)
  {
    objectIdentifier = [referenceCopy objectIdentifier];
    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_profile);
    }

    else
    {
      WeakRetained = 0;
    }

    v22 = 0;
    v10 = [v6 schemaVersionForObjectIdentifier:objectIdentifier profile:WeakRetained error:&v22];
    v11 = v22;

    if (!v10)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v19 = v12;
        schemaIdentifier2 = [referenceCopy schemaIdentifier];
        identifier = [referenceCopy identifier];
        *buf = 138544130;
        selfCopy2 = self;
        v26 = 2114;
        v27 = schemaIdentifier2;
        v28 = 2114;
        v29 = identifier;
        v30 = 2114;
        v31 = v11;
        _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get schema version for schema identifier %{public}@ for reference %{public}@, error: %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v16 = v13;
      schemaIdentifier3 = [referenceCopy schemaIdentifier];
      identifier2 = [referenceCopy identifier];
      *buf = 138544130;
      selfCopy2 = self;
      v26 = 2114;
      v27 = schemaIdentifier3;
      v28 = 2114;
      v29 = identifier2;
      v30 = 2114;
      v31 = v7;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find attachment schema provider %{public}@ for reference %{public}@: %{public}@", buf, 0x2Au);
    }

    v10 = -1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __118__HDAttachmentManager__attachmentReferencesForObjectIdentifier_schemaIdentifier_transaction_error_enumerationHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 attachmentIdentifier];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v16 = 0;
  v8 = [HDAttachmentEntity attachmentWithIdentifier:v6 profile:WeakRetained error:&v16];
  v9 = v16;

  if (!v8)
  {
    if (v9)
    {
      v9 = v9;
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = [v5 attachmentIdentifier];
      v13 = [v11 hk_error:118 format:{@"The attachment with identifier %@ was not found.", v12}];

      v9 = v13;
      if (!v9)
      {
LABEL_10:
        v10 = 0;
        goto LABEL_11;
      }
    }

    if (a3)
    {
      v14 = v9;
      *a3 = v9;
    }

    else
    {
      _HKLogDroppedError();
    }

    goto LABEL_10;
  }

  v10 = (*(*(a1 + 40) + 16))();
LABEL_11:

  return v10;
}

- (void)runMaintenanceOperationIfNeeded
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [HDKeyValueDomain alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [(HDKeyValueDomain *)v3 initWithCategory:0 domainName:@"attachment-manager" profile:WeakRetained];

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v21 = 0;
  v7 = [(HDKeyValueDomain *)v5 dateForKey:@"file-cleanup" error:&v21];
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    if (!v7 || [v6 hk_isAfterDate:v7])
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __54__HDAttachmentManager_runMaintenanceOperationIfNeeded__block_invoke;
      v20[3] = &unk_278613968;
      v20[4] = self;
      v13 = [HDMaintenanceOperation maintenanceOperationWithName:v12 queue:0 synchronousBlock:v20];

      v14 = objc_loadWeakRetained(&self->_profile);
      daemon = [v14 daemon];
      maintenanceWorkCoordinator = [daemon maintenanceWorkCoordinator];
      [maintenanceWorkCoordinator enqueueMaintenanceOperation:v13];
    }
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v24 = 2114;
      v25 = v9;
      _os_log_error_impl(&dword_228986000, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to lookup attachment cleanup date with error %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __54__HDAttachmentManager_runMaintenanceOperationIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanupAttachmentsFolder];
  v2 = [*(a1 + 32) unitTestdidCompleteFileCleanup];
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

- (void)_cleanupAttachmentsFolder
{
  v25 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = MEMORY[0x277CCC280];
  v4 = *MEMORY[0x277CCC280];
  if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = self;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Cleaning up attachments folder", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v19[4] = self;
  v20 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__HDAttachmentManager__cleanupAttachmentsFolder__block_invoke;
  v19[3] = &unk_278616048;
  v7 = [(HDHealthEntity *)HDAttachmentEntity performWriteTransactionWithHealthDatabase:database error:&v20 block:v19];
  v8 = v20;

  if (v7)
  {
    v9 = [HDKeyValueDomain alloc];
    v10 = objc_loadWeakRetained(&self->_profile);
    v11 = [(HDKeyValueDomain *)v9 initWithCategory:0 domainName:@"attachment-manager" profile:v10];

    date = [MEMORY[0x277CBEAA8] date];
    v18 = 0;
    v13 = [(HDKeyValueDomain *)v11 setDate:date forKey:@"file-cleanup" error:&v18];
    v14 = v18;

    if (!v13)
    {
      _HKInitializeLogging();
      v15 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_228986000, v15, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to set cleanup date %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v16 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Cleanup failed with error %{public}@", buf, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __48__HDAttachmentManager__cleanupAttachmentsFolder__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_14;
  }

  v6 = MEMORY[0x277CCAA00];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __78__HDAttachmentManager__moveFilesWithAttachmentsToConfirmedDirectory_errorOut___block_invoke;
  v26[3] = &unk_278621940;
  v26[4] = v3;
  v27 = v8;
  v9 = v8;
  LODWORD(v6) = [HDAttachmentEntity enumerateAttachmentsWithPredicate:0 transaction:v7 error:a3 enumerationHandler:v26];

  if (!v6)
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v12 = [v10 unconfirmedFilesDirectoryURL];
    v13 = [v11 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:a3];

    if (v13)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if (![v11 removeItemAtURL:*(*(&v22 + 1) + 8 * v18) error:{a3, v22}])
            {
              v19 = 0;
              goto LABEL_16;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v19 = 1;
LABEL_16:
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
LABEL_14:
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

BOOL __78__HDAttachmentManager__moveFilesWithAttachmentsToConfirmedDirectory_errorOut___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) unconfirmedFilesDirectoryURL];
  v7 = [v5 identifier];
  v8 = [v7 UUIDString];
  v9 = [v6 URLByAppendingPathComponent:v8];

  v10 = *(a1 + 40);
  v11 = [v9 path];
  LODWORD(v10) = [v10 fileExistsAtPath:v11];

  if (v10)
  {
    v12 = [*(a1 + 32) filesDirectoryURL];
    v13 = [v5 identifier];
    v14 = [v13 UUIDString];
    v15 = [v12 URLByAppendingPathComponent:v14];

    v16 = *(a1 + 40);
    v28 = 0;
    LOBYTE(v13) = [v16 moveItemAtURL:v9 toURL:v15 error:&v28];
    v17 = v28;
    if (v13)
    {
      v18 = 1;
    }

    else
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC280];
      if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = v19;
        v26 = [v15 path];
        v27 = [v9 path];
        *buf = 138544130;
        v30 = v24;
        v31 = 2114;
        v32 = v26;
        v33 = 2114;
        v34 = v27;
        v35 = 2114;
        v36 = v17;
        _os_log_error_impl(&dword_228986000, v25, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to move file from %{public}@ -> %{public}@ directory with error %{public}@", buf, 0x2Au);
      }

      v20 = v17;
      v18 = v20 == 0;
      if (v20)
      {
        if (a3)
        {
          v21 = v20;
          *a3 = v20;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v18 = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

@end