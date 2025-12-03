@interface IMDSpotlightQueryProvider
+ (id)sharedProvider;
- (void)_validateSpotlightClientStateWithLastError:(id)error attempts:(int64_t)attempts completion:(id)completion;
- (void)fetchLastSpotlightIndexDeleteReasonWithCompletion:(id)completion;
- (void)fetchSpotlightClientStateWithCompletion:(id)completion;
- (void)invalidateSpotlightClientStateVersioningWithCompletion:(id)completion;
- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block;
- (void)validateSpotlightClientStateWithCompletion:(id)completion;
@end

@implementation IMDSpotlightQueryProvider

+ (id)sharedProvider
{
  if (qword_1EBA53A58 != -1)
  {
    sub_1B7CFB500();
  }

  v3 = qword_1EBA53A48;

  return v3;
}

- (void)_validateSpotlightClientStateWithLastError:(id)error attempts:(int64_t)attempts completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  completionCopy = completion;
  if (attempts < 5)
  {
    if (objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v9, v10))
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v22 = "[IMDSpotlightQueryProvider _validateSpotlightClientStateWithLastError:attempts:completion:]";
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "%{public}s CS already needs reindexing, not checking client state", buf, 0xCu);
        }
      }

      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v14 = IMCoreSpotlightCriticalIndex();
      if (v14)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = sub_1B7BC6CB0;
        v18[3] = &unk_1E7CBC290;
        attemptsCopy = attempts;
        v18[4] = self;
        v19 = completionCopy;
        objc_msgSend_fetchLastClientStateWithCompletionHandler_(v14, v15, v18);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 136446210;
            v22 = "[IMDSpotlightQueryProvider _validateSpotlightClientStateWithLastError:attempts:completion:]";
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "%{public}s Failed to fetch Spotlight index, bailing", buf, 0xCu);
          }
        }

        completionCopy[2](completionCopy, 1, 0);
      }
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1B7CFB514(v12);
    }

    (completionCopy)[2](completionCopy, 1, errorCopy);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)validateSpotlightClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BC7068;
  v6[3] = &unk_1E7CB7260;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  IMDIndexingClientRequest(v6);
}

- (void)fetchSpotlightClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BC7108;
  v5[3] = &unk_1E7CB67C0;
  v6 = completionCopy;
  v4 = completionCopy;
  IMDIndexingClientRequest(v5);
}

- (void)invalidateSpotlightClientStateVersioningWithCompletion:(id)completion
{
  completionCopy = completion;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BC71EC;
  v5[3] = &unk_1E7CB67C0;
  v6 = completionCopy;
  v4 = completionCopy;
  IMDIndexingClientRequest(v5);
}

- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block
{
  metadataCopy = metadata;
  collaborationMetadataCopy = collaborationMetadata;
  blockCopy = block;
  v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v13, v14, v15);

  if (isSpotlightRefactorEnabled)
  {
    v19 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v17, v18);
    objc_msgSend_reindexMessagesWithCollaborationMetadata_collaborationMetadata_reason_completionBlock_(v19, v20, metadataCopy, collaborationMetadataCopy, reason, blockCopy);
  }

  else
  {
    sub_1B7B9D3C8(metadataCopy, collaborationMetadataCopy, reason, blockCopy);
  }
}

- (void)fetchLastSpotlightIndexDeleteReasonWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v5, v6, v7);

  if (isSpotlightRefactorEnabled)
  {
    v11 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v9, v10);
    v14 = objc_msgSend__lastIndexDeleteReason(v11, v12, v13);
    completionCopy[2](completionCopy, v14);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

@end