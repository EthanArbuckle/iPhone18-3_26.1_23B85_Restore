@interface MFMailDropMailDelivery
+ (id)_mailDropZone;
- (BOOL)_uploadAttachmentsViaCloudKit:(id)kit zone:(id)zone records:(id)records zippedPhotos:(id)photos attachmentRecords:(id)attachmentRecords images:(id)images;
- (NSArray)attachments;
- (id)_attachmentManager;
- (id)ckDatabase;
- (id)deliverSynchronouslyWithCompletion:(id)completion;
- (int64_t)_processAttachments;
- (void)_recordZoneIDInDatabase:(id)database completionHandler:(id)handler;
@end

@implementation MFMailDropMailDelivery

- (id)_attachmentManager
{
  v2 = +[MFAttachmentManager defaultManager];
  if (!v2)
  {
    v3 = [MFAttachmentLibraryManager alloc];
    v4 = +[MFMailMessageLibrary defaultInstance];
    v2 = [(MFAttachmentLibraryManager *)v3 initWithPrimaryLibrary:v4];
  }

  return v2;
}

- (NSArray)attachments
{
  v30 = *MEMORY[0x1E69E9840];
  if (!self->_attachments)
  {
    if (self->super._message)
    {
      message = [(MFOutgoingMessageDelivery *)self message];
      messageBody = [message messageBody];
      attachmentURLs = [messageBody attachmentURLs];

      _attachmentManager = [(MFMailDropMailDelivery *)self _attachmentManager];
      v7 = [_attachmentManager attachmentsForURLs:attachmentURLs error:0];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v7;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            placeholder = [v12 placeholder];

            if (placeholder)
            {
              placeholder2 = [v12 placeholder];
              contentID = [placeholder2 contentID];
              [v12 setContentID:contentID];
            }
          }

          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v9);
      }

      attachments = self->_attachments;
      self->_attachments = v8;
    }

    else
    {
      mixedContent = self->super._mixedContent;
      if (mixedContent || (mixedContent = self->super._otherHTMLAndAttachments) != 0)
      {
        v18 = mixedContent;
        v19 = [(NSArray *)v18 indexesOfObjectsPassingTest:&__block_literal_global_40];
        v20 = [(NSArray *)v18 objectsAtIndexes:v19];
        v21 = self->_attachments;
        self->_attachments = v20;
      }
    }
  }

  v22 = self->_attachments;
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

uint64_t __37__MFMailDropMailDelivery_attachments__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)deliverSynchronouslyWithCompletion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = EMLogMailDrop();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Delivering Mail Drop message", buf, 2u);
  }

  _processAttachments = [(MFMailDropMailDelivery *)self _processAttachments];
  v7 = EMLogMailDrop();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = _processAttachments;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "Finished processing attachments with state: %lu", buf, 0xCu);
  }

  if (_processAttachments == 8)
  {
    v10 = EMLogMailDrop();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "MailDrop message is undeliverable", buf, 2u);
    }

    v9 = [[MFDeliveryResult alloc] initWithStatus:7];
    goto LABEL_13;
  }

  if (_processAttachments == 6)
  {
    v8 = EMLogMailDrop();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Continuing with Mail Drop message delivery", buf, 2u);
    }

    v15.receiver = self;
    v15.super_class = MFMailDropMailDelivery;
    v9 = [(MFOutgoingMessageDelivery *)&v15 deliverSynchronouslyWithCompletion:completionCopy];
LABEL_13:
    v11 = v9;
    goto LABEL_17;
  }

  v12 = EMLogMailDrop();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "MailDrop message is incomplete", buf, 2u);
  }

  v11 = [[MFDeliveryResult alloc] initWithStatus:8];
  [(MFDeliveryResult *)v11 setAttributes:_processAttachments];
LABEL_17:

  v13 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)ckDatabase
{
  v2 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.largeattachment"];
  [v2 setSourceApplicationBundleIdentifier:*MEMORY[0x1E69B17F0]];
  privateCloudDatabase = [v2 privateCloudDatabase];

  return privateCloudDatabase;
}

