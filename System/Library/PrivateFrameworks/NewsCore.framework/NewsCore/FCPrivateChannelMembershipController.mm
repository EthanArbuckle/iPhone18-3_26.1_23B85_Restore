@interface FCPrivateChannelMembershipController
+ (id)backingRecordZoneIDs;
+ (id)desiredKeys;
- (BOOL)hasMemberships;
- (BOOL)isAllowedToSeeDraftsForChannelID:(id)d;
- (BOOL)isMemberOfChannelID:(id)d;
- (FCPrivateChannelMembershipController)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)feedDescriptorForDraftFeedForChannel:(id)channel;
- (id)membershipChannelIDs;
- (uint64_t)shouldShowAllDraftContent;
- (void)_fetchPrivateChannelMembershipsWithCompletion:(void *)completion;
- (void)_logCurrentMemberships;
- (void)_refreshPublicMembershipsWithCompletion:(void *)completion;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)addItem:(int)item toStore:;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)isAllowedToSeeArticleID:(id)d completionBlock:(id)block;
- (void)isAllowedToSeeIssueID:(id)d completionBlock:(id)block;
- (void)loadLocalCachesFromStore;
- (void)referenceToMembershipForMembershipID:(void *)d;
- (void)removeItemWithItemID:(void *)d;
- (void)removeObserver:(id)observer;
- (void)setMembershipsByChannelID:(uint64_t)d;
@end

@implementation FCPrivateChannelMembershipController

- (void)_logCurrentMemberships
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v2 = *(self + 96);
    v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_75_0];

    v4 = *(self + 88);
    allKeys = [v4 allKeys];

    v6 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v9 = 134218498;
      v10 = [v3 count];
      v11 = 2114;
      v12 = v3;
      v13 = 2114;
      v14 = allKeys;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "user has %lu memberships, ids=%{public}@, channels=%{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)loadLocalCachesFromStore
{
  v67 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  localStore = [(FCPrivateDataController *)self localStore];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  allKeys = [localStore allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v53 objects:v66 count:16];
  v43 = array;
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v53 + 1) + 8 * v9);
        if (([objc_opt_class() isLocalStoreKeyInternal:v10] & 1) == 0)
        {
          objc_opt_class();
          v11 = [localStore objectForKeyedSubscript:v10];
          if (v11)
          {
            if (objc_opt_isKindOfClass())
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          v13 = v12;

          if (v13)
          {
            v14 = [[FCReferenceToMembership alloc] initWithIdentifier:v10 dictionaryRepresentation:v13];
            if (v14)
            {
              [(FCPrivateChannelMembershipController *)self addItem:v14 toStore:0];
              membershipID = [(FCReferenceToMembership *)v14 membershipID];

              if (!membershipID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "reference.membershipID"];
                *buf = 136315906;
                v59 = "[FCPrivateChannelMembershipController loadLocalCachesFromStore]";
                v60 = 2080;
                v61 = "FCPrivateChannelMembershipController.m";
                v62 = 1024;
                v63 = 355;
                v64 = 2114;
                v65 = v22;
                _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }

              membershipID2 = [(FCReferenceToMembership *)v14 membershipID];

              if (membershipID2)
              {
                membershipID3 = [(FCReferenceToMembership *)v14 membershipID];
                [array addObject:membershipID3];
                goto LABEL_19;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              membershipID3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "reference"];
              *buf = 136315906;
              v59 = "[FCPrivateChannelMembershipController loadLocalCachesFromStore]";
              v60 = 2080;
              v61 = "FCPrivateChannelMembershipController.m";
              v62 = 1024;
              v63 = 350;
              v64 = 2114;
              v65 = membershipID3;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
            }
          }

          else
          {
            v18 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v19 = v18;
              v20 = objc_opt_class();
              v21 = NSStringFromClass(v20);
              *buf = 138543618;
              v59 = v21;
              v60 = 2114;
              v61 = v10;
              _os_log_error_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_ERROR, "ERROR: Object of type %{public}@ is not dictionary for key %{public}@", buf, 0x16u);

              array = v43;
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v23 = [allKeys countByEnumeratingWithState:&v53 objects:v66 count:16];
      v7 = v23;
    }

    while (v23);
  }

  context = [(FCPrivateDataController *)self context];
  [context internalContentContext];
  v26 = v25 = array;
  channelMembershipController = [v26 channelMembershipController];

  v28 = [channelMembershipController cachedChannelMembershipsForIDs:v25];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v30 = v28;
  v31 = [v30 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [v30 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * i)];
        channelID = [v35 channelID];
        [dictionary setObject:v35 forKey:channelID];
      }

      v32 = [v30 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v32);
  }

  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __64__FCPrivateChannelMembershipController_loadLocalCachesFromStore__block_invoke;
  v47[3] = &unk_1E7C36C58;
  v47[4] = self;
  v38 = dictionary;
  v48 = v38;
  [(FCMTWriterLock *)membershipsLock performWriteSync:v47];
  [(FCPrivateChannelMembershipController *)self _logCurrentMemberships];
  date = [MEMORY[0x1E695DF00] date];
  v40 = FCChannelMembershipLog;
  if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "will wait in low-priority queue for refresh", buf, 2u);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __64__FCPrivateChannelMembershipController_loadLocalCachesFromStore__block_invoke_53;
  v44[3] = &unk_1E7C36C58;
  v45 = date;
  selfCopy = self;
  v41 = date;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v44];

  v42 = *MEMORY[0x1E69E9840];
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  if (self)
  {
    [(FCPrivateChannelMembershipController *)self _refreshPublicMembershipsWithCompletion:?];
  }
}

