@interface MFSearchableIndexItem_iOS
+ (OS_os_log)log;
+ (id)_bodyDataForMessage:(id)a3;
+ (id)searchableIndexItemsFromMessages:(id)a3 type:(int64_t)a4;
+ (id)searchableMessageAttachmentsForBaseMessage:(id)a3 includeEncryptedBody:(BOOL)a4;
+ (id)suggestionsSearchableItemWithMessage:(id)a3;
- (BOOL)_shouldAutoDownloadAttachment:(id)a3;
- (BOOL)shouldExcludeFromIndex;
- (id)fetchIndexableAttachments;
- (void)setNeedsAllAttributesIncludingDataDetectionResultsIndexingType;
- (void)setNeedsAllAttributesIndexingType;
@end

@implementation MFSearchableIndexItem_iOS

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MFSearchableIndexItem_iOS_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_31 != -1)
  {
    dispatch_once(&log_onceToken_31, block);
  }

  v2 = log_log_31;

  return v2;
}

+ (id)suggestionsSearchableItemWithMessage:(id)a3
{
  v4 = a3;
  v5 = [a1 _bodyDataForMessage:v4];
  v6 = [a1 suggestionsSearchableItemWithMessage:v4 bodyData:v5 fetchBody:1 isEncrypted:0 includeEncryptedBody:0];

  return v6;
}

+ (id)searchableIndexItemsFromMessages:(id)a3 type:(int64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MFSearchableIndexItem_iOS_searchableIndexItemsFromMessages_type___block_invoke;
  v6[3] = &__block_descriptor_48_e53___EDSearchableIndexItem_16__0___EDPersistedMessage__8l;
  v6[4] = a1;
  v6[5] = a4;
  v4 = [a3 ef_map:v6];

  return v4;
}

+ (id)searchableMessageAttachmentsForBaseMessage:(id)a3 includeEncryptedBody:(BOOL)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = +[MFAttachmentManager defaultManager];
  v30 = [v29 attachmentsForMessage:v28 withSchemes:0 updatingFlags:0];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v30;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 mimeType];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = &stru_1F273A5E0;
        }

        [v4 addObject:v14];

        v15 = [v11 fileUTType];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = &stru_1F273A5E0;
        }

        [v5 addObject:v17];

        v18 = [v11 fileName];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_1F273A5E0;
        }

        [v6 addObject:v20];

        if (![v11 isDataAvailableLocally] || (objc_msgSend(v11, "path"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v22))
        {
          [v7 addObject:&stru_1F273A5E0];
        }

        else
        {
          v23 = [v11 path];
          [v7 addObject:v23];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }

  v24 = objc_alloc(MEMORY[0x1E699B6B8]);
  v25 = [v24 initWithNames:v6 paths:v7 UTIs:v5 specificUTIs:MEMORY[0x1E695E0F0] mimeTypes:v4 kinds:MEMORY[0x1E695E0F0]];

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)_bodyDataForMessage:(id)a3
{
  v5 = 0;
  v3 = [a3 bestAlternativePartAsData:&v5 usingEncoding:4];

  return v3;
}

- (BOOL)shouldExcludeFromIndex
{
  v10.receiver = self;
  v10.super_class = MFSearchableIndexItem_iOS;
  if ([(EDSearchableIndexItem *)&v10 shouldExcludeFromIndex])
  {
    return 1;
  }

  v4 = [(EDSearchableIndexItem *)self baseMessage];
  v5 = [v4 mailbox];
  if (v5)
  {
    v6 = [v4 mailbox];
    v7 = [v6 representedAccount];
    v8 = +[LocalAccount localAccount];
    v3 = [v7 isEqual:v8];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setNeedsAllAttributesIndexingType
{
  v2.receiver = self;
  v2.super_class = MFSearchableIndexItem_iOS;
  [(EDSearchableIndexItem *)&v2 setNeedsAllAttributesIndexingType];
}

- (void)setNeedsAllAttributesIncludingDataDetectionResultsIndexingType
{
  v2.receiver = self;
  v2.super_class = MFSearchableIndexItem_iOS;
  [(EDSearchableIndexItem *)&v2 setNeedsAllAttributesIncludingDataDetectionResultsIndexingType];
}

- (BOOL)_shouldAutoDownloadAttachment:(id)a3
{
  v3 = a3;
  v4 = [v3 mimeType];
  if ([v4 isEqualToString:@"text/calendar"] && objc_msgSend(v3, "encodedFileSize") >> 5 <= 0xC34)
  {
    v5 = [v3 contentID];
    v6 = [v5 isEqualToString:@"191AF69B-0088-47D2-AD66-6C9D08949C46"] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)fetchIndexableAttachments
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(MFSearchableIndexItem_iOS *)self shouldExcludeFromIndex];
  v4 = [(EDSearchableIndexItem *)self indexingType]!= 0;
  v28 = [(EDSearchableIndexItem *)self baseMessage];
  if (v4 || v3)
  {
    goto LABEL_3;
  }

  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v6 = [v28 dateSent];
  [v6 timeIntervalSince1970];
  v8 = v7;
  [v5 timeIntervalSince1970];
  v10 = v9;

  if (v8 < v10)
  {
LABEL_3:
    v11 = [MEMORY[0x1E699B7C8] nullFuture];
  }

  else
  {
    v27 = +[MFAttachmentManager defaultManager];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = objc_opt_new();
    v12 = [v27 attachmentsForMessage:v28 withSchemes:0 updatingFlags:0];
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          if (([v16 isDataAvailableLocally] & 1) == 0 && -[MFSearchableIndexItem_iOS _shouldAutoDownloadAttachment:](self, "_shouldAutoDownloadAttachment:", v16))
          {
            v17 = +[MFSearchableIndexItem_iOS log];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v23 = [v16 url];
              v24 = [v23 absoluteString];
              *buf = 138412290;
              v37 = v24;
              _os_log_debug_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEBUG, "fetching attachment %@", buf, 0xCu);
            }

            v18 = [MEMORY[0x1E699B868] promise];
            v30[0] = MEMORY[0x1E69E9820];
            v30[1] = 3221225472;
            v30[2] = __54__MFSearchableIndexItem_iOS_fetchIndexableAttachments__block_invoke;
            v30[3] = &unk_1E7AA7798;
            v19 = v18;
            v31 = v19;
            [v16 setFetchCompletionBlock:v30];
            [v16 setWantsCompletionBlockOffMainThread:1];
            v20 = [v16 fetchData];
            v21 = [v19 future];
            v22 = [v21 recover:&__block_literal_global_56];

            [v29 addObject:v22];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v13);
    }

    v11 = [MEMORY[0x1E699B7C8] join:v29];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v11;
}

@end