- (int64_t)_processAttachments
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = EMLogMailDrop();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Processing attachments", buf, 2u);
  }

  ckDatabase = [(MFMailDropMailDelivery *)self ckDatabase];
  attachments = [(MFMailDropMailDelivery *)self attachments];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(attachments, "count")}];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(attachments, "count")}];
  array = [MEMORY[0x1E695DF70] array];
  promise = [MEMORY[0x1E699B868] promise];
  if (attachments && EFProtectedDataAvailable())
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __45__MFMailDropMailDelivery__processAttachments__block_invoke;
    v28[3] = &unk_1E7AA62A0;
    v29 = promise;
    selfCopy = self;
    v31 = v5;
    v32 = v6;
    v33 = array;
    v34 = ckDatabase;
    [(MFMailDropMailDelivery *)self _recordZoneIDInDatabase:v34 completionHandler:v28];

    v9 = v29;
  }

  else
  {
    v10 = EMLogMailDrop();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MFMailDropMailDelivery *)v10 _processAttachments:v11];
    }

    v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MFMessageErrorDomain" code:1029 userInfo:0];
    [promise finishWithError:v9];
  }

  future = [promise future];
  v27 = 0;
  v19 = [future result:&v27];
  v20 = v27;
  integerValue = [v19 integerValue];

  v22 = EMLogMailDrop();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [v20 ef_publicDescription];
    *buf = 134218242;
    v36 = integerValue;
    v37 = 2114;
    v38 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "Mail Drop attachments finished processing with result: %lu, error:%{public}@", buf, 0x16u);
  }

  if (v20)
  {
    integerValue = 0;
  }

  else if (integerValue >= 4)
  {
    if ([(MFMailDropMailDelivery *)self updateMessageWithAttachmentsSynchronously])
    {
      integerValue = 6;
    }

    else
    {
      integerValue = 8;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
  return integerValue;
}

void __45__MFMailDropMailDelivery__processAttachments__block_invoke(id *a1, void *a2, void *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v54 = a3;
  v57 = v5;
  v58 = a1;
  if (v5)
  {
    v79 = 0;
    v80 = &v79;
    v81 = 0x2020000000;
    v82 = 2;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v6 = [a1[5] attachments];
    v7 = [v6 countByEnumeratingWithState:&v75 objects:v92 count:16];
    if (v7)
    {
      v8 = *v76;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v76 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v75 + 1) + 8 * i);
          if ([v10 isImageFile])
          {
            v11 = EMLogMailDrop();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v10 fileName];
              *buf = 141558274;
              v85 = 1752392040;
              v86 = 2112;
              v87 = v12;
              _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Adding attachment '%{mask.hash}@' as image.", buf, 0x16u);
            }

            [v58[8] addObject:v10];
          }

          else
          {
            v13 = [v10 fetchDataToURL:0];
            if (v13)
            {
              v14 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"mailAttachment" zoneID:v57];
              v15 = [objc_alloc(MEMORY[0x1E695B878]) initWithFileURL:v13];
              [v14 setObject:v15 forKeyedSubscript:@"data"];
              v16 = [v10 mimeType];
              [v14 setObject:v16 forKeyedSubscript:@"contentType"];

              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "decodedFileSize")}];
              [v14 setObject:v17 forKeyedSubscript:@"fileSize"];

              v18 = [MEMORY[0x1E695DF00] date];
              [v14 setObject:v18 forKeyedSubscript:@"uploadDate"];

              [v58[6] addObject:v14];
              v19 = v58[7];
              v20 = [v14 recordID];
              [v19 setObject:v10 forKeyedSubscript:v20];

              v21 = EMLogMailDrop();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v22 = [v14 recordID];
                v23 = [v10 fileName];
                *buf = 141558786;
                v85 = 1752392040;
                v86 = 2112;
                v87 = v22;
                v88 = 2160;
                v89 = 1752392040;
                v90 = 2112;
                v91 = v23;
                _os_log_error_impl(&dword_1B0389000, v21, OS_LOG_TYPE_ERROR, "Mail Drop added record '%{mask.hash}@' for attachment '%{mask.hash}@'.", buf, 0x2Au);
              }
            }

            else
            {
              v14 = EMLogMailDrop();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v24 = [v10 fileName];
                *buf = 141558274;
                v85 = 1752392040;
                v86 = 2112;
                v87 = v24;
                _os_log_error_impl(&dword_1B0389000, v14, OS_LOG_TYPE_ERROR, "Mail Drop couldn't create file for attachment '%{mask.hash}@'. Ignoring attachment.", buf, 0x16u);
              }
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v75 objects:v92 count:16];
      }

      while (v7);
    }

    v25 = v58;
    if ([v58[8] count])
    {
      v55 = [MFAttachmentUtilities temporaryFileURLWithExtension:@"zip"];
      v56 = [MFAttachmentDataProvider dataProviderWithURL:v55];
      v26 = +[MFFileArchiveDirectory archiveDirectory];
      [v26 setUrl:v55];
      v73 = 0u;
      v74 = 0u;
      v72 = 0u;
      v71 = 0u;
      v27 = v58[8];
      v28 = [v27 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v28)
      {
        v29 = *v72;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v72 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v71 + 1) + 8 * j);
            v32 = [v31 fetchDataSynchronously:0];
            v33 = [MFFileArchiveEntry alloc];
            v34 = [v31 fileName];
            v35 = [(MFFileArchiveEntry *)v33 initWithContents:v32 path:v34];

            [v26 setArchiveEntry:v35];
          }

          v28 = [v27 countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v28);
      }

      v36 = +[MFFileArchive archive];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __45__MFMailDropMailDelivery__processAttachments__block_invoke_49;
      v59[3] = &unk_1E7AA6278;
      v70 = &v79;
      v37 = v56;
      v60 = v37;
      v38 = v26;
      v39 = v58[5];
      v61 = v38;
      v62 = v39;
      v63 = v58[9];
      v64 = v57;
      v65 = v58[6];
      v40 = v55;
      v66 = v40;
      v67 = v58[7];
      v68 = v58[8];
      v69 = v58[4];
      [v36 compressContents:v38 completion:v59];
    }

    else
    {
      if ([v58[5] _uploadAttachmentsViaCloudKit:v58[9] zone:v57 records:v58[6] zippedPhotos:0 attachmentRecords:v58[7] images:0])
      {
        v80[3] = 4;
      }

      else
      {
        v43 = EMLogMailDrop();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          __45__MFMailDropMailDelivery__processAttachments__block_invoke_cold_1(v43, v44, v45, v46, v47, v48, v49, v50);
        }

        v51 = v80[3];
        v25 = v58;
      }

      v52 = v25[4];
      v40 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      [v52 finishWithResult:v40];
    }

    _Block_object_dispose(&v79, 8);
    v42 = v54;
  }

  else
  {
    v41 = EMLogMailDrop();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [v54 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __45__MFMailDropMailDelivery__processAttachments__block_invoke_cold_2();
    }

    v42 = v54;
    [a1[4] finishWithError:v54];
  }

  v53 = *MEMORY[0x1E69E9840];
}

