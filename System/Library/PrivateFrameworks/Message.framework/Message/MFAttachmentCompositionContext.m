@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)a3;
- (NSArray)attachments;
- (id)attachmentForHostIdentifier:(id)a3;
- (void)dealloc;
- (void)setHostIdentifier:(id)a3 forAttachment:(id)a4;
@end

@implementation MFAttachmentCompositionContext

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = [(MFAttachmentCompositionContext *)self attachmentsManager];
        v9 = [v7 url];
        [v8 removeAttachmentForURL:v9];

        v10 = [(MFAttachmentCompositionContext *)self attachmentsManager];
        [v10 clearMetadataForAttachment:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [(MFAttachmentCompositionContext *)self attachmentsManager];
  v12 = [(MFAttachmentCompositionContext *)self attachmentsBaseURL];
  [v11 removeProviderForBaseURL:v12];

  v14.receiver = self;
  v14.super_class = MFAttachmentCompositionContext;
  [(MFAttachmentCompositionContext *)&v14 dealloc];
  v13 = *MEMORY[0x1E69E9840];
}

- (MFAttachmentCompositionContext)init
{
  v3 = [MEMORY[0x1E696AEC0] ef_UUID];
  v4 = [(MFAttachmentCompositionContext *)self initWithContextID:v3];

  return v4;
}

- (MFAttachmentCompositionContext)initWithContextID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFAttachmentCompositionContext;
  v5 = [(MFAttachmentCompositionContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    contextID = v5->_contextID;
    v5->_contextID = v6;
  }

  return v5;
}

- (NSArray)attachments
{
  v3 = [(MFAttachmentCompositionContext *)self attachmentsManager];
  v4 = [(MFAttachmentCompositionContext *)self contextID];
  v5 = [v3 attachmentsForContext:v4];

  return v5;
}

- (void)setHostIdentifier:(id)a3 forAttachment:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (!self->_hostIdentifierToAttachmentContentIDMap)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    hostIdentifierToAttachmentContentIDMap = self->_hostIdentifierToAttachmentContentIDMap;
    self->_hostIdentifierToAttachmentContentIDMap = v7;
  }

  v9 = [v6 contentID];
  [(NSMutableDictionary *)self->_hostIdentifierToAttachmentContentIDMap setObject:v9 forKeyedSubscript:v10];
}

- (id)attachmentForHostIdentifier:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_hostIdentifierToAttachmentContentIDMap objectForKeyedSubscript:a3];
  v5 = [(MFAttachmentCompositionContext *)self attachmentsManager];
  v6 = [v5 attachmentForContentID:v4];

  return v6;
}

@end