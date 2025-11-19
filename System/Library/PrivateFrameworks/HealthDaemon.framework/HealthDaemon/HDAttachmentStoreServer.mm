@interface HDAttachmentStoreServer
- (uint64_t)_isAuthorizedToReadAttachment:(uint64_t)a3 error:;
- (void)_lock_closeReaderForAttachmentIdentifier:(uint64_t)a1;
- (void)remote_addAttachmentWithName:(id)a3 contentTypeIdentifier:(id)a4 fileHandle:(id)a5 toObjectWithIdentifier:(id)a6 schemaIdentifier:(id)a7 attachmentMetadata:(id)a8 referenceMetadata:(id)a9 completion:(id)a10;
- (void)remote_addReferenceWithAttachment:(id)a3 toObjectWithIdentifier:(id)a4 schemaIdentifier:(id)a5 metadata:(id)a6 completion:(id)a7;
- (void)remote_attachmentReferencesForObjectIdentifier:(id)a3 schemaIdentifier:(id)a4 completion:(id)a5;
- (void)remote_getDataChunkForAttachment:(id)a3 chunkSize:(unint64_t)a4 offset:(unint64_t)a5 completion:(id)a6;
- (void)remote_removeAllReferencesWithAttachmentIdentifier:(id)a3 objectIdentifier:(id)a4 schemaIdentifier:(id)a5 completion:(id)a6;
- (void)remote_streamDataForAttachment:(id)a3;
@end

@implementation HDAttachmentStoreServer

- (void)remote_addReferenceWithAttachment:(id)a3 toObjectWithIdentifier:(id)a4 schemaIdentifier:(id)a5 metadata:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HDStandardTaskServer *)self client];
  v18 = [v17 hasEntitlement:*MEMORY[0x277CCC880]];

  if (v18)
  {
    v29 = v12;
    v19 = [(HDStandardTaskServer *)self profile];
    v20 = [v19 attachmentManager];
    v21 = [(HDStandardTaskServer *)self client];
    v31 = 0;
    v22 = [v20 writeAuthorizationForObjectIdentifier:v13 schemaIdentifier:v14 client:v21 error:&v31];
    v23 = v31;

    if (v22)
    {
      v24 = [(HDStandardTaskServer *)self profile];
      v25 = [v24 attachmentManager];
      v30 = v23;
      v12 = v29;
      v26 = [v25 addReferenceWithAttachment:v29 toObjectWithIdentifier:v13 schemaIdentifier:v14 metadata:v15 error:&v30];
      v27 = v30;

      v16[2](v16, v26, v27);
      v23 = v27;
    }

    else
    {
      v16[2](v16, 0, v23);
      v12 = v29;
    }
  }

  else
  {
    v28 = [MEMORY[0x277CCA9B8] hk_error:4 format:@"Missing required entitlement"];
    v16[2](v16, 0, v28);
  }
}

- (void)remote_addAttachmentWithName:(id)a3 contentTypeIdentifier:(id)a4 fileHandle:(id)a5 toObjectWithIdentifier:(id)a6 schemaIdentifier:(id)a7 attachmentMetadata:(id)a8 referenceMetadata:(id)a9 completion:(id)a10
{
  v36 = a3;
  v38 = a4;
  v37 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [(HDStandardTaskServer *)self profile];
  v22 = [v21 daemon];
  v23 = [v22 behavior];
  LODWORD(a5) = [v23 isAppleWatch];

  if (a5)
  {
    v24 = [MEMORY[0x277CCA9B8] hk_error:2 format:@"Unable to add attachments on this device"];
    v20[2](v20, 0, v24);

    v25 = v36;
  }

  else
  {
    v35 = v18;
    v26 = [(HDStandardTaskServer *)self profile];
    v27 = [v26 attachmentManager];
    v28 = [(HDStandardTaskServer *)self client];
    v40 = 0;
    v29 = [v27 writeAuthorizationForObjectIdentifier:v16 schemaIdentifier:v17 client:v28 error:&v40];
    v30 = v40;

    if (v29)
    {
      v31 = [(HDStandardTaskServer *)self profile];
      v32 = [v31 attachmentManager];
      v39 = 0;
      v25 = v36;
      v33 = [v32 addAttachmentWithName:v36 contentTypeIdentifier:v38 fileHandle:v37 toObjectWithIdentifier:v16 schemaIdentifier:v17 attachmentMetadata:v35 referenceMetadata:v19 error:&v39];
      v34 = v39;

      (v20)[2](v20, v33, v34);
    }

    else
    {
      v20[2](v20, 0, v30);
      v25 = v36;
    }

    v18 = v35;
  }
}