BOOL __45__MFMailDropMailDelivery__processAttachments__block_invoke_49(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v32 = a2;
  v33 = a1;
  if (v32)
  {
    v37 = EMLogMailDrop();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [v32 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __45__MFMailDropMailDelivery__processAttachments__block_invoke_49_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 112) + 8) + 24) = 3;
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) contents];
    [v3 save:v4];

    if ([*(v33 + 48) _uploadAttachmentsViaCloudKit:*(v33 + 56) zone:*(v33 + 64) records:*(v33 + 72) zippedPhotos:*(v33 + 80) attachmentRecords:*(v33 + 88) images:*(v33 + 96)])
    {
      *(*(*(v33 + 112) + 8) + 24) = 4;
      v37 = [*(v33 + 48) scaledImages:*(v33 + 96)];
      [MEMORY[0x1E695DF70] array];
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v36 = v44 = 0u;
      v5 = [*(v33 + 48) attachments];
      obj = v5;
      v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v6)
      {
        v35 = *v44;
        do
        {
          v38 = v6;
          for (i = 0; i != v38; ++i)
          {
            if (*v44 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v43 + 1) + 8 * i);
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v9 = v37;
            v10 = [v9 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v10)
            {
              v11 = *v40;
              while (2)
              {
                for (j = 0; j != v10; ++j)
                {
                  if (*v40 != v11)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v13 = *(*(&v39 + 1) + 8 * j);
                  v14 = [v13 contentID];
                  v15 = [v8 contentID];
                  v16 = [v14 isEqualToString:v15];

                  if (v16)
                  {
                    v17 = v13;

                    v8 = v17;
                    goto LABEL_20;
                  }
                }

                v10 = [v9 countByEnumeratingWithState:&v39 objects:v47 count:16];
                if (v10)
                {
                  continue;
                }

                break;
              }
            }

LABEL_20:

            v18 = [v8 mailDropMetadata];
            [v18 setFlags:{objc_msgSend(v18, "flags") | 8}];

            [v36 addObject:v8];
          }

          v5 = obj;
          v6 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
        }

        while (v6);
      }

      [*(v33 + 48) setAttachments:v36];
      *(*(*(v33 + 112) + 8) + 24) = 5;
    }

    else
    {
      v19 = EMLogMailDrop();
      v37 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __45__MFMailDropMailDelivery__processAttachments__block_invoke_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  v27 = *(v33 + 104);
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(v33 + 112) + 8) + 24)];
  [v27 finishWithResult:v28];

  v29 = *(*(*(v33 + 112) + 8) + 24) > 3;
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

