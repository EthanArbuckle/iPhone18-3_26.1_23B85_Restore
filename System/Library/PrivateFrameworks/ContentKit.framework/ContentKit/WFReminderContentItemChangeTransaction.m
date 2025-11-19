@interface WFReminderContentItemChangeTransaction
+ (void)addImageFiles:(id)a3 toAttachmentContext:(id)a4;
- (WFReminderContentItemChangeTransaction)initWithContentItem:(id)a3;
- (void)addImageFiles:(id)a3;
- (void)addSubtasks:(id)a3;
- (void)addTags:(id)a3;
- (void)removeAllImageAttachments;
- (void)removeAllSubtasks;
- (void)removeSubtasks:(id)a3;
- (void)saveWithCompletionHandler:(id)a3 isNew:(BOOL)a4;
- (void)updateImageFiles:(id)a3;
- (void)updateList:(id)a3;
- (void)updateSubtasks:(id)a3;
- (void)updateTags:(id)a3;
@end

@implementation WFReminderContentItemChangeTransaction

- (void)addTags:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
        v11 = [v10 hashtagContext];
        v12 = [v11 addHashtagWithType:0 name:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)updateTags:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFContentItemChangeTransaction *)self mode];
  v6 = [v5 isEqualToString:@"Append"];

  if (v6)
  {
LABEL_2:
    [(WFReminderContentItemChangeTransaction *)self addTags:v4];
    goto LABEL_15;
  }

  v7 = [(WFContentItemChangeTransaction *)self mode];
  v8 = [v7 isEqualToString:@"Remove"];

  if (!v8)
  {
    v21 = [(WFContentItemChangeTransaction *)self mode];
    v22 = [v21 isEqualToString:@"RemoveAll"];

    v23 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
    v24 = [v23 hashtagContext];
    [v24 removeAllHashtags];

    if (v22)
    {
      goto LABEL_15;
    }

    goto LABEL_2;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  v10 = [v9 hashtagContext];
  v11 = [v10 hashtags];

  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 name];
        v18 = [v4 containsObject:v17];

        if (v18)
        {
          v19 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
          v20 = [v19 hashtagContext];
          [v20 removeHashtag:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

LABEL_15:
}

- (void)removeAllImageAttachments
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  v3 = [v2 attachmentContext];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 imageAttachments];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 removeAttachment:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addImageFiles:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v7 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  v6 = [v7 attachmentContext];
  [v5 addImageFiles:v4 toAttachmentContext:v6];
}

- (void)updateImageFiles:(id)a3
{
  v8 = a3;
  v4 = [(WFContentItemChangeTransaction *)self mode];
  v5 = [v4 isEqualToString:@"Append"];

  if ((v5 & 1) != 0 || (-[WFContentItemChangeTransaction mode](self, "mode"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:@"RemoveAll"], v6, -[WFReminderContentItemChangeTransaction removeAllImageAttachments](self, "removeAllImageAttachments"), (v7 & 1) == 0))
  {
    [(WFReminderContentItemChangeTransaction *)self addImageFiles:v8];
  }
}

- (void)saveWithCompletionHandler:(id)a3 isNew:(BOOL)a4
{
  v5 = a3;
  v6 = [(WFReminderContentItemChangeTransaction *)self saveRequest];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__WFReminderContentItemChangeTransaction_saveWithCompletionHandler_isNew___block_invoke;
  v9[3] = &unk_278346BB0;
  v9[4] = self;
  v10 = v5;
  v8 = v5;
  [v6 saveWithQueue:v7 completion:v9];
}

void __74__WFReminderContentItemChangeTransaction_saveWithCompletionHandler_isNew___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [*(a1 + 32) store];
    v6 = [*(a1 + 32) mutableReminder];
    v7 = [v6 objectID];
    v11 = 0;
    v8 = [v5 fetchReminderWithObjectID:v7 error:&v11];
    v4 = v11;

    v9 = *(a1 + 40);
    v10 = [WFContentItem itemWithObject:v8];
    (*(v9 + 16))(v9, v10, 0);
  }
}