- (void)remote_removeAllReferencesWithAttachmentIdentifier:(id)a3 objectIdentifier:(id)a4 schemaIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HDStandardTaskServer *)self profile];
  v15 = [v14 attachmentManager];
  v16 = [(HDStandardTaskServer *)self client];
  v24 = 0;
  v17 = [v15 writeAuthorizationForObjectIdentifier:v11 schemaIdentifier:v12 client:v16 error:&v24];
  v18 = v24;

  if (v17)
  {
    v19 = [(HDStandardTaskServer *)self profile];
    v20 = [v19 attachmentManager];
    v23 = v18;
    v21 = [v20 removeAllReferencesWithAttachmentIdentifier:v10 objectIdentifier:v11 schemaIdentifier:v12 error:&v23];
    v22 = v23;

    v13[2](v13, v21, v22);
    v18 = v22;
  }

  else
  {
    v13[2](v13, 0, v18);
  }
}

- (void)remote_attachmentReferencesForObjectIdentifier:(id)a3 schemaIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 attachmentManager];
  v13 = [(HDStandardTaskServer *)self client];
  v43 = 0;
  v14 = [v12 readAuthorizationForObjectIdentifier:v8 schemaIdentifier:v9 client:v13 error:&v43];
  v15 = v43;

  if (v14)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = v15;
    if (self)
    {
      v17 = v9;
      v18 = [(HDStandardTaskServer *)self profile];
      v19 = [v18 attachmentManager];
      v20 = [v19 schemaProviderForIdentifier:v17 error:&v42];

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
      v23 = [(HDStandardTaskServer *)self profile];
      v41 = 0;
      v24 = [v20 schemaVersionForObjectIdentifier:v8 profile:v23 error:&v41];
      v25 = v41;

      if (v24 <= 0)
      {
        v10[2](v10, 0, v25);
        v32 = 0;
      }

      else
      {
        v35 = v25;
        v26 = [(HDStandardTaskServer *)self profile];
        v27 = [v26 attachmentManager];
        v28 = v16;
        v29 = v27;
        v39 = v24;
        v40 = 0;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __102__HDAttachmentStoreServer_remote_attachmentReferencesForObjectIdentifier_schemaIdentifier_completion___block_invoke;
        v37[3] = &unk_27861B1E8;
        v36 = v28;
        v30 = v28;
        v38 = v30;
        v31 = [v29 attachmentReferencesForObjectIdentifier:v8 schemaIdentifier:v9 error:&v40 enumerationHandler:v37];
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

        (v10)[2](v10, v33, v34);

        v25 = v35;
        v16 = v36;
      }
    }

    else
    {
      v10[2](v10, 0, v22);
    }
  }

  else
  {
    v10[2](v10, 0, v15);
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

- (void)remote_streamDataForAttachment:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __58__HDAttachmentStoreServer_remote_streamDataForAttachment___block_invoke;
  v30[3] = &unk_2786138D0;
  v30[4] = self;
  v5 = [(HDStandardTaskServer *)self remoteObjectProxyWithErrorHandler:v30];
  v6 = [v4 identifier];
  v7 = [(HDStandardTaskServer *)self profile];
  v29 = 0;
  v8 = [HDAttachmentEntity attachmentWithIdentifier:v6 profile:v7 error:&v29];
  v9 = v29;

  if (v8)
  {
    v28 = v9;
    v10 = [(HDAttachmentStoreServer *)self _isAuthorizedToReadAttachment:v8 error:&v28];
    v11 = v28;

    if (v10)
    {
      v12 = [(HDStandardTaskServer *)self profile];
      v13 = [v12 attachmentManager];
      v27 = v11;
      v14 = [v13 readerForAttachment:v8 error:&v27];
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
            [v5 clientRemote_streamDataForAttachment:v4 dataChunk:v17 error:0 done:0];
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
          [v5 clientRemote_streamDataForAttachment:v4 dataChunk:v17 error:0 done:1];

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
          v25 = [v4 identifier];
          *buf = 138543874;
          v32 = self;
          v33 = 2114;
          v34 = v25;
          v35 = 2114;
          v36 = v15;
          _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to read file for attachment %{public}@. %{public}@", buf, 0x20u);
        }

        [v14 close];
      }

      [v5 clientRemote_streamDataForAttachment:v4 dataChunk:0 error:v15 done:1];
LABEL_18:

      v11 = v15;
      goto LABEL_19;
    }

    [v5 clientRemote_streamDataForAttachment:v4 dataChunk:0 error:v11 done:1];
  }

  else
  {
    if (!v9)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = [v4 identifier];
      v9 = [v20 hk_error:118 format:{@"The attachment with identifier %@ was not found.", v21}];
    }

    [v5 clientRemote_streamDataForAttachment:v4 dataChunk:0 error:v9 done:1];
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

