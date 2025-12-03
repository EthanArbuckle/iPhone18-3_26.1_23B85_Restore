@interface HDAttachmentStoreServer
- (uint64_t)_isAuthorizedToReadAttachment:(uint64_t)attachment error:;
- (void)_lock_closeReaderForAttachmentIdentifier:(uint64_t)identifier;
- (void)remote_addAttachmentWithName:(id)name contentTypeIdentifier:(id)identifier fileHandle:(id)handle toObjectWithIdentifier:(id)withIdentifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata completion:(id)self0;
- (void)remote_addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata completion:(id)completion;
- (void)remote_attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier completion:(id)completion;
- (void)remote_getDataChunkForAttachment:(id)attachment chunkSize:(unint64_t)size offset:(unint64_t)offset completion:(id)completion;
- (void)remote_removeAllReferencesWithAttachmentIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier schemaIdentifier:(id)schemaIdentifier completion:(id)completion;
- (void)remote_streamDataForAttachment:(id)attachment;
@end

@implementation HDAttachmentStoreServer

- (void)remote_addReferenceWithAttachment:(id)attachment toObjectWithIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier metadata:(id)metadata completion:(id)completion
{
  attachmentCopy = attachment;
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  completionCopy = completion;
  client = [(HDStandardTaskServer *)self client];
  v18 = [client hasEntitlement:*MEMORY[0x277CCC880]];

  if (v18)
  {
    v29 = attachmentCopy;
    profile = [(HDStandardTaskServer *)self profile];
    attachmentManager = [profile attachmentManager];
    client2 = [(HDStandardTaskServer *)self client];
    v31 = 0;
    v22 = [attachmentManager writeAuthorizationForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy client:client2 error:&v31];
    v23 = v31;

    if (v22)
    {
      profile2 = [(HDStandardTaskServer *)self profile];
      attachmentManager2 = [profile2 attachmentManager];
      v30 = v23;
      attachmentCopy = v29;
      v26 = [attachmentManager2 addReferenceWithAttachment:v29 toObjectWithIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy metadata:metadataCopy error:&v30];
      v27 = v30;

      completionCopy[2](completionCopy, v26, v27);
      v23 = v27;
    }

    else
    {
      completionCopy[2](completionCopy, 0, v23);
      attachmentCopy = v29;
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Missing required entitlement"];
    completionCopy[2](completionCopy, 0, v28);
  }
}

- (void)remote_addAttachmentWithName:(id)name contentTypeIdentifier:(id)identifier fileHandle:(id)handle toObjectWithIdentifier:(id)withIdentifier schemaIdentifier:(id)schemaIdentifier attachmentMetadata:(id)metadata referenceMetadata:(id)referenceMetadata completion:(id)self0
{
  nameCopy = name;
  identifierCopy = identifier;
  handleCopy = handle;
  withIdentifierCopy = withIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  metadataCopy = metadata;
  referenceMetadataCopy = referenceMetadata;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  LODWORD(handle) = [behavior isAppleWatch];

  if (handle)
  {
    v24 = [MEMORY[0x277CCA9B8] hk_error:2 format:@"Unable to add attachments on this device"];
    completionCopy[2](completionCopy, 0, v24);

    v25 = nameCopy;
  }

  else
  {
    v35 = metadataCopy;
    profile2 = [(HDStandardTaskServer *)self profile];
    attachmentManager = [profile2 attachmentManager];
    client = [(HDStandardTaskServer *)self client];
    v40 = 0;
    v29 = [attachmentManager writeAuthorizationForObjectIdentifier:withIdentifierCopy schemaIdentifier:schemaIdentifierCopy client:client error:&v40];
    v30 = v40;

    if (v29)
    {
      profile3 = [(HDStandardTaskServer *)self profile];
      attachmentManager2 = [profile3 attachmentManager];
      v39 = 0;
      v25 = nameCopy;
      v33 = [attachmentManager2 addAttachmentWithName:nameCopy contentTypeIdentifier:identifierCopy fileHandle:handleCopy toObjectWithIdentifier:withIdentifierCopy schemaIdentifier:schemaIdentifierCopy attachmentMetadata:v35 referenceMetadata:referenceMetadataCopy error:&v39];
      v34 = v39;

      (completionCopy)[2](completionCopy, v33, v34);
    }

    else
    {
      completionCopy[2](completionCopy, 0, v30);
      v25 = nameCopy;
    }

    metadataCopy = v35;
  }
}

- (void)remote_removeAllReferencesWithAttachmentIdentifier:(id)identifier objectIdentifier:(id)objectIdentifier schemaIdentifier:(id)schemaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  objectIdentifierCopy = objectIdentifier;
  schemaIdentifierCopy = schemaIdentifier;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  attachmentManager = [profile attachmentManager];
  client = [(HDStandardTaskServer *)self client];
  v24 = 0;
  v17 = [attachmentManager writeAuthorizationForObjectIdentifier:objectIdentifierCopy schemaIdentifier:schemaIdentifierCopy client:client error:&v24];
  v18 = v24;

  if (v17)
  {
    profile2 = [(HDStandardTaskServer *)self profile];
    attachmentManager2 = [profile2 attachmentManager];
    v23 = v18;
    v21 = [attachmentManager2 removeAllReferencesWithAttachmentIdentifier:identifierCopy objectIdentifier:objectIdentifierCopy schemaIdentifier:schemaIdentifierCopy error:&v23];
    v22 = v23;

    completionCopy[2](completionCopy, v21, v22);
    v18 = v22;
  }

  else
  {
    completionCopy[2](completionCopy, 0, v18);
  }
}

