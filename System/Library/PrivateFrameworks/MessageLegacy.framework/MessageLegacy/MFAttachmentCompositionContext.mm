@interface MFAttachmentCompositionContext
- (MFAttachmentCompositionContext)init;
- (MFAttachmentCompositionContext)initWithContextID:(id)a3;
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
  v3 = [(MFAttachmentCompositionContext *)self attachments];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];
        [+[MFAttachmentManager defaultManager](MFAttachmentManager "defaultManager")];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [MEMORY[0x277CCACA8] mf_UUID];

  return [(MFAttachmentCompositionContext *)self initWithContextID:v3];
}

- (MFAttachmentCompositionContext)initWithContextID:(id)a3
{
  v6.receiver = self;
  v6.super_class = MFAttachmentCompositionContext;
  v4 = [(MFAttachmentCompositionContext *)&v6 init];
  if (v4)
  {
    v4->_contextID = a3;
  }

  return v4;
}

- (NSArray)attachments
{
  v3 = +[MFAttachmentManager defaultManager];
  v4 = [(MFAttachmentCompositionContext *)self contextID];

  return [v3 attachmentsForContext:v4];
}

@end