- (FCPrivateChannelMembershipController)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = FCPrivateChannelMembershipController;
  v9 = [(FCPrivateDataController *)&v14 initWithContext:contextCopy pushNotificationCenter:center storeDirectory:directory];
  if (v9)
  {
    v10 = objc_alloc_init(FCMTWriterLock);
    membershipsLock = v9->_membershipsLock;
    v9->_membershipsLock = v10;

    appActivityMonitor = [contextCopy appActivityMonitor];
    [appActivityMonitor addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FCPrivateChannelMembershipController;
  [(FCPrivateDataController *)&v4 dealloc];
}

- (BOOL)isMemberOfChannelID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (([(FCPrivateChannelMembershipController *)self shouldShowAllDraftContent]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      if (self)
      {
        membershipsLock = self->_membershipsLock;
      }

      else
      {
        membershipsLock = 0;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__FCPrivateChannelMembershipController_isMemberOfChannelID___block_invoke_2;
      v9[3] = &unk_1E7C36F68;
      v9[4] = self;
      v10 = dCopy;
      v7 = membershipsLock;
      v5 = [(FCMTWriterLock *)v7 readBool:v9];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)shouldShowAllDraftContent
{
  if (!self || !NFInternalBuild())
  {
    return 0;
  }

  v1 = NewsCoreUserDefaults();
  v2 = [v1 BOOLForKey:@"news.draft_content.show_drafts"];

  return v2;
}

BOOL __60__FCPrivateChannelMembershipController_isMemberOfChannelID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  v2 = [v1 objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isAllowedToSeeDraftsForChannelID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    if (([(FCPrivateChannelMembershipController *)self shouldShowAllDraftContent]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      if (self)
      {
        membershipsLock = self->_membershipsLock;
      }

      else
      {
        membershipsLock = 0;
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__FCPrivateChannelMembershipController_isAllowedToSeeDraftsForChannelID___block_invoke_2;
      v9[3] = &unk_1E7C36F68;
      v9[4] = self;
      v10 = dCopy;
      v7 = membershipsLock;
      v5 = [(FCMTWriterLock *)v7 readBool:v9];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __73__FCPrivateChannelMembershipController_isAllowedToSeeDraftsForChannelID___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  v2 = [v1 objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isAllowedToSeeDrafts];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)feedDescriptorForDraftFeedForChannel:(id)channel
{
  channelCopy = channel;
  identifier = [channelCopy identifier];
  if ([(FCPrivateChannelMembershipController *)self isAllowedToSeeDraftsForChannelID:identifier])
  {
    if (self)
    {
      membershipsLock = self->_membershipsLock;
    }

    else
    {
      membershipsLock = 0;
    }

    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __77__FCPrivateChannelMembershipController_feedDescriptorForDraftFeedForChannel___block_invoke;
    v22 = &unk_1E7C397D0;
    selfCopy = self;
    v7 = identifier;
    v24 = v7;
    v8 = [(FCMTWriterLock *)membershipsLock readObject:&v19];
    if ([(FCPrivateChannelMembershipController *)self shouldShowAllDraftContent]&& !v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69B6DE8]);
      [v9 setChannelID:{v7, v19, v20, v21, v22, selfCopy}];
      v10 = [v7 substringFromIndex:1];
      v11 = [@"LDT" stringByAppendingString:v10];
      [v9 setDraftArticleListID:v11];

      v12 = [v7 substringFromIndex:1];
      v13 = [@"MD" stringByAppendingString:v12];
      [v9 setDraftIssueListID:v13];

      v8 = [[FCChannelMembership alloc] initWithRecord:v9 interestToken:0];
    }

    v14 = [FCDraftFeedDescriptor alloc];
    draftArticleListID = [(FCChannelMembership *)v8 draftArticleListID];
    draftIssueListID = [(FCChannelMembership *)v8 draftIssueListID];
    v17 = [(FCDraftFeedDescriptor *)v14 initWithChannel:channelCopy articleListID:draftArticleListID issueListID:draftIssueListID];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __77__FCPrivateChannelMembershipController_feedDescriptorForDraftFeedForChannel___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 objectForKeyedSubscript:*(a1 + 40)];
}

- (void)isAllowedToSeeArticleID:(id)d completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID != nil"];
    *buf = 136315906;
    v17 = "[FCPrivateChannelMembershipController isAllowedToSeeArticleID:completionBlock:]";
    v18 = 2080;
    v19 = "FCPrivateChannelMembershipController.m";
    v20 = 1024;
    v21 = 172;
    v22 = 2114;
    v23 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v17 = "[FCPrivateChannelMembershipController isAllowedToSeeArticleID:completionBlock:]";
    v18 = 2080;
    v19 = "FCPrivateChannelMembershipController.m";
    v20 = 1024;
    v21 = 173;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke;
  v13[3] = &unk_1E7C39B60;
  v14 = dCopy;
  v15 = blockCopy;
  v13[4] = self;
  v8 = dCopy;
  v9 = blockCopy;
  [(FCPrivateChannelMembershipController *)self _fetchPrivateChannelMembershipsWithCompletion:v13];

  v10 = *MEMORY[0x1E69E9840];
}

void __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[6];
    v5 = *(a1[6] + 2);

    v5();
  }

  else
  {
    v6 = a1[4];
    if (v6)
    {
      v7 = v6[13];
    }

    else
    {
      v7 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_2;
    v16[3] = &unk_1E7C36F98;
    v16[4] = v6;
    v8 = [v7 readObject:v16];
    v9 = objc_opt_new();
    v10 = [a1[4] context];
    [v9 setContext:v10];

    [v9 setChannelMemberships:v8];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
    [v9 setArticleIDs:v11];

    [v9 setQualityOfService:17];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_3;
    v13[3] = &unk_1E7C37C88;
    v14 = a1[5];
    v15 = a1[6];
    [v9 setCheckAccessCompletion:v13];
    v12 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v12 addOperation:v9];
  }
}

uint64_t __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return [v2 allValues];
}