- (void)remote_attachmentReferencesForObjectIdentifier:(id)identifier schemaIdentifier:(id)schemaIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  schemaIdentifierCopy = schemaIdentifier;
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  attachmentManager = [profile attachmentManager];
  client = [(HDStandardTaskServer *)self client];
  v43 = 0;
  v14 = [attachmentManager readAuthorizationForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy client:client error:&v43];
  v15 = v43;

  if (v14)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = v15;
    if (self)
    {
      v17 = schemaIdentifierCopy;
      profile2 = [(HDStandardTaskServer *)self profile];
      attachmentManager2 = [profile2 attachmentManager];
      v20 = [attachmentManager2 schemaProviderForIdentifier:v17 error:&v42];

      v21 = v42;
    }

    else
    {
      v20 = 0;
      v21 = v15;
    }

    v22 = v21;

    if (v20)
    {
      profile3 = [(HDStandardTaskServer *)self profile];
      v41 = 0;
      v24 = [v20 schemaVersionForObjectIdentifier:identifierCopy profile:profile3 error:&v41];
      v25 = v41;

      if (v24 <= 0)
      {
        completionCopy[2](completionCopy, 0, v25);
        v32 = 0;
      }

      else
      {
        v35 = v25;
        profile4 = [(HDStandardTaskServer *)self profile];
        attachmentManager3 = [profile4 attachmentManager];
        v28 = v16;
        v29 = attachmentManager3;
        v39 = v24;
        v40 = 0;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __102__HDAttachmentStoreServer_remote_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke;
        v37[3] = &unk_27861B1E8;
        v36 = v28;
        v30 = v28;
        v38 = v30;
        v31 = [v29 attachmentReferencesForObjectIdentifier:identifierCopy schemaIdentifier:schemaIdentifierCopy error:&v40 enumerationHandler:v37];
        v32 = v40;

        if (v31)
        {
          v33 = v30;
          v34 = 0;
        }

        else
        {
          v33 = 0;
          v34 = v32;
        }

        (completionCopy)[2](completionCopy, v33, v34);

        v25 = v35;
        v16 = v36;
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, v22);
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, v15);
    v22 = v15;
  }
}

uint64_t __102__HDAttachmentStoreServer_remote_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7 >= [v5 schemaVersion])
  {
    v8 = [v5 hkAttachmentReferenceWithAttachment:v6];
    [*(a1 + 32) addObject:v8];
  }

  return 1;
}

