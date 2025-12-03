@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)d;
- (NSArray)attachments;
- (id)attachmentForHostIdentifier:(id)identifier;
- (void)dealloc;
- (void)setHostIdentifier:(id)identifier forAttachment:(id)attachment;
@end

@implementation MFAttachmentCompositionContext

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attachments = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(attachments);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        attachmentsManager = [(MFAttachmentCompositionContext *)self attachmentsManager];
        v9 = [v7 url];
        [attachmentsManager removeAttachmentForURL:v9];

        attachmentsManager2 = [(MFAttachmentCompositionContext *)self attachmentsManager];
        [attachmentsManager2 clearMetadataForAttachment:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [attachments countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  attachmentsManager3 = [(MFAttachmentCompositionContext *)self attachmentsManager];
  attachmentsBaseURL = [(MFAttachmentCompositionContext *)self attachmentsBaseURL];
  [attachmentsManager3 removeProviderForBaseURL:attachmentsBaseURL];

  v14.receiver = self;
  v14.super_class = MFAttachmentCompositionContext;
  [(MFAttachmentCompositionContext *)&v14 dealloc];
  v13 = *MEMORY[0x1E69E9840];
}

- (MFAttachmentCompositionContext)init
{
  ef_UUID = [MEMORY[0x1E696AEC0] ef_UUID];
  v4 = [(MFAttachmentCompositionContext *)self initWithContextID:ef_UUID];

  return v4;
}

- (MFAttachmentCompositionContext)initWithContextID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MFAttachmentCompositionContext;
  v5 = [(MFAttachmentCompositionContext *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    contextID = v5->_contextID;
    v5->_contextID = v6;
  }

  return v5;
}

- (NSArray)attachments
{
  attachmentsManager = [(MFAttachmentCompositionContext *)self attachmentsManager];
  contextID = [(MFAttachmentCompositionContext *)self contextID];
  v5 = [attachmentsManager attachmentsForContext:contextID];

  return v5;
}

- (void)setHostIdentifier:(id)identifier forAttachment:(id)attachment
{
  identifierCopy = identifier;
  attachmentCopy = attachment;
  if (!self->_hostIdentifierToAttachmentContentIDMap)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hostIdentifierToAttachmentContentIDMap = self->_hostIdentifierToAttachmentContentIDMap;
    self->_hostIdentifierToAttachmentContentIDMap = v7;
  }

  contentID = [attachmentCopy contentID];
  [(NSMutableDictionary *)self->_hostIdentifierToAttachmentContentIDMap setObject:contentID forKeyedSubscript:identifierCopy];
}

- (id)attachmentForHostIdentifier:(id)identifier
{
  v4 = [(NSMutableDictionary *)self->_hostIdentifierToAttachmentContentIDMap objectForKeyedSubscript:identifier];
  attachmentsManager = [(MFAttachmentCompositionContext *)self attachmentsManager];
  v6 = [attachmentsManager attachmentForContentID:v4];

  return v6;
}

@end