uint64_t __80__FCPrivateChannelMembershipController_isAllowedToSeeArticleID_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    [v4 BOOLValue];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (void)_fetchPrivateChannelMembershipsWithCompletion:(void *)completion
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (completion)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
      *buf = 136315906;
      v10 = "[FCPrivateChannelMembershipController _fetchPrivateChannelMembershipsWithCompletion:]";
      v11 = 2080;
      v12 = "FCPrivateChannelMembershipController.m";
      v13 = 1024;
      v14 = 710;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __86__FCPrivateChannelMembershipController__fetchPrivateChannelMembershipsWithCompletion___block_invoke;
    v7[3] = &unk_1E7C39C20;
    v7[4] = completion;
    v8 = v4;
    [completion syncWithCompletion:v7];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)isAllowedToSeeIssueID:(id)d completionBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  blockCopy = block;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "issueID != nil"];
    *buf = 136315906;
    v17 = "[FCPrivateChannelMembershipController isAllowedToSeeIssueID:completionBlock:]";
    v18 = 2080;
    v19 = "FCPrivateChannelMembershipController.m";
    v20 = 1024;
    v21 = 210;
    v22 = 2114;
    v23 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
    *buf = 136315906;
    v17 = "[FCPrivateChannelMembershipController isAllowedToSeeIssueID:completionBlock:]";
    v18 = 2080;
    v19 = "FCPrivateChannelMembershipController.m";
    v20 = 1024;
    v21 = 211;
    v22 = 2114;
    v23 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke;
  v13[3] = &unk_1E7C39B60;
  v14 = dCopy;
  v15 = blockCopy;
  v13[4] = self;
  v8 = dCopy;
  v9 = blockCopy;
  [(FCPrivateChannelMembershipController *)self _fetchPrivateChannelMembershipsWithCompletion:v13];

  v10 = *MEMORY[0x1E69E9840];
}