- (uint64_t)_isAuthorizedToReadAttachment:(uint64_t)a3 error:
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v27 = v5;
  if (a1)
  {
    v6 = v5;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = [a1 profile];
    v9 = [v8 attachmentManager];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__HDAttachmentStoreServer__isAuthorizedToReadAttachment_error___block_invoke;
    v34[3] = &unk_27861B210;
    v10 = v7;
    v35 = v10;
    v11 = [v9 attachmentReferencesForAttachment:v6 error:a3 enumerationHandler:v34];

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
        v29 = a3;
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
            v17 = [a1 profile];
            v18 = [v17 attachmentManager];
            v19 = [v16 objectIdentifier];
            v20 = [v16 schemaIdentifier];
            v21 = [a1 client];
            v22 = [v18 readAuthorizationForObjectIdentifier:v19 schemaIdentifier:v20 client:v21 error:v29];

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

- (void)remote_getDataChunkForAttachment:(id)a3 chunkSize:(unint64_t)a4 offset:(unint64_t)a5 completion:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  os_unfair_lock_lock(&self->_lock);
  openReadersByAttachment = self->_openReadersByAttachment;
  v13 = [v10 identifier];
  v14 = [(NSMutableDictionary *)openReadersByAttachment objectForKeyedSubscript:v13];

  os_unfair_lock_unlock(&self->_lock);
  if (v14)
  {
    v15 = 0;
    goto LABEL_16;
  }

  v37 = a5;
  v38 = a4;
  v41 = 0;
  v39 = v10;
  v16 = [v39 identifier];
  v17 = [(HDStandardTaskServer *)self profile];
  *buf = 0;
  v18 = [HDAttachmentEntity attachmentWithIdentifier:v16 profile:v17 error:buf];
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
      v26 = [v39 identifier];
      v27 = [v25 hk_error:118 format:{@"The attachment with identifier %@ was not found.", v26}];

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

  v20 = [(HDStandardTaskServer *)self profile];
  v21 = [v20 attachmentManager];
  v14 = [v21 readerForAttachment:v18 error:&v41];

  if (!v14)
  {
LABEL_10:
    v23 = v39;
    goto LABEL_14;
  }

  os_unfair_lock_lock(&self->_lock);
  v22 = self->_openReadersByAttachment;
  v23 = v39;
  v24 = [v39 identifier];
  [(NSMutableDictionary *)v22 setObject:v14 forKeyedSubscript:v24];

  os_unfair_lock_unlock(&self->_lock);
LABEL_14:

  v15 = v41;
  if (!v14)
  {
    v11[2](v11, 0, v15);
    goto LABEL_24;
  }

  a5 = v37;
  a4 = v38;
LABEL_16:
  v29 = v15;
  v40 = v15;
  v30 = [v14 readDataUpToLength:a4 offset:a5 error:&v40];
  v15 = v40;

  if (v30)
  {
    (v11)[2](v11, v30, 0);
    if (![v30 length] || objc_msgSend(v30, "length") < a4)
    {
      v31 = [v10 identifier];
      [(HDAttachmentStoreServer *)self _lock_closeReaderForAttachmentIdentifier:v31];
    }
  }

  else
  {
    v32 = [v10 identifier];
    [(HDAttachmentStoreServer *)self _lock_closeReaderForAttachmentIdentifier:v32];

    _HKInitializeLogging();
    v33 = *MEMORY[0x277CCC280];
    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_ERROR))
    {
      v35 = v33;
      v36 = [v10 identifier];
      *buf = 138543874;
      *&buf[4] = self;
      v43 = 2114;
      v44 = v36;
      v45 = 2114;
      v46 = v15;
      _os_log_error_impl(&dword_228986000, v35, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to read file for attachment %{public}@. %{public}@", buf, 0x20u);
    }

    v11[2](v11, 0, v15);
  }

LABEL_24:
  v34 = *MEMORY[0x277D85DE8];
}

- (void)_lock_closeReaderForAttachmentIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock((a1 + 48));
    v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
    [v4 close];
    [*(a1 + 40) setObject:0 forKeyedSubscript:v3];

    os_unfair_lock_unlock((a1 + 48));
  }
}

@end