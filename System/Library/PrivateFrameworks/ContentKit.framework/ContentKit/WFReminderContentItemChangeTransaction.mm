@interface WFReminderContentItemChangeTransaction
+ (void)addImageFiles:(id)files toAttachmentContext:(id)context;
- (WFReminderContentItemChangeTransaction)initWithContentItem:(id)item;
- (void)addImageFiles:(id)files;
- (void)addSubtasks:(id)subtasks;
- (void)addTags:(id)tags;
- (void)removeAllImageAttachments;
- (void)removeAllSubtasks;
- (void)removeSubtasks:(id)subtasks;
- (void)saveWithCompletionHandler:(id)handler isNew:(BOOL)new;
- (void)updateImageFiles:(id)files;
- (void)updateList:(id)list;
- (void)updateSubtasks:(id)subtasks;
- (void)updateTags:(id)tags;
@end

@implementation WFReminderContentItemChangeTransaction

- (void)addTags:(id)tags
{
  v18 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [tagsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(tagsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
        hashtagContext = [mutableReminder hashtagContext];
        v12 = [hashtagContext addHashtagWithType:0 name:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [tagsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)updateTags:(id)tags
{
  v30 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v6 = [mode isEqualToString:@"Append"];

  if (v6)
  {
LABEL_2:
    [(WFReminderContentItemChangeTransaction *)self addTags:tagsCopy];
    goto LABEL_15;
  }

  mode2 = [(WFContentItemChangeTransaction *)self mode];
  v8 = [mode2 isEqualToString:@"Remove"];

  if (!v8)
  {
    mode3 = [(WFContentItemChangeTransaction *)self mode];
    v22 = [mode3 isEqualToString:@"RemoveAll"];

    mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
    hashtagContext = [mutableReminder hashtagContext];
    [hashtagContext removeAllHashtags];

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
  mutableReminder2 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  hashtagContext2 = [mutableReminder2 hashtagContext];
  hashtags = [hashtagContext2 hashtags];

  v12 = [hashtags countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(hashtags);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        name = [v16 name];
        v18 = [tagsCopy containsObject:name];

        if (v18)
        {
          mutableReminder3 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
          hashtagContext3 = [mutableReminder3 hashtagContext];
          [hashtagContext3 removeHashtag:v16];
        }
      }

      v13 = [hashtags countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

LABEL_15:
}

- (void)removeAllImageAttachments
{
  v14 = *MEMORY[0x277D85DE8];
  mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  attachmentContext = [mutableReminder attachmentContext];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  imageAttachments = [attachmentContext imageAttachments];
  v5 = [imageAttachments countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(imageAttachments);
        }

        [attachmentContext removeAttachment:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [imageAttachments countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addImageFiles:(id)files
{
  filesCopy = files;
  v5 = objc_opt_class();
  mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  attachmentContext = [mutableReminder attachmentContext];
  [v5 addImageFiles:filesCopy toAttachmentContext:attachmentContext];
}

- (void)updateImageFiles:(id)files
{
  filesCopy = files;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v5 = [mode isEqualToString:@"Append"];

  if ((v5 & 1) != 0 || (-[WFContentItemChangeTransaction mode](self, "mode"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:@"RemoveAll"], v6, -[WFReminderContentItemChangeTransaction removeAllImageAttachments](self, "removeAllImageAttachments"), (v7 & 1) == 0))
  {
    [(WFReminderContentItemChangeTransaction *)self addImageFiles:filesCopy];
  }
}

- (void)saveWithCompletionHandler:(id)handler isNew:(BOOL)new
{
  handlerCopy = handler;
  saveRequest = [(WFReminderContentItemChangeTransaction *)self saveRequest];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__WFReminderContentItemChangeTransaction_saveWithCompletionHandler_isNew___block_invoke;
  v9[3] = &unk_278346BB0;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [saveRequest saveWithQueue:v7 completion:v9];
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
  store = [(WFReminderContentItemChangeTransaction *)self store];
  mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  objectID = [mutableReminder objectID];
  v8[0] = objectID;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v7 = [store fetchRemindersWithParentReminderIDs:v6 error:0];

  [(WFReminderContentItemChangeTransaction *)self removeSubtasks:v7];
}

- (void)removeSubtasks:(id)subtasks
{
  v17 = *MEMORY[0x277D85DE8];
  subtasksCopy = subtasks;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [subtasksCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(subtasksCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        saveRequest = [(WFReminderContentItemChangeTransaction *)self saveRequest];
        v11 = [saveRequest updateReminder:v9];

        [v11 setParentReminderID:0];
        ++v8;
      }

      while (v6 != v8);
      v6 = [subtasksCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)addSubtasks:(id)subtasks
{
  v21 = *MEMORY[0x277D85DE8];
  subtasksCopy = subtasks;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [subtasksCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(subtasksCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        saveRequest = [(WFReminderContentItemChangeTransaction *)self saveRequest];
        v11 = [saveRequest updateReminder:v9];

        mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
        listChangeItem = [mutableReminder listChangeItem];
        [listChangeItem addReminderChangeItem:v11];

        mutableReminder2 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
        objectID = [mutableReminder2 objectID];
        [v11 setParentReminderID:objectID];

        ++v8;
      }

      while (v6 != v8);
      v6 = [subtasksCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)updateSubtasks:(id)subtasks
{
  subtasksCopy = subtasks;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v5 = [mode isEqualToString:@"Append"];

  if (v5)
  {
    goto LABEL_2;
  }

  mode2 = [(WFContentItemChangeTransaction *)self mode];
  v7 = [mode2 isEqualToString:@"Remove"];

  if (v7)
  {
    [(WFReminderContentItemChangeTransaction *)self removeSubtasks:subtasksCopy];
  }

  else
  {
    mode3 = [(WFContentItemChangeTransaction *)self mode];
    v9 = [mode3 isEqualToString:@"RemoveAll"];

    [(WFReminderContentItemChangeTransaction *)self removeAllSubtasks];
    if ((v9 & 1) == 0)
    {
LABEL_2:
      [(WFReminderContentItemChangeTransaction *)self addSubtasks:subtasksCopy];
    }
  }
}

- (void)updateList:(id)list
{
  listCopy = list;
  mutableReminder = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  [mutableReminder removeFromList];

  saveRequest = [(WFReminderContentItemChangeTransaction *)self saveRequest];
  v8 = [saveRequest updateList:listCopy];

  mutableReminder2 = [(WFReminderContentItemChangeTransaction *)self mutableReminder];
  [v8 addReminderChangeItem:mutableReminder2];
}

- (WFReminderContentItemChangeTransaction)initWithContentItem:(id)item
{
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = WFReminderContentItemChangeTransaction;
  v5 = [(WFContentItemChangeTransaction *)&v18 initWithContentItem:itemCopy];
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
    reminder = [itemCopy reminder];
    v14 = [(REMSaveRequest *)v12 updateReminder:reminder];
    mutableReminder = v5->_mutableReminder;
    v5->_mutableReminder = v14;

    v16 = v5;
  }

  return v5;
}

+ (void)addImageFiles:(id)files toAttachmentContext:(id)context
{
  contextCopy = context;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__WFReminderContentItemChangeTransaction_addImageFiles_toAttachmentContext___block_invoke;
  v7[3] = &unk_278346BD8;
  v8 = contextCopy;
  v6 = contextCopy;
  [files enumerateObjectsUsingBlock:v7];
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