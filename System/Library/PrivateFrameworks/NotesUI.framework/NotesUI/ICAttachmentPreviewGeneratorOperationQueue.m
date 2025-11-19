@interface ICAttachmentPreviewGeneratorOperationQueue
- (void)cancelOperationsForAttachment:(id)a3;
- (void)resume;
- (void)suspend;
@end

@implementation ICAttachmentPreviewGeneratorOperationQueue

- (void)cancelOperationsForAttachment:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ICAttachmentPreviewGeneratorOperationQueue *)self operations];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 attachmentID];
        v12 = [v4 objectID];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          [v10 cancel];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)suspend
{
  obj = self;
  objc_sync_enter(obj);
  suspendCount = obj->_suspendCount;
  if (!suspendCount)
  {
    [(ICAttachmentPreviewGeneratorOperationQueue *)obj setSuspended:1];
    suspendCount = obj->_suspendCount;
  }

  obj->_suspendCount = suspendCount + 1;
  objc_sync_exit(obj);
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  suspendCount = obj->_suspendCount;
  if (suspendCount)
  {
    v3 = suspendCount - 1;
    obj->_suspendCount = v3;
    if (!v3)
    {
      [(ICAttachmentPreviewGeneratorOperationQueue *)obj setSuspended:0];
    }
  }

  objc_sync_exit(obj);
}

@end