void __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1[6];
    v5 = *(a1[6] + 2);

    v5();
  }

  else
  {
    v6 = a1[4];
    if (v6)
    {
      v7 = v6[13];
    }

    else
    {
      v7 = 0;
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_2;
    v16[3] = &unk_1E7C36F98;
    v16[4] = v6;
    v8 = [v7 readObject:v16];
    v9 = objc_opt_new();
    v10 = [a1[4] context];
    [v9 setContext:v10];

    [v9 setChannelMemberships:v8];
    v11 = [MEMORY[0x1E695DFD8] setWithObject:a1[5]];
    [v9 setIssueIDs:v11];

    [v9 setQualityOfService:17];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_3;
    v13[3] = &unk_1E7C37C88;
    v14 = a1[5];
    v15 = a1[6];
    [v9 setCheckAccessCompletion:v13];
    v12 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v12 addOperation:v9];
  }
}

uint64_t __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  return [v2 allValues];
}

uint64_t __78__FCPrivateChannelMembershipController_isAllowedToSeeIssueID_completionBlock___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 objectForKeyedSubscript:*(a1 + 32)];
    [v4 BOOLValue];
  }

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (BOOL)hasMemberships
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__FCPrivateChannelMembershipController_hasMemberships__block_invoke;
  v7[3] = &unk_1E7C36F40;
  v7[4] = self;
  v4 = membershipsLock;
  v5 = [(FCMTWriterLock *)v4 readBool:v7];

  return v5;
}

BOOL __54__FCPrivateChannelMembershipController_hasMemberships__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 count] != 0;
}

- (id)membershipChannelIDs
{
  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke;
  v6[3] = &unk_1E7C36F98;
  v6[4] = self;
  v3 = membershipsLock;
  v4 = [(FCMTWriterLock *)v3 readObject:v6];

  return v4;
}

id __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 88);
  }

  else
  {
    v4 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke_2;
  v7[3] = &unk_1E7C39B88;
  v5 = v2;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __60__FCPrivateChannelMembershipController_membershipChannelIDs__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isAllowedToSeeDrafts])
  {
    [*(a1 + 32) addObject:v5];
  }
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"ChannelMemberships" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)addItem:(int)item toStore:
{
  v5 = a2;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (v5)
    {
      v6 = self[13];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __56__FCPrivateChannelMembershipController_addItem_toStore___block_invoke;
      v14 = &unk_1E7C36C58;
      selfCopy = self;
      v7 = v5;
      v16 = v7;
      [v6 performWriteSync:&v11];
      if (item)
      {
        dictionaryRepresentation = [v7 dictionaryRepresentation];
        localStore = [self localStore];
        identifier = [v7 identifier];
        [localStore setObject:dictionaryRepresentation forKeyedSubscript:identifier];
      }
    }
  }
}

