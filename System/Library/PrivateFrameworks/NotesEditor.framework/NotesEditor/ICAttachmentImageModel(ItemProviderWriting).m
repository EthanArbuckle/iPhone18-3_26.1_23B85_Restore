@interface ICAttachmentImageModel(ItemProviderWriting)
- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (id)writableTypeIdentifiersForItemProvider;
- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting;
@end

@implementation ICAttachmentImageModel(ItemProviderWriting)

- (id)writableTypeIdentifiersForItemProvider
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 attachment];
  v3 = [v2 isChildOfDocumentGallery];

  if (v3)
  {
    v4 = [*MEMORY[0x277CE1DC0] identifier];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &off_28280A3A8;
    v5 = objc_msgSendSuper2(&v7, sel_writableTypeIdentifiersForItemProvider);
  }

  return v5;
}

- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277D35D08]])
  {
    v19.receiver = a1;
    v19.super_class = &off_28280A3A8;
    v8 = objc_msgSendSuper2(&v19, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v6, v7);
  }

  else
  {
    v9 = [a1 attachment];
    v10 = [v9 objectID];

    v11 = [MEMORY[0x277D35F30] sharedContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v14[3] = &unk_2781ABDE8;
    v15 = v10;
    v18 = v7;
    v16 = v6;
    v17 = a1;
    v12 = v10;
    [v11 performBackgroundTask:v14];

    v8 = 0;
  }

  return v8;
}

- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting
{
  v4 = a3;
  v5 = [a1 attachment];
  v6 = [v5 isChildOfDocumentGallery];

  if ((v6 & 1) == 0)
  {
    v7.receiver = a1;
    v7.super_class = &off_28280A3A8;
    objc_msgSendSuper2(&v7, sel_registerFileLoadHandlersOnItemProvider_, v4);
  }
}

@end