void __95__MFMailDropMailDelivery_publishRecord_database_attachmentRecords_images_allowsCellularAccess___block_invoke(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [v12 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __95__MFMailDropMailDelivery_publishRecord_database_attachmentRecords_images_allowsCellularAccess___block_invoke_cold_1();
    }

    [a1[4] finishWithError:v12];
    goto LABEL_21;
  }

  v14 = [v11 downloadURL];
  v15 = [MEMORY[0x1E699AD00] mailDropMetadata];
  [MEMORY[0x1E699AD08] parseURL:v14 intoMetadata:v15];
  v16 = [v11 downloadURLExpiration];
  [v15 setExpiration:v16];

  v17 = [a1[5] objectForKeyedSubscript:v9];
  if (v17)
  {
    v18 = [v15 fileName];
    v19 = [v18 isEqualToString:*MEMORY[0x1E699A790]];

    if (v19)
    {
      v20 = [v15 flags] | 2;
    }

    else if ([v17 isImageFile])
    {
      v20 = [v15 flags] | 8;
    }

    else
    {
      v20 = [v15 flags] | 4;
    }

    [v15 setFlags:v20];
    v24 = [v17 mailDropMetadata];
    v23 = v24;
    if (v24)
    {
      [v24 merge:v15];
    }

    else
    {
      [v17 setMailDropMetadata:v15];
    }

    goto LABEL_17;
  }

  v21 = [v15 fileName];
  v22 = [v21 isEqualToString:*MEMORY[0x1E699A790]];

  if (v22)
  {
    v23 = [a1[6] imageArchiveMetadata];
    [v23 merge:v15];
LABEL_17:

    goto LABEL_18;
  }

  [v15 setFlags:{objc_msgSend(v15, "flags") | 8}];
LABEL_18:
  v25 = MFLogGeneral();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [v11 downloadURL];
    objc_claimAutoreleasedReturnValue();
    __95__MFMailDropMailDelivery_publishRecord_database_attachmentRecords_images_allowsCellularAccess___block_invoke_cold_2();
  }

  [a1[4] finishWithResult:v11];
LABEL_21:

  v26 = *MEMORY[0x1E69E9840];
}