- (void)setMembershipsByChannelID:(uint64_t)d
{
  if (d)
  {
    objc_storeStrong((d + 88), a2);
  }
}

uint64_t __64__FCPrivateChannelMembershipController_loadLocalCachesFromStore__block_invoke_53(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCChannelMembershipLog;
  if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v8 = 134217984;
    v9 = [v3 fc_millisecondTimeIntervalUntilNow];
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "did wait in low-priority queue for refresh, time=%llums", &v8, 0xCu);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [(FCPrivateChannelMembershipController *)v5 _refreshPublicMembershipsWithCompletion:?];
    v5 = *(a1 + 40);
  }

  result = [v5 forceSyncWithCompletion:0];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)desiredKeys
{
  if (qword_1EDB26910 != -1)
  {
    dispatch_once(&qword_1EDB26910, &__block_literal_global_58_1);
  }

  v3 = _MergedGlobals_9;

  return v3;
}

uint64_t __51__FCPrivateChannelMembershipController_desiredKeys__block_invoke_2()
{
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"membershipID", 0}];
  v1 = _MergedGlobals_9;
  _MergedGlobals_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __56__FCPrivateChannelMembershipController_addItem_toStore___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 96))
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeStrong((v4 + 96), v3);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_6:
    v5 = *(v2 + 96);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);

  return [v5 addObject:v6];
}

- (void)removeItemWithItemID:(void *)d
{
  v3 = a2;
  if (d)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v4 = d[13];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __61__FCPrivateChannelMembershipController_removeItemWithItemID___block_invoke;
    v10 = &unk_1E7C36C58;
    dCopy = d;
    v5 = v3;
    v12 = v5;
    [v4 performWriteSync:&v7];
    localStore = [d localStore];
    [localStore removeObjectForKey:v5];
  }
}

void __61__FCPrivateChannelMembershipController_removeItemWithItemID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_5:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      v9 = [v8 identifier];
      v10 = [v9 isEqualToString:*(a1 + 40)];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 96);
    }

    else
    {
      v13 = 0;
    }

    [v13 removeObject:v11];
  }

  else
  {
LABEL_11:
    v11 = v3;
  }

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
}

void __86__FCPrivateChannelMembershipController_fetchMembershipsWithIDs_queue_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v7 = a3;
  v28 = a4;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      v11 = 0;
      do
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(FCPrivateChannelMembershipController *)*(a1 + 32) referenceToMembershipForMembershipID:?];
        if (v12)
        {
          v13 = [FCRemoveReferenceToChannelMembershipCommand alloc];
          v14 = [v12 identifier];
          v15 = [(FCRemoveReferenceToChannelMembershipCommand *)v13 initWithReferenceToChannelMembershipID:v14];

          [*(a1 + 32) addCommandToCommandQueue:v15];
          v16 = *(a1 + 32);
          v17 = [v12 identifier];
          [(FCPrivateChannelMembershipController *)v16 removeItemWithItemID:v17];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = v27;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v19 objectForKeyedSubscript:{*(*(&v29 + 1) + 8 * v23), v27}];
        v25 = [v24 channelID];
        [v18 setObject:v24 forKey:v25];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  (*(*(a1 + 40) + 16))();
  v26 = *MEMORY[0x1E69E9840];
}

- (void)referenceToMembershipForMembershipID:(void *)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    v5 = d[13];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke;
    v8[3] = &unk_1E7C397D0;
    v8[4] = d;
    v9 = v3;
    v6 = v5;
    d = [v6 readObject:v8];
  }

  return d;
}

