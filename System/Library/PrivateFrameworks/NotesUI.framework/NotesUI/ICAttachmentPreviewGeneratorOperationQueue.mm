@interface ICAttachmentPreviewGeneratorOperationQueue
- (void)cancelOperationsForAttachment:(id)attachment;
- (void)resume;
- (void)suspend;
@end

@implementation ICAttachmentPreviewGeneratorOperationQueue

- (void)cancelOperationsForAttachment:(id)attachment
{
  v19 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  operations = [(ICAttachmentPreviewGeneratorOperationQueue *)self operations];
  v6 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(operations);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        attachmentID = [v10 attachmentID];
        objectID = [attachmentCopy objectID];
        v13 = [attachmentID isEqual:objectID];

        if (v13)
        {
          [v10 cancel];
        }
      }

      v7 = [operations countByEnumeratingWithState:&v14 objects:v18 count:16];
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