- (BOOL)_uploadAttachmentsViaCloudKit:(id)kit zone:(id)zone records:(id)records zippedPhotos:(id)photos attachmentRecords:(id)attachmentRecords images:(id)images
{
  v66 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  zoneCopy = zone;
  recordsCopy = records;
  photosCopy = photos;
  attachmentRecordsCopy = attachmentRecords;
  imagesCopy = images;
  v64 = 0;
  v51 = photosCopy;
  [photosCopy getResourceValue:&v64 forKey:*MEMORY[0x1E695DB50] error:{0, recordsCopy}];
  v49 = v64;
  integerValue = [v49 integerValue];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v17 = recordsCopy;
  v18 = [v17 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v18)
  {
    v19 = *v61;
    do
    {
      v20 = 0;
      do
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v60 + 1) + 8 * v20) objectForKeyedSubscript:@"filesize"];
        integerValue2 = [v21 integerValue];

        integerValue += integerValue2;
        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v18);
  }

  if (v51)
  {
    v23 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"mailAttachment" zoneID:zoneCopy];
    v24 = [objc_alloc(MEMORY[0x1E695B878]) initWithFileURL:v51];
    [v23 setObject:v24 forKeyedSubscript:@"data"];
    [v23 setObject:@"application/zip" forKeyedSubscript:@"contentType"];
    [v23 setObject:v49 forKeyedSubscript:@"fileSize"];
    date = [MEMORY[0x1E695DF00] date];
    [v23 setObject:date forKeyedSubscript:@"uploadDate"];

    [v17 addObject:v23];
    imageArchiveMetadata = [(MFMailDropMailDelivery *)self imageArchiveMetadata];
    LODWORD(date) = imageArchiveMetadata == 0;

    if (date)
    {
      mailDropMetadata = [MEMORY[0x1E699AD00] mailDropMetadata];
      [(MFMailDropMailDelivery *)self setImageArchiveMetadata:mailDropMetadata];

      imageArchiveMetadata2 = [(MFMailDropMailDelivery *)self imageArchiveMetadata];
      [imageArchiveMetadata2 setFlags:2];
    }
  }

  v29 = objc_alloc_init(MEMORY[0x1E695BA00]);
  [v29 setAllowsCellularAccess:integerValue < 0x6400001];
  v30 = [objc_alloc(MEMORY[0x1E695B9B8]) initWithRecordsToSave:v17 recordIDsToDelete:0];
  [v30 setConfiguration:v29];
  [v30 setDatabase:kitCopy];
  [v30 setQueuePriority:8];
  [v30 setQualityOfService:25];
  [v30 setPerRecordProgressBlock:&__block_literal_global_69];
  [v30 setPerRecordCompletionBlock:&__block_literal_global_73];
  promise = [MEMORY[0x1E699B868] promise];
  v32 = integerValue < 0x6400001;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_74;
  v53[3] = &unk_1E7AA6380;
  v33 = promise;
  v54 = v33;
  selfCopy = self;
  v34 = kitCopy;
  v56 = v34;
  v35 = attachmentRecordsCopy;
  v57 = v35;
  v36 = imagesCopy;
  v58 = v36;
  v59 = v32;
  [v30 setModifyRecordsCompletionBlock:v53];
  v37 = MFLogGeneral();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [MFMailDropMailDelivery _uploadAttachmentsViaCloudKit:v34 zone:v37 records:v38 zippedPhotos:? attachmentRecords:? images:?];
  }

  [v34 addOperation:v30];
  future = [v33 future];
  v52 = 0;
  v40 = [future result:&v52];
  v41 = v52;

  if (!v40)
  {
    v42 = MFLogGeneral();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [v41 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMailDropMailDelivery _uploadAttachmentsViaCloudKit:zone:records:zippedPhotos:attachmentRecords:images:];
    }
  }

  bOOLValue = [v40 BOOLValue];

  v44 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

void __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke(double a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 values];
  v6 = [v5 valueForKey:@"data"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 fileURL];
    v11 = [v10 path];
    v12 = [v11 lastPathComponent];
    v13 = 134218242;
    v14 = floor(a1 * 100.0);
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEBUG, "Mail Drop progress %f for record:%@", &v13, 0x16u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_70(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [v5 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_70_cold_1();
    }
  }

  else
  {
    v7 = [v4 values];
    v8 = [v7 valueForKey:@"data"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v6 fileURL];
        v11 = [v10 path];
        v12 = [v11 lastPathComponent];
        v14 = 138412290;
        v15 = v12;
        _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "#Attachments Mail Drop complete for record:%@", &v14, 0xCu);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v9 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_74_cold_1();
    }

    [*(a1 + 32) finishWithError:v9];
  }

  else
  {
    v11 = MEMORY[0x1E699B7C8];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_76;
    v24[3] = &unk_1E7AA6330;
    v19 = *(a1 + 40);
    v12 = *(&v19 + 1);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v25 = v19;
    v26 = v15;
    v27 = *(a1 + 72);
    v16 = [v7 ef_map:v24];
    v17 = [v11 join:v16];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_2;
    v22[3] = &unk_1E7AA6358;
    v23 = *(a1 + 32);
    [v17 addSuccessBlock:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_3;
    v20[3] = &unk_1E7AA5228;
    v21 = *(a1 + 32);
    [v17 addFailureBlock:v20];
  }

  v18 = *MEMORY[0x1E69E9840];
}

id __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_76(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) publishRecord:a2 database:*(a1 + 40) attachmentRecords:*(a1 + 48) images:*(a1 + 56) allowsCellularAccess:*(a1 + 64)];

  return v2;
}