- (void)_refreshPublicMembershipsWithCompletion:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (completion)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = completion[13];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke;
    v23[3] = &unk_1E7C36C58;
    v23[4] = completion;
    v6 = array;
    v24 = v6;
    [v5 performReadSync:v23];
    v7 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "will refresh memberships, ids=%{public}@", &buf, 0xCu);
    }

    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_61;
    v20 = &unk_1E7C37C88;
    completionCopy = completion;
    v22 = v3;
    v8 = &v17;
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    v11 = v6;
    context = [completion context];
    internalContentContext = [context internalContentContext];
    channelMembershipController = [internalContentContext channelMembershipController];

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v26 = __86__FCPrivateChannelMembershipController_fetchMembershipsWithIDs_queue_completionBlock___block_invoke;
    v27 = &unk_1E7C39BB0;
    completionCopy2 = completion;
    v15 = v8;
    v29 = v15;
    [channelMembershipController fetchChannelMembershipsForIDs:v11 maximumCachedAge:v9 callbackQueue:&buf completionHandler:1.0];
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(a1 + 40);
        v9 = [*(*(&v11 + 1) + 8 * v7) membershipID];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_61(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v45 = a1;
  if (v6)
  {
    v7 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v74 = v6;
      _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "failed to refresh memberships, error=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__12;
    v57 = __Block_byref_object_dispose__12;
    v58 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[13];
    }

    v9 = v8;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_62;
    v50[3] = &unk_1E7C37138;
    v10 = *(v45 + 32);
    v52 = &v53;
    v50[4] = v10;
    v11 = v5;
    v51 = v11;
    [v9 performWriteSync:v50];

    v12 = FCChannelMembershipLog;
    if (os_log_type_enabled(FCChannelMembershipLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "did refresh memberships", buf, 2u);
    }

    [(FCPrivateChannelMembershipController *)*(v45 + 32) _logCurrentMemberships];
    v13 = *(v45 + 32);
    v49 = v54[5];
    v44 = v11;
    v47 = v13;
    if (v13)
    {
      [MEMORY[0x1E696AF00] isMainThread];
      v14 = [MEMORY[0x1E695DFA8] set];
      v46 = [MEMORY[0x1E695DFA8] set];
      v48 = [MEMORY[0x1E695DFA8] set];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v15 = v44;
      v16 = [v15 countByEnumeratingWithState:&v67 objects:buf count:16];
      if (v16)
      {
        v17 = *v68;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v68 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v67 + 1) + 8 * i);
            v20 = [v49 objectForKeyedSubscript:v19];
            v21 = [v15 objectForKeyedSubscript:v19];
            v22 = v14;
            if (!v20 || (v23 = [v20 isEqual:v21], v22 = v48, (v23 & 1) == 0))
            {
              [v22 addObject:v21];
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v67 objects:buf count:16];
        }

        while (v16);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v24 = v49;
      v25 = [v24 countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v25)
      {
        v26 = *v64;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v64 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v63 + 1) + 8 * j);
            v29 = [v15 objectForKeyedSubscript:v28];
            v30 = [v24 objectForKeyedSubscript:v28];
            v31 = v30;
            if (v29)
            {
              if (([v30 isEqual:v29] & 1) == 0)
              {
                [v48 addObject:v29];
              }
            }

            else
            {
              [v46 addObject:v30];
            }
          }

          v25 = [v24 countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v25);
      }

      v32 = [v14 copy];
      v33 = [v48 copy];
      v34 = [v46 copy];
      if ([v34 count] || objc_msgSend(v33, "count") || objc_msgSend(v32, "count"))
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v35 = [v47 observers];
        v36 = [v35 countByEnumeratingWithState:&v59 objects:v71 count:16];
        v43 = v5;
        if (v36)
        {
          v37 = *v60;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v60 != v37)
              {
                objc_enumerationMutation(v35);
              }

              v39 = *(*(&v59 + 1) + 8 * k);
              if (objc_opt_respondsToSelector())
              {
                [v39 privateChannelMembershipController:v47 didAddMemberships:v32 changedMemberships:v33 removedMemberships:v34];
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v59 objects:v71 count:16];
          }

          while (v36);
        }

        v6 = 0;
        v5 = v43;
      }
    }

    _Block_object_dispose(&v53, 8);
  }

  v40 = *(v45 + 40);
  if (v40)
  {
    v41 = [v5 allValues];
    (*(v40 + 16))(v40, v41, v6);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __80__FCPrivateChannelMembershipController__refreshPublicMembershipsWithCompletion___block_invoke_62(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(a1[6] + 8) + 40), v3);
  v4 = a1[4];
  v5 = a1[5];

  [(FCPrivateChannelMembershipController *)v4 setMembershipsByChannelID:v5];
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v35 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [recordsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v11 = [[FCReferenceToMembership alloc] initWithRecord:*(*(&v29 + 1) + 8 * v10)];
        membershipID = [(FCReferenceToMembership *)v11 membershipID];

        if (membershipID)
        {
          membershipID2 = [(FCReferenceToMembership *)v11 membershipID];
          v14 = [(FCPrivateChannelMembershipController *)self referenceToMembershipForMembershipID:membershipID2];

          if (v14)
          {
            identifier = [(FCRemoveReferenceToChannelMembershipCommand *)v14 identifier];
            [(FCPrivateChannelMembershipController *)self removeItemWithItemID:identifier];
          }

          [(FCPrivateChannelMembershipController *)self addItem:v11 toStore:1];
        }

        else
        {
          v16 = [FCRemoveReferenceToChannelMembershipCommand alloc];
          identifier2 = [(FCReferenceToMembership *)v11 identifier];
          v14 = [(FCRemoveReferenceToChannelMembershipCommand *)v16 initWithReferenceToChannelMembershipID:identifier2];

          [(FCPrivateDataController *)self addCommandToCommandQueue:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [recordsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = namesCopy;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(FCPrivateChannelMembershipController *)self removeItemWithItemID:?];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  if (self)
  {
    [(FCPrivateChannelMembershipController *)self _refreshPublicMembershipsWithCompletion:?];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    membershipsLock = self->_membershipsLock;
  }

  else
  {
    membershipsLock = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__FCPrivateChannelMembershipController_allKnownRecordNamesWithinRecordZoneWithID___block_invoke;
  v8[3] = &unk_1E7C36F98;
  v8[4] = self;
  v5 = membershipsLock;
  v6 = [(FCMTWriterLock *)v5 readObject:v8];

  return v6;
}

uint64_t __82__FCPrivateChannelMembershipController_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_65];
}

id __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke_2;
  v6[3] = &unk_1E7C39BF8;
  v7 = *(a1 + 40);
  v3 = v2;
  v4 = [v3 fc_firstObjectPassingTest:v6];

  return v4;
}

