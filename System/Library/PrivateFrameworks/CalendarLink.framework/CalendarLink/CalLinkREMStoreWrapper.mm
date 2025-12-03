@interface CalLinkREMStoreWrapper
- (CalLinkREMStoreWrapper)init;
- (id)fetchReminderDataForReminderURLs:(id)ls error:(id *)error;
@end

@implementation CalLinkREMStoreWrapper

- (CalLinkREMStoreWrapper)init
{
  v8.receiver = self;
  v8.super_class = CalLinkREMStoreWrapper;
  v2 = [(CalLinkREMStoreWrapper *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getREMStoreClass_softClass;
    v13 = getREMStoreClass_softClass;
    if (!getREMStoreClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getREMStoreClass_block_invoke;
      v9[3] = &unk_278D6AFC0;
      v9[4] = &v10;
      __getREMStoreClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_opt_new();
    reminderStore = v2->_reminderStore;
    v2->_reminderStore = v5;
  }

  return v2;
}

- (id)fetchReminderDataForReminderURLs:(id)ls error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = lsCopy;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v7)
  {
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v28 = 0;
        v29 = &v28;
        v30 = 0x2050000000;
        v11 = getREMObjectIDClass_softClass;
        v31 = getREMObjectIDClass_softClass;
        if (!getREMObjectIDClass_softClass)
        {
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __getREMObjectIDClass_block_invoke;
          v27[3] = &unk_278D6AFC0;
          v27[4] = &v28;
          __getREMObjectIDClass_block_invoke(v27);
          v11 = v29[3];
        }

        v12 = v11;
        _Block_object_dispose(&v28, 8);
        v13 = [v11 objectIDWithURL:v10];
        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v7);
  }

  v14 = [(REMStore *)self->_reminderStore fetchRemindersWithObjectIDs:v5 error:error];
  if (v14)
  {
    v15 = objc_opt_new();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__CalLinkREMStoreWrapper_fetchReminderDataForReminderURLs_error___block_invoke;
    v21[3] = &unk_278D6AF98;
    v16 = v15;
    v22 = v16;
    [v14 enumerateKeysAndObjectsUsingBlock:v21];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __65__CalLinkREMStoreWrapper_fetchReminderDataForReminderURLs_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v5 = a3;
  v6 = objc_alloc_init(CalLinkReminderData);
  v7 = [v5 list];
  v8 = [v7 name];
  [(CalLinkReminderData *)v6 setListName:v8];

  v9 = [v5 notes];
  v10 = [v9 string];
  [(CalLinkReminderData *)v6 setNotes:v10];

  v11 = [v5 attachmentContext];

  v12 = [v11 urlAttachments];
  v13 = [v12 firstObject];
  v14 = [v13 url];
  [(CalLinkReminderData *)v6 setUrl:v14];

  v15 = [(CalLinkReminderData *)v6 listName];
  if (v15 || ([(CalLinkReminderData *)v6 notes], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v16 = *(a1 + 32);
    v17 = [v19 urlRepresentation];
    [v16 setObject:v6 forKeyedSubscript:v17];

    goto LABEL_5;
  }

  v18 = [(CalLinkReminderData *)v6 url];

  if (v18)
  {
    goto LABEL_4;
  }

LABEL_5:
}

@end