- (void)removeAllSubtasks
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [(WFReminderContentItemChangeTransaction *)self store];
  v4 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  v5 = [v4 objectID];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [v3 fetchRemindersWithParentReminderIDs:v6 error:0];

  [(WFReminderContentItemChangeTransaction *)self removeSubtasks:v7];
}

- (void)removeSubtasks:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(WFReminderContentItemChangeTransaction *)self saveRequest];
        v11 = [v10 updateReminder:v9];

        [v11 setParentReminderID:0];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addSubtasks:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [(WFReminderContentItemChangeTransaction *)self saveRequest];
        v11 = [v10 updateReminder:v9];

        v12 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
        v13 = [v12 listChangeItem];
        [v13 addReminderChangeItem:v11];

        v14 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
        v15 = [v14 objectID];
        [v11 setParentReminderID:v15];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)updateSubtasks:(id)a3
{
  v10 = a3;
  v4 = [(WFContentItemChangeTransaction *)self mode];
  v5 = [v4 isEqualToString:@"Append"];

  if (v5)
  {
    goto LABEL_2;
  }

  v6 = [(WFContentItemChangeTransaction *)self mode];
  v7 = [v6 isEqualToString:@"Remove"];

  if (v7)
  {
    [(WFReminderContentItemChangeTransaction *)self removeSubtasks:v10];
  }

  else
  {
    v8 = [(WFContentItemChangeTransaction *)self mode];
    v9 = [v8 isEqualToString:@"RemoveAll"];

    [(WFReminderContentItemChangeTransaction *)self removeAllSubtasks];
    if ((v9 & 1) == 0)
    {
LABEL_2:
      [(WFReminderContentItemChangeTransaction *)self addSubtasks:v10];
    }
  }
}

- (void)updateList:(id)a3
{
  v4 = a3;
  v5 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  [v5 removeFromList];

  v6 = [(WFReminderContentItemChangeTransaction *)self saveRequest];
  v8 = [v6 updateList:v4];

  v7 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  [v8 addReminderChangeItem:v7];
}

- (WFReminderContentItemChangeTransaction)initWithContentItem:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFReminderContentItemChangeTransaction;
  v5 = [(WFContentItemChangeTransaction *)&v18 initWithContentItem:v4];
  if (v5)
  {
    v6 = WFGetWorkflowReminderStore();
    store = v5->_store;
    v5->_store = v6;

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v8 = getREMSaveRequestClass_softClass;
    v23 = getREMSaveRequestClass_softClass;
    if (!getREMSaveRequestClass_softClass)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __getREMSaveRequestClass_block_invoke;
      v19[3] = &unk_27834A178;
      v19[4] = &v20;
      __getREMSaveRequestClass_block_invoke(v19);
      v8 = v21[3];
    }

    v9 = v8;
    _Block_object_dispose(&v20, 8);
    v10 = [[v8 alloc] initWithStore:v5->_store];
    saveRequest = v5->_saveRequest;
    v5->_saveRequest = v10;

    v12 = v5->_saveRequest;
    v13 = [v4 reminder];
    v14 = [(REMSaveRequest *)v12 updateReminder:v13];
    mutableReminder = v5->_mutableReminder;
    v5->_mutableReminder = v14;

    v16 = v5;
  }

  return v5;
}

+ (void)addImageFiles:(id)a3 toAttachmentContext:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__WFReminderContentItemChangeTransaction_addImageFiles_toAttachmentContext___block_invoke;
  v7[3] = &unk_278346BD8;
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __76__WFReminderContentItemChangeTransaction_addImageFiles_toAttachmentContext___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 fileURL];
  v5 = WFImageSizeFromFile(v3, 0);
  v7 = v6;

  v8 = *(a1 + 32);
  v12 = 0;
  v9 = [v8 addImageAttachmentWithURL:v4 width:v5 height:v7 error:&v12];
  v10 = v12;
  if (!v9)
  {
    v11 = getWFActionsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[WFReminderContentItemChangeTransaction addImageFiles:toAttachmentContext:]_block_invoke";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s Adding image attachment failed with error %@", buf, 0x16u);
    }
  }
}

@end