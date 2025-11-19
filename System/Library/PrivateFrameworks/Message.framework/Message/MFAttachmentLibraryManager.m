@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)a3;
- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4;
- (id)attachmentsForMessage:(id)a3 withSchemes:(id)a4;
- (void)removeProviderForBaseURL:(id)a3;
@end

@implementation MFAttachmentLibraryManager

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)a3
{
  v4 = a3;
  v5 = [(MFAttachmentComposeManager *)self init];
  if (v5)
  {
    v6 = [v4 dataProvider];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach"];
    v8 = [[MFMailDropAttachmentDataProvider alloc] initWithLibrary:v4];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-maildrop"];
    v10 = [(MFAttachmentLibraryDataProvider *)[MFMailDropAttachmentPreviewDataProvider alloc] initWithLibrary:v4];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-maildrop-image"];
    [(MFAttachmentManager *)v5 addProvider:v6 forBaseURL:v7];
    [(MFAttachmentManager *)v5 addProvider:v8 forBaseURL:v9];
    [(MFAttachmentManager *)v5 addProvider:v10 forBaseURL:v11];
  }

  return v5;
}

- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = MFAttachmentLibraryManager;
  v25 = 0;
  v7 = [(MFAttachmentManager *)&v24 _dataProviderForAttachmentURL:v6 error:&v25];
  v8 = v25;
  if (!v7)
  {
    providers = self->super.super._providers;
    v10 = [v6 scheme];
    v11 = [(NSMutableDictionary *)providers objectForKeyedSubscript:v10];

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
      v7 = v12;
      if (a4 && !v12)
      {
        if (v8)
        {
          v13 = [v8 userInfo];
          v14 = [v13 mutableCopy];

          v22 = v14;
          v15 = [v14 objectForKey:@"MFLocalizedDescriptionKey"];
          v16 = [v14 objectForKey:@"MFErrorTitleKey"];
          v17 = [v8 domain];
          [v22 removeObjectForKey:@"MFLocalizedDescriptionKey"];
          v18 = v15;
          v19 = v16;
          v20 = v17;
          [v22 removeObjectForKey:@"MFErrorTitleKey"];
        }

        else
        {
          v20 = @"MFMessageErrorDomain";
          v22 = 0;
          v19 = @"No Provider Found";
          v18 = @"Could not find a provider for the given URL.";
        }

        *a4 = [MFError errorWithDomain:v20 code:1030 localizedDescription:v18 title:v19 userInfo:v22, v22];

        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)removeProviderForBaseURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [v5 isEqualToString:@"x-attach://"];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v7 removeProviderForBaseURL:v4];
  }
}

- (id)attachmentsForMessage:(id)a3 withSchemes:(id)a4
{
  v4 = [(MFAttachmentLibraryManager *)self attachmentsForMessage:a3 withSchemes:a4 updatingFlags:1];

  return v4;
}

@end