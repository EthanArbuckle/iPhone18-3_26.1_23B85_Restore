@interface ICAttachmentModel(ItemProviderWriting)
+ (id)writableTypeIdentifiersForItemProvider;
- (id)itemProviderIdentifier;
- (id)itemProviderUTI;
- (id)itemProviderWritingData;
- (id)itemProviderWritingURL;
- (id)writableTypeIdentifiersForItemProvider;
- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting;
- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting;
@end

@implementation ICAttachmentModel(ItemProviderWriting)

- (id)itemProviderIdentifier
{
  v1 = [a1 attachment];
  v2 = [v1 identifier];

  return v2;
}

+ (id)writableTypeIdentifiersForItemProvider
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277D35D08];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];

  return v0;
}

- (id)writableTypeIdentifiersForItemProvider
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 itemProviderUTI];
  v2 = v1;
  if (v1)
  {
    v9 = *MEMORY[0x277D35D08];
    v10 = v1;
    v3 = MEMORY[0x277CBEA60];
    v4 = &v9;
    v5 = 2;
  }

  else
  {
    v8 = *MEMORY[0x277D35D08];
    v3 = MEMORY[0x277CBEA60];
    v4 = &v8;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:{v5, v8, v9, v10}];

  return v6;
}

- (uint64_t)itemProviderVisibilityForRepresentationWithTypeIdentifier:()ItemProviderWriting
{
  if ([a3 isEqual:*MEMORY[0x277D35D08]])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (id)itemProviderUTI
{
  v1 = [a1 attachment];
  v2 = [v1 typeUTI];

  return v2;
}

- (id)itemProviderWritingURL
{
  v2 = [a1 attachment];
  v3 = [v2 media];
  if ([v3 hasFile])
  {
    v4 = [a1 attachment];
    v5 = [v4 media];
    v6 = [v5 mediaURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)itemProviderWritingData
{
  v2 = [a1 attachment];
  if ([v2 isPasswordProtected])
  {
    v3 = [v2 media];
    v4 = [v3 decryptedData];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v3 = [a1 itemProviderWritingURL];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:1 error:0];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting
{
  v4 = a3;
  v5 = [a1 attachment];
  v6 = [v5 media];
  if ([v6 hasFile])
  {
    v7 = [a1 attachment];
    v8 = [v7 isPasswordProtected];

    if ((v8 & 1) == 0)
    {
      v9 = [a1 attachment];
      v10 = [v9 objectID];

      v11 = [a1 attachment];
      v12 = [v11 typeUTI];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke;
      v14[3] = &unk_2781ABD70;
      v15 = v10;
      v13 = v10;
      [v4 registerFileRepresentationForTypeIdentifier:v12 fileOptions:0 visibility:0 loadHandler:v14];
    }
  }

  else
  {
  }
}

- (uint64_t)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 attachment];
  v9 = [v8 objectID];

  v10 = [MEMORY[0x277D35F30] sharedContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v15[3] = &unk_2781ABD98;
  v16 = v9;
  v17 = v6;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v9;
  [v10 performBackgroundTask:v15];

  return 0;
}

@end