uint64_t __77__FCPrivateChannelMembershipController_referenceToMembershipForMembershipID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 membershipID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)addObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCPrivateDataController *)self observers];
    v6 = [observers containsObject:observerCopy];

    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already a state observer", observerCopy];
      *buf = 136315906;
      v11 = "[FCPrivateChannelMembershipController addObserver:]";
      v12 = 2080;
      v13 = "FCPrivateChannelMembershipController.m";
      v14 = 1024;
      v15 = 613;
      v16 = 2114;
      v17 = observerCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    observers2 = [(FCPrivateDataController *)self observers];
    [observers2 addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    observers2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v11 = "[FCPrivateChannelMembershipController addObserver:]";
    v12 = 2080;
    v13 = "FCPrivateChannelMembershipController.m";
    v14 = 1024;
    v15 = 609;
    v16 = 2114;
    v17 = observers2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCPrivateDataController *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v8 = "[FCPrivateChannelMembershipController removeObserver:]";
    v9 = 2080;
    v10 = "FCPrivateChannelMembershipController.m";
    v11 = 1024;
    v12 = 622;
    v13 = 2114;
    v14 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

void __86__FCPrivateChannelMembershipController__fetchPrivateChannelMembershipsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [(FCPrivateChannelMembershipController *)*(a1 + 32) _refreshPublicMembershipsWithCompletion:?];
  }
}

@end