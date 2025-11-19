@interface IMDSpotlightQueryProvider
+ (id)sharedProvider;
- (void)_validateSpotlightClientStateWithLastError:(id)a3 attempts:(int64_t)a4 completion:(id)a5;
- (void)fetchLastSpotlightIndexDeleteReasonWithCompletion:(id)a3;
- (void)fetchSpotlightClientStateWithCompletion:(id)a3;
- (void)invalidateSpotlightClientStateVersioningWithCompletion:(id)a3;
- (void)reindexMessagesWithCollaborationMetadata:(id)a3 collaborationMetadata:(id)a4 reason:(int64_t)a5 completionBlock:(id)a6;
- (void)validateSpotlightClientStateWithCompletion:(id)a3;
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

- (void)_validateSpotlightClientStateWithLastError:(id)a3 attempts:(int64_t)a4 completion:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v11 = a5;
  if (a4 < 5)
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

      v11[2](v11, 1, 0);
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
        v20 = a4;
        v18[4] = self;
        v19 = v11;
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

        v11[2](v11, 1, 0);
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

    (v11)[2](v11, 1, v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)validateSpotlightClientStateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7BC7068;
  v6[3] = &unk_1E7CB7260;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  IMDIndexingClientRequest(v6);
}

- (void)fetchSpotlightClientStateWithCompletion:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BC7108;
  v5[3] = &unk_1E7CB67C0;
  v6 = v3;
  v4 = v3;
  IMDIndexingClientRequest(v5);
}

- (void)invalidateSpotlightClientStateVersioningWithCompletion:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7BC71EC;
  v5[3] = &unk_1E7CB67C0;
  v6 = v3;
  v4 = v3;
  IMDIndexingClientRequest(v5);
}

- (void)reindexMessagesWithCollaborationMetadata:(id)a3 collaborationMetadata:(id)a4 reason:(int64_t)a5 completionBlock:(id)a6
{
  v21 = a3;
  v9 = a4;
  v10 = a6;
  v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v13, v14, v15);

  if (isSpotlightRefactorEnabled)
  {
    v19 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v17, v18);
    objc_msgSend_reindexMessagesWithCollaborationMetadata_collaborationMetadata_reason_completionBlock_(v19, v20, v21, v9, a5, v10);
  }

  else
  {
    sub_1B7B9D3C8(v21, v9, a5, v10);
  }
}

- (void)fetchLastSpotlightIndexDeleteReasonWithCompletion:(id)a3
{
  v15 = a3;
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v3, v4);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v5, v6, v7);

  if (isSpotlightRefactorEnabled)
  {
    v11 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v9, v10);
    v14 = objc_msgSend__lastIndexDeleteReason(v11, v12, v13);
    v15[2](v15, v14);
  }

  else
  {
    v15[2](v15, 0);
  }
}

@end