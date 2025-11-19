@interface WFCalendarEventContentItemChangeTransaction
- (WFCalendarEventContentItemChangeTransaction)initWithContentItem:(id)a3 eventStore:(id)a4;
- (void)addAttachments:(id)a3;
- (void)removeAllAttachments;
- (void)saveWithCompletionHandler:(id)a3 isNew:(BOOL)a4;
- (void)updateAttachments:(id)a3;
@end

@implementation WFCalendarEventContentItemChangeTransaction

- (void)removeAllAttachments
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
  v4 = [v3 attachments];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
        [v10 removeAttachment:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)addAttachments:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
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
        v13 = [v8 fileURL];
        v14 = [v12 initWithFilepath:v13];
        [v9 addAttachment:v14];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)updateAttachments:(id)a3
{
  v8 = a3;
  v4 = [(WFContentItemChangeTransaction *)self mode];
  v5 = [v4 isEqualToString:@"Append"];

  if ((v5 & 1) != 0 || (-[WFContentItemChangeTransaction mode](self, "mode"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:@"RemoveAll"], v6, -[WFCalendarEventContentItemChangeTransaction removeAllAttachments](self, "removeAllAttachments"), (v7 & 1) == 0))
  {
    [(WFCalendarEventContentItemChangeTransaction *)self addAttachments:v8];
  }
}

- (void)saveWithCompletionHandler:(id)a3 isNew:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(WFCalendarEventContentItemChangeTransaction *)self eventStore];
  v7 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
  v14 = 0;
  v8 = [v6 saveEvent:v7 span:0 error:&v14];
  v9 = v14;

  if (v8)
  {
    v10 = [(WFCalendarEventContentItemChangeTransaction *)self mutableEvent];
    v11 = [(WFCalendarEventContentItemChangeTransaction *)self eventStore];
    v12 = [WFCalendarEventContentItem itemWithEKEvent:v10 fromEventStore:v11];
    v5[2](v5, v12, 0);

    v5 = v10;
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

    (v5)[2](v5, 0, v9);
  }
}

- (WFCalendarEventContentItemChangeTransaction)initWithContentItem:(id)a3 eventStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFCalendarEventContentItemChangeTransaction.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentItem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFCalendarEventContentItemChangeTransaction.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"eventStore"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFCalendarEventContentItemChangeTransaction;
  v10 = [(WFContentItemChangeTransaction *)&v17 initWithContentItem:v7];
  if (v10)
  {
    v11 = [v7 event];
    mutableEvent = v10->_mutableEvent;
    v10->_mutableEvent = v11;

    objc_storeStrong(&v10->_eventStore, a4);
    v13 = v10;
  }

  return v10;
}

@end