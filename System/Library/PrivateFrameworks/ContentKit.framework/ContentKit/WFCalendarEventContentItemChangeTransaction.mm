@interface WFCalendarEventContentItemChangeTransaction
- (WFCalendarEventContentItemChangeTransaction)initWithContentItem:(id)item eventStore:(id)store;
- (void)addAttachments:(id)attachments;
- (void)removeAllAttachments;
- (void)saveWithCompletionHandler:(id)handler isNew:(BOOL)new;
- (void)updateAttachments:(id)attachments;
@end

@implementation WFCalendarEventContentItemChangeTransaction

- (void)removeAllAttachments
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  mutableEvent = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
  attachments = [mutableEvent attachments];

  v5 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(attachments);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        mutableEvent2 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
        [mutableEvent2 removeAttachment:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)addAttachments:(id)attachments
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attachmentsCopy = attachments;
  v5 = [attachmentsCopy countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(attachmentsCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        mutableEvent = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
        v20 = 0;
        v21 = &v20;
        v22 = 0x2050000000;
        v10 = getEKAttachmentClass_softClass;
        v23 = getEKAttachmentClass_softClass;
        if (!getEKAttachmentClass_softClass)
        {
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __getEKAttachmentClass_block_invoke;
          v19[3] = &unk_27834A178;
          v19[4] = &v20;
          __getEKAttachmentClass_block_invoke(v19);
          v10 = v21[3];
        }

        v11 = v10;
        _Block_object_dispose(&v20, 8);
        v12 = [v10 alloc];
        fileURL = [v8 fileURL];
        v14 = [v12 initWithFilepath:fileURL];
        [mutableEvent addAttachment:v14];

        ++v7;
      }

      while (v5 != v7);
      v5 = [attachmentsCopy countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)updateAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  mode = [(WFContentItemChangeTransaction *)self mode];
  v5 = [mode isEqualToString:@"Append"];

  if ((v5 & 1) != 0 || (-[WFContentItemChangeTransaction mode](self, "mode"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:@"RemoveAll"], v6, -[WFCalendarEventContentItemChangeTransaction removeAllAttachments](self, "removeAllAttachments"), (v7 & 1) == 0))
  {
    [(WFCalendarEventContentItemChangeTransaction *)self addAttachments:attachmentsCopy];
  }
}

- (void)saveWithCompletionHandler:(id)handler isNew:(BOOL)new
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  eventStore = [(WFCalendarEventContentItemChangeTransaction *)self eventStore];
  mutableEvent = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
  v14 = 0;
  v8 = [eventStore saveEvent:mutableEvent span:0 error:&v14];
  v9 = v14;

  if (v8)
  {
    mutableEvent2 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
    eventStore2 = [(WFCalendarEventContentItemChangeTransaction *)self eventStore];
    v12 = [WFCalendarEventContentItem itemWithEKEvent:mutableEvent2 fromEventStore:eventStore2];
    handlerCopy[2](handlerCopy, v12, 0);

    handlerCopy = mutableEvent2;
  }

  else
  {
    v13 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFCalendarEventContentItemChangeTransaction saveWithCompletionHandler:isNew:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_21E1BD000, v13, OS_LOG_TYPE_ERROR, "%s Failed to save calendar event: %@", buf, 0x16u);
    }

    (handlerCopy)[2](handlerCopy, 0, v9);
  }
}

- (WFCalendarEventContentItemChangeTransaction)initWithContentItem:(id)item eventStore:(id)store
{
  itemCopy = item;
  storeCopy = store;
  v9 = storeCopy;
  if (itemCopy)
  {
    if (storeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCalendarEventContentItemChangeTransaction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentItem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFCalendarEventContentItemChangeTransaction.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"eventStore"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCalendarEventContentItemChangeTransaction;
  v10 = [(WFContentItemChangeTransaction *)&v17 initWithContentItem:itemCopy];
  if (v10)
  {
    event = [itemCopy event];
    mutableEvent = v10->_mutableEvent;
    v10->_mutableEvent = event;

    objc_storeStrong(&v10->_eventStore, store);
    v13 = v10;
  }

  return v10;
}

@end