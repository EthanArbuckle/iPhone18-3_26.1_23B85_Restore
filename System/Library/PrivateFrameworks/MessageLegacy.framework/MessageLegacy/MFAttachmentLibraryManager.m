@interface MFAttachmentLibraryManager
- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)a3;
- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4;
- (id)attachmentsForMessage:(id)a3 withSchemes:(id)a4;
- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)removeProviderForBaseURL:(id)a3;
@end

@implementation MFAttachmentLibraryManager

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = MFAttachmentLibraryManager;
  [(MFAttachmentComposeManager *)&v3 dealloc];
}

- (MFAttachmentLibraryManager)initWithPrimaryLibrary:(id)a3
{
  v4 = [(MFAttachmentManager *)self init];
  if (v4)
  {
    v5 = [a3 dataProvider];
    -[MFAttachmentManager addProvider:forBaseURL:](v4, "addProvider:forBaseURL:", v5, [MEMORY[0x277CBEBC0] URLWithString:@"x-attach"]);
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }

  return v4;
}

- (void)_messageAttachmentStorageLocationsDidChangeNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [objc_msgSend(a3 "userInfo")];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v16 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v21 + 1) + 8 * i) libraryID];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [(NSMutableDictionary *)self->super.super._metadata allKeys];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * j);
              if ([v13 mf_rowID] == v7)
              {
                [(NSMutableDictionary *)self->super.super._metadata removeObjectForKey:v13];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_dataProviderForAttachmentURL:(id)a3 error:(id *)a4
{
  v13.receiver = self;
  v13.super_class = MFAttachmentLibraryManager;
  v14 = 0;
  result = [(MFAttachmentManager *)&v13 _dataProviderForAttachmentURL:a3 error:&v14];
  if (!result)
  {
    v8 = -[NSMutableDictionary objectForKeyedSubscript:](self->super.super._providers, "objectForKeyedSubscript:", [a3 scheme]);
    if (!v8)
    {
      v8 = [(NSMutableDictionary *)self->super.super._providers objectForKeyedSubscript:@"x-attach"];
    }

    result = v8;
    if (a4 && !result)
    {
      if (v14)
      {
        v9 = [objc_msgSend(v14 "userInfo")];
        v10 = [v9 objectForKey:@"MFLocalizedDescriptionKey"];
        v11 = [v9 objectForKey:@"MFErrorTitleKey"];
        v12 = [v14 domain];
        [v9 removeObjectForKey:@"MFLocalizedDescriptionKey"];
        [v9 removeObjectForKey:@"MFErrorTitleKey"];
      }

      else
      {
        v9 = 0;
        v12 = @"MFMessageErrorDomain";
        v11 = @"No Provider Found";
        v10 = @"Could not find a provider for the given URL.";
      }

      *a4 = [MFError errorWithDomain:v12 code:1030 localizedDescription:v10 title:v11 userInfo:v9];

      return 0;
    }
  }

  return result;
}

- (void)removeProviderForBaseURL:(id)a3
{
  if (([objc_msgSend(a3 "absoluteString")] & 1) == 0)
  {
    v5.receiver = self;
    v5.super_class = MFAttachmentLibraryManager;
    [(MFAttachmentManager *)&v5 removeProviderForBaseURL:a3];
  }
}

- (id)attachmentsForMessage:(id)a3 withSchemes:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB18] array];
  v7 = [a3 messageBodyIfAvailable];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v7 attachments];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [objc_msgSend(*(*(&v19 + 1) + 8 * v12) "mimePart")];
        if (([a3 messageFlags] & 8) != 0)
        {
          v14 = 0;
          if (a4)
          {
            goto LABEL_13;
          }
        }

        else
        {
          [(MFAttachmentLibraryManager *)self _dataProviderForAttachmentURL:v13 error:0];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = 0;
          }

          else
          {
            v14 = v7;
          }

          if (a4)
          {
LABEL_13:
            if (![a4 containsObject:{objc_msgSend(v13, "scheme")}])
            {
              goto LABEL_16;
            }
          }
        }

        v15 = [(MFAttachmentManager *)self attachmentForURL:v13 withMimeBody:v14 error:0];
        if (v15)
        {
          [v18 addObject:v15];
        }

LABEL_16:
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v18;
}

@end