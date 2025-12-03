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
  attachment = [self attachment];
  identifier = [attachment identifier];

  return identifier;
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
  itemProviderUTI = [self itemProviderUTI];
  v2 = itemProviderUTI;
  if (itemProviderUTI)
  {
    v9 = *MEMORY[0x277D35D08];
    v10 = itemProviderUTI;
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
  attachment = [self attachment];
  typeUTI = [attachment typeUTI];

  return typeUTI;
}

- (id)itemProviderWritingURL
{
  attachment = [self attachment];
  media = [attachment media];
  if ([media hasFile])
  {
    attachment2 = [self attachment];
    media2 = [attachment2 media];
    mediaURL = [media2 mediaURL];
  }

  else
  {
    mediaURL = 0;
  }

  return mediaURL;
}

- (id)itemProviderWritingData
{
  attachment = [self attachment];
  if ([attachment isPasswordProtected])
  {
    media = [attachment media];
    decryptedData = [media decryptedData];
LABEL_5:
    v5 = decryptedData;
    goto LABEL_6;
  }

  media = [self itemProviderWritingURL];
  if (media)
  {
    decryptedData = [MEMORY[0x277CBEA90] dataWithContentsOfURL:media options:1 error:0];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting
{
  v4 = a3;
  attachment = [self attachment];
  media = [attachment media];
  if ([media hasFile])
  {
    attachment2 = [self attachment];
    isPasswordProtected = [attachment2 isPasswordProtected];

    if ((isPasswordProtected & 1) == 0)
    {
      attachment3 = [self attachment];
      objectID = [attachment3 objectID];

      attachment4 = [self attachment];
      typeUTI = [attachment4 typeUTI];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __81__ICAttachmentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke;
      v14[3] = &unk_2781ABD70;
      v15 = objectID;
      v13 = objectID;
      [v4 registerFileRepresentationForTypeIdentifier:typeUTI fileOptions:0 visibility:0 loadHandler:v14];
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
  attachment = [self attachment];
  objectID = [attachment objectID];

  mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__ICAttachmentModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v15[3] = &unk_2781ABD98;
  v16 = objectID;
  v17 = v6;
  v18 = v7;
  v11 = v7;
  v12 = v6;
  v13 = objectID;
  [mEMORY[0x277D35F30] performBackgroundTask:v15];

  return 0;
}

@end