- (void)remote_streamDataForAttachment:(id)attachment
{
  v37 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __58__HDAttachmentStoreServer_remote_streamDataForAttachment___block_invoke;
  v30[3] = &unk_2786138D0;
  v30[4] = self;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v30];
  identifier = [attachmentCopy identifier];
  profile = [(HDStandardTaskServer *)self profile];
  v29 = 0;
  v8 = [HDAttachmentEntity attachmentWithIdentifier:identifier profile:profile error:&v29];
  v9 = v29;

  if (v8)
  {
    v28 = v9;
    v10 = [(HDAttachmentStoreServer *)self _isAuthorizedToReadAttachment:v8 error:&v28];
    v11 = v28;

    if (v10)
    {
      profile2 = [(HDStandardTaskServer *)self profile];
      attachmentManager = [profile2 attachmentManager];
      v27 = v11;
      v14 = [attachmentManager readerForAttachment:v8 error:&v27];
      v15 = v27;

      if (v14)
      {
        v16 = *MEMORY[0x277CCB850];
        v26 = v15;
        v17 = [v14 readDataUpToLength:v16 offset:0 error:&v26];
        v18 = v26;

        if (v17)
        {
          v19 = 0;
          while ([v17 length])
          {
            [v5 clientRemote_streamDataForAttachment:attachmentCopy dataChunk:v17 error:0 done:0];
            v19 += [v17 length];

            v26 = v18;
            v17 = [v14 readDataUpToLength:v16 offset:v19 error:&v26];
            v15 = v26;

            v18 = v15;
            if (!v17)
            {
              goto LABEL_14;
            }
          }

          [v14 close];
          [v5 clientRemote_streamDataForAttachment:attachmentCopy dataChunk:v17 error:0 done:1];

          v15 = v18;
          goto LABEL_18;
        }

        v15 = v18;
LABEL_14:
        _HKInitializeLogging();
        v22 = *MEMORY[0x277CCC280];
        if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
        {
          v24 = v22;
          identifier2 = [attachmentCopy identifier];
          *buf = 138543874;
          selfCopy = self;
          v33 = 2114;
          v34 = identifier2;
          v35 = 2114;
          v36 = v15;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to read file for attachment %{public}@. %{public}@", buf, 0x20u);
        }

        [v14 close];
      }

      [v5 clientRemote_streamDataForAttachment:attachmentCopy dataChunk:0 error:v15 done:1];
LABEL_18:

      v11 = v15;
      goto LABEL_19;
    }

    [v5 clientRemote_streamDataForAttachment:attachmentCopy dataChunk:0 error:v11 done:1];
  }

  else
  {
    if (!v9)
    {
      v20 = MEMORY[0x277CCA9B8];
      identifier3 = [attachmentCopy identifier];
      v9 = [v20 hk_error:118 format:{@"The attachment with identifier %@ was not found.", identifier3}];
    }

    [v5 clientRemote_streamDataForAttachment:attachmentCopy dataChunk:0 error:v9 done:1];
    v11 = v9;
  }

LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

void __58__HDAttachmentStoreServer_remote_streamDataForAttachment___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to get HKAttachmentStore remote object proxy: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_isAuthorizedToReadAttachment:(uint64_t)attachment error:
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v27 = v5;
  if (self)
  {
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    profile = [self profile];
    attachmentManager = [profile attachmentManager];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__HDAttachmentStoreServer__isAuthorizedToReadAttachment_error___block_invoke;
    v34[3] = &unk_27861B210;
    v10 = v7;
    v35 = v10;
    v11 = [attachmentManager attachmentReferencesForAttachment:v6 error:attachment enumerationHandler:v34];

    if (v11)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v10;
      v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v26 = v10;
        attachmentCopy = attachment;
        v14 = *v31;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            profile2 = [self profile];
            attachmentManager2 = [profile2 attachmentManager];
            objectIdentifier = [v16 objectIdentifier];
            schemaIdentifier = [v16 schemaIdentifier];
            client = [self client];
            v22 = [attachmentManager2 readAuthorizationForObjectIdentifier:objectIdentifier schemaIdentifier:schemaIdentifier client:client error:attachmentCopy];

            if (v22)
            {
              v23 = 1;
              goto LABEL_14;
            }
          }

          v13 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v23 = 0;
