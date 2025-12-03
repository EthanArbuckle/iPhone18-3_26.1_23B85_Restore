@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library;
- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error;
- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes;
- (void)removeProviderForBaseURL:(id)l;
@end

@implementation MFAttachmentLibraryManager

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)library
{
  libraryCopy = library;
  v5 = [(MFAttachmentComposeManager *)self init];
  if (v5)
  {
    dataProvider = [libraryCopy dataProvider];
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach"];
    v8 = [[MFMailDropAttachmentDataProvider alloc] initWithLibrary:libraryCopy];
    v9 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-maildrop"];
    v10 = [(MFAttachmentLibraryDataProvider *)[MFMailDropAttachmentPreviewDataProvider alloc] initWithLibrary:libraryCopy];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-maildrop-image"];
    [(MFAttachmentManager *)v5 addProvider:dataProvider forBaseURL:v7];
    [(MFAttachmentManager *)v5 addProvider:v8 forBaseURL:v9];
    [(MFAttachmentManager *)v5 addProvider:v10 forBaseURL:v11];
  }

  return v5;
}

- (id)_dataProviderForAttachmentURL:(id)l error:(id *)error
{
  lCopy = l;
  v24.receiver = self;
  v24.super_class = MFAttachmentLibraryManager;
  v25 = 0;
  v7 = [(MFAttachmentManager *)&v24 _dataProviderForAttachmentURL:lCopy error:&v25];
  v8 = v25;
  if (!v7)
  {
    providers = self->super.super._providers;
    scheme = [lCopy scheme];
    v11 = [(NSMutableDictionary *)providers objectForKeyedSubscript:scheme];

    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v12 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
      v7 = v12;
      if (error && !v12)
      {
        if (v8)
        {
          userInfo = [v8 userInfo];
          v14 = [userInfo mutableCopy];

          v22 = v14;
          v15 = [v14 objectForKey:@"MFLocalizedDescriptionKey"];
          v16 = [v14 objectForKey:@"MFErrorTitleKey"];
          domain = [v8 domain];
          [v22 removeObjectForKey:@"MFLocalizedDescriptionKey"];
          v18 = v15;
          v19 = v16;
          v20 = domain;
          [v22 removeObjectForKey:@"MFErrorTitleKey"];
        }

        else
        {
          v20 = @"MFMessageErrorDomain";
          v22 = 0;
          v19 = @"No Provider Found";
          v18 = @"Could not find a provider for the given URL.";
        }

        *error = [MFError errorWithDomain:v20 code:1030 localizedDescription:v18 title:v19 userInfo:v22, v22];

        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)removeProviderForBaseURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v6 = [absoluteString isEqualToString:@"x-attach://"];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v7 removeProviderForBaseURL:lCopy];
  }
}

- (id)attachmentsForMessage:(id)message withSchemes:(id)schemes
{
  v4 = [(MFAttachmentLibraryManager *)self attachmentsForMessage:message withSchemes:schemes updatingFlags:1];

  return v4;
}

@end