- (void)_recordZoneIDInDatabase:(id)database completionHandler:(id)handler
{
  databaseCopy = database;
  handlerCopy = handler;
  v7 = +[MFMailDropMailDelivery _mailDropZone];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E695BA90]);
    v9 = [v8 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B728]];
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(MFMailDropMailDelivery *)v9 _recordZoneIDInDatabase:v10 completionHandler:v11];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke;
    v14[3] = &unk_1E7AA63D0;
    v17 = handlerCopy;
    v12 = v9;
    v15 = v12;
    v16 = databaseCopy;
    [v16 fetchRecordZoneWithID:v12 completionHandler:v14];
  }

  else
  {
    v13 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:@"Could not get zoneID to create zone."];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke_cold_1();
    }
  }

  if (v5)
  {
    v8 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:*(a1 + 32)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke_84;
    v12[3] = &unk_1E7AA63A8;
    v10 = *(a1 + 40);
    v14 = *(a1 + 48);
    v13 = *(a1 + 32);
    [v10 saveRecordZone:v9 completionHandler:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke_84(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
  }

  else
  {
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke_84_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)_mailDropZone
{
  if (_mailDropZone_onceToken != -1)
  {
    +[MFMailDropMailDelivery _mailDropZone];
  }

  v3 = _mailDropZone__zone;

  return v3;
}

void __39__MFMailDropMailDelivery__mailDropZone__block_invoke()
{
  v15[4] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  v2 = *MEMORY[0x1E697ABE8];
  v15[0] = 0;
  v3 = [MFMessageKeychainManager addPassword:v1 forServiceName:@"kMFMailDropServiceKey" accountName:@"MainAccount" keychainAccessibility:v2 synchronizable:0 error:v15];
  v4 = v15[0];
  v5 = v4;
  if (v3)
  {
    if (v1)
    {
      goto LABEL_12;
    }
  }

  else if ([v4 code] == -25299 && (objc_msgSend(v5, "domain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(*MEMORY[0x1E696A768], "isEqualToString:", v6), v6, v7))
  {
    v14 = v5;
    v8 = [MFMessageKeychainManager passwordForServiceName:@"kMFMailDropServiceKey" accountName:@"MainAccount" synchronizable:0 error:&v14];
    v9 = v14;

    v5 = v9;
    v1 = v8;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [v5 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __39__MFMailDropMailDelivery__mailDropZone__block_invoke_cold_1();
  }

  v1 = 0;
LABEL_12:
  v11 = [v1 copy];
  v12 = _mailDropZone__zone;
  _mailDropZone__zone = v11;

  v13 = *MEMORY[0x1E69E9840];
}

void __45__MFMailDropMailDelivery__processAttachments__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "Mail Drop couldn't create zone. Error: %{public}@", v5);
}

void __45__MFMailDropMailDelivery__processAttachments__block_invoke_49_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "Mail Drop couldn't create archive. Error: %{public}@", v5);
}

- (void)publishRecord:(uint64_t)a3 database:(void *)a4 attachmentRecords:images:allowsCellularAccess:.cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2(a1, a2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1(&dword_1B0389000, v6, v6, "Mail Drop attachment: %@", v7);
}

void __95__MFMailDropMailDelivery_publishRecord_database_attachmentRecords_images_allowsCellularAccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments Mail Drop error publishing asset. %{public}@", v5);
}

void __95__MFMailDropMailDelivery_publishRecord_database_attachmentRecords_images_allowsCellularAccess___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_4_1(&dword_1B0389000, v3, v3, "Mail Drop asset URL: %@", v4);
}

- (void)_uploadAttachmentsViaCloudKit:(uint64_t)a3 zone:records:zippedPhotos:attachmentRecords:images:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_4_1(&dword_1B0389000, a2, a3, "Start uploading records to CloudKit database [%@] ...", &v4);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_uploadAttachmentsViaCloudKit:zone:records:zippedPhotos:attachmentRecords:images:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments Failure encountered during Mail Drop processing [%{public}@]", v5);
}

void __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_70_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments Mail Drop error for record: %{public}@", v5);
}

void __107__MFMailDropMailDelivery__uploadAttachmentsViaCloudKit_zone_records_zippedPhotos_attachmentRecords_images___block_invoke_74_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments Mail Drop error with upload. %{public}@", v5);
}

- (void)_recordZoneIDInDatabase:(uint64_t)a3 completionHandler:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_4_1(&dword_1B0389000, a2, a3, "Start fetching CloudKit record zone for ID [%@] ...", &v4);
  v3 = *MEMORY[0x1E69E9840];
}

void __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments Error encountered while fetching CloudKit record zone [%{public}@]", v5);
}

void __68__MFMailDropMailDelivery__recordZoneIDInDatabase_completionHandler___block_invoke_84_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments Error encountered while saving CloudKit record zone [%{public}@]", v5);
}

void __39__MFMailDropMailDelivery__mailDropZone__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "#Attachments failed to get zone identifier from keychain: %{public}@", v5);
}

@end