LABEL_14:
        v10 = v26;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)remote_getDataChunkForAttachment:(id)attachment chunkSize:(unint64_t)size offset:(unint64_t)offset completion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  openReadersByAttachment = self->_openReadersByAttachment;
  identifier = [attachmentCopy identifier];
  v14 = [(NSMutableDictionary *)openReadersByAttachment objectForKeyedSubscript:identifier];

  os_unfair_lock_unlock(&self->_lock);
  if (v14)
  {
    v15 = 0;
    goto LABEL_16;
  }

  offsetCopy = offset;
  sizeCopy = size;
  v41 = 0;
  v39 = attachmentCopy;
  identifier2 = [v39 identifier];
  profile = [(HDStandardTaskServer *)self profile];
  *buf = 0;
  v18 = [HDAttachmentEntity attachmentWithIdentifier:identifier2 profile:profile error:buf];
  v19 = *buf;

  if (!v18)
  {
    if (v19)
    {
      v19 = v19;
      v23 = v39;
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v23 = v39;
      identifier3 = [v39 identifier];
      v27 = [v25 hk_error:118 format:{@"The attachment with identifier %@ was not found.", identifier3}];

      v19 = v27;
      if (!v19)
      {
LABEL_13:
        v14 = 0;
        goto LABEL_14;
      }
    }

    v28 = v19;
    v41 = v19;

    goto LABEL_13;
  }

  if (![(HDAttachmentStoreServer *)self _isAuthorizedToReadAttachment:v18 error:&v41])
  {
    v14 = 0;
    goto LABEL_10;
  }

  profile2 = [(HDStandardTaskServer *)self profile];
  attachmentManager = [profile2 attachmentManager];
  v14 = [attachmentManager readerForAttachment:v18 error:&v41];

  if (!v14)
  {
LABEL_10:
    v23 = v39;
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_lock);
  v22 = self->_openReadersByAttachment;
  v23 = v39;
  identifier4 = [v39 identifier];
  [(NSMutableDictionary *)v22 setObject:v14 forKeyedSubscript:identifier4];

  os_unfair_lock_unlock(&self->_lock);
LABEL_14:

  v15 = v41;
  if (!v14)
  {
    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_24;
  }

  offset = offsetCopy;
  size = sizeCopy;
LABEL_16:
  v29 = v15;
  v40 = v15;
  v30 = [v14 readDataUpToLength:size offset:offset error:&v40];
  v15 = v40;

  if (v30)
  {
    (completionCopy)[2](completionCopy, v30, 0);
    if (![v30 length] || objc_msgSend(v30, "length") < size)
    {
      identifier5 = [attachmentCopy identifier];
      [(HDAttachmentStoreServer *)self _lock_closeReaderForAttachmentIdentifier:identifier5];
    }
  }

  else
  {
    identifier6 = [attachmentCopy identifier];
    [(HDAttachmentStoreServer *)self _lock_closeReaderForAttachmentIdentifier:identifier6];

    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      v35 = v33;
      identifier7 = [attachmentCopy identifier];
      *buf = 138543874;
      *&buf[4] = self;
      v43 = 2114;
      v44 = identifier7;
      v45 = 2114;
      v46 = v15;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to read file for attachment %{public}@. %{public}@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, 0, v15);
  }

LABEL_24:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_lock_closeReaderForAttachmentIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    v3 = a2;
    os_unfair_lock_lock((identifier + 48));
    v4 = [*(identifier + 40) objectForKeyedSubscript:v3];
    [v4 close];
    [*(identifier + 40) setObject:0 forKeyedSubscript:v3];

    os_unfair_lock_unlock((identifier + 48));
  }
}

@end