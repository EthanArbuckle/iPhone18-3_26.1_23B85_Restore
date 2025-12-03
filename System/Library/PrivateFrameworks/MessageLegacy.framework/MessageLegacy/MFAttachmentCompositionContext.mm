@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)d;
- (NSArray)attachments;
- (void)dealloc;
@end

@implementation MFAttachmentCompositionContext

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachments = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [(NSArray *)attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(attachments);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];
        [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];

  v10.receiver = self;
  v10.super_class = MFAttachmentCompositionContext;
  [(MFAttachmentCompositionContext *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (MFAttachmentCompositionContext)init
{
  mf_UUID = [MEMORY[0x277CCACA8] mf_UUID];

  return [(MFAttachmentCompositionContext *)self initWithContextID:mf_UUID];
}

- (MFAttachmentCompositionContext)initWithContextID:(id)d
{
  v6.receiver = self;
  v6.super_class = MFAttachmentCompositionContext;
  v4 = [(MFAttachmentCompositionContext *)&v6 init];
  if (v4)
  {
    v4->_contextID = d;
  }

  return v4;
}

- (NSArray)attachments
{
  v3 = +[MFAttachmentManager defaultManager];
  contextID = [(MFAttachmentCompositionContext *)self contextID];

  return [v3 attachmentsForContext:contextID];
}

@end