@interface IMDCoreSpotlightSelectiveReindexingJob
+ (id)_sanitizedSearchableItemIdentifiers:(id)identifiers;
- (BOOL)_indexChats;
- (BOOL)_indexMessages;
- (IMDCoreSpotlightSelectiveReindexingJob)initWithItemIdentifiers:(id)identifiers;
- (void)_enterGroup;
- (void)_leaveGroup;
- (void)runWithAcknowledgementHandler:(id)handler;
@end

@implementation IMDCoreSpotlightSelectiveReindexingJob

+ (id)_sanitizedSearchableItemIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = MEMORY[0x1E695DFA8];
  v7 = objc_msgSend_count(identifiersCopy, v5, v6);
  v9 = objc_msgSend_setWithCapacity_(v4, v8, v7);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = identifiersCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = objc_msgSend_componentsSeparatedByString_(*(*(&v27 + 1) + 8 * i), v13, @"/", v27);
        v20 = objc_msgSend_lastObject(v17, v18, v19);
        objc_msgSend_addObject_(v9, v21, v20);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v27, v31, 16);
    }

    while (v14);
  }

  v24 = objc_msgSend_allObjects(v9, v22, v23);

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (IMDCoreSpotlightSelectiveReindexingJob)initWithItemIdentifiers:(id)identifiers
{
  v57 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v55.receiver = self;
  v55.super_class = IMDCoreSpotlightSelectiveReindexingJob;
  v5 = [(IMDCoreSpotlightSelectiveReindexingJob *)&v55 init];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v46 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v47 = identifiersCopy;
  v8 = identifiersCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v51, v56, 16);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v52;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v52 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v51 + 1) + 8 * i);
      if ((IMFileTransferGUIDIsTemporary() & 1) == 0)
      {
        v17 = IMMessageGuidFromIMFileTransferGuid();
        if (v17)
        {
          objc_msgSend_addObject_(v6, v22, v17);
        }

        goto LABEL_12;
      }

      if (objc_msgSend_containsString_(v14, v15, @"/"))
      {
        v17 = objc_msgSend_componentsSeparatedByString_(v14, v16, @"/");
        v20 = objc_msgSend_lastObject(v17, v18, v19);
        objc_msgSend_addObject_(v6, v21, v20);

LABEL_12:
        continue;
      }

      objc_msgSend_addObject_(v7, v16, v14);
    }

    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v23, &v51, v56, 16);
  }

  while (v11);
LABEL_16:

  v28 = v46;
  if (objc_msgSend_count(v7, v24, v25))
  {
    v29 = objc_msgSend_synchronousDatabase(IMDDatabase, v26, v27);
    v32 = objc_msgSend_allObjects(v7, v30, v31);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1B7BC3238;
    v48[3] = &unk_1E7CBC268;
    v49 = v6;
    v50 = v46;
    objc_msgSend_resolveSpotlightItemIdentifiers_completionHandler_(v29, v33, v32, v48);
  }

  v34 = objc_msgSend_allObjects(v6, v26, v27, v46);
  messageGUIDs = v5->_messageGUIDs;
  v5->_messageGUIDs = v34;

  v38 = objc_msgSend_allObjects(v28, v36, v37);
  chatGUIDs = v5->_chatGUIDs;
  v5->_chatGUIDs = v38;

  v40 = [IMDIndexingContext alloc];
  v42 = objc_msgSend_initForReindexing_reason_(v40, v41, 1, 7);
  context = v5->_context;
  v5->_context = v42;

  identifiersCopy = v47;
LABEL_19:

  v44 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)runWithAcknowledgementHandler:(id)handler
{
  handlerCopy = handler;
  block = handlerCopy;
  if (handlerCopy)
  {
    handlerCopy = dispatch_group_create();
  }

  group = self->_group;
  self->_group = handlerCopy;

  v8 = objc_msgSend__indexMessages(self, v6, v7);
  v11 = objc_msgSend__indexChats(self, v9, v10);
  v13 = block;
  if (block)
  {
    if ((v8 | v11))
    {
      v14 = objc_msgSend_group(self, block, v12);
      v15 = dispatch_get_global_queue(2, 0);
      dispatch_group_notify(v14, v15, block);
    }

    else
    {
      (*(block + 2))(block);
    }

    v13 = block;
  }
}

- (void)_enterGroup
{
  v4 = objc_msgSend_group(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_group(self, v5, v6);
    dispatch_group_enter(v7);
  }
}

- (void)_leaveGroup
{
  v4 = objc_msgSend_group(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_group(self, v5, v6);
    dispatch_group_leave(v7);
  }
}

- (BOOL)_indexMessages
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_messageGUIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_messageGUIDs(self, v9, v10);
      *buf = 134217984;
      v30 = objc_msgSend_count(v11, v12, v13);
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Going to index %ld messages due to selective reindexing request", buf, 0xCu);
    }

    objc_msgSend__enterGroup(self, v14, v15);
    v18 = objc_msgSend_queryProvider(IMDIndexingController, v16, v17);
    v21 = objc_msgSend_messageGUIDs(self, v19, v20);
    v24 = objc_msgSend_context(self, v22, v23);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1B7BC35F4;
    v28[3] = &unk_1E7CB6C58;
    v28[4] = self;
    objc_msgSend_addMessageGUIDs_context_completionHandler_(v18, v25, v21, v24, v28);
  }

  result = v7 != 0;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_indexChats
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_chatGUIDs(self, a2, v2);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = objc_msgSend_chatGUIDs(self, v9, v10);
      *buf = 134217984;
      v30 = objc_msgSend_count(v11, v12, v13);
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Going to index %ld chats due to selective reindexing request", buf, 0xCu);
    }

    objc_msgSend__enterGroup(self, v14, v15);
    v18 = objc_msgSend_queryProvider(IMDIndexingController, v16, v17);
    v21 = objc_msgSend_chatGUIDs(self, v19, v20);
    v24 = objc_msgSend_context(self, v22, v23);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1B7BC3900;
    v28[3] = &unk_1E7CB6C58;
    v28[4] = self;
    objc_msgSend_addChatGUIDs_context_completionHandler_(v18, v25, v21, v24, v28);
  }

  result = v7 != 0;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

@end