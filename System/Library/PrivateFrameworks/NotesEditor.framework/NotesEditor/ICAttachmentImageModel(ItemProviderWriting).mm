@interface ICAttachmentImageModel(ItemProviderWriting)
- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (id)writableTypeIdentifiersForItemProvider;
- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting;
@end

@implementation ICAttachmentImageModel(ItemProviderWriting)

- (id)writableTypeIdentifiersForItemProvider
{
  v8[1] = *MEMORY[0x277D85DE8];
  attachment = [self attachment];
  isChildOfDocumentGallery = [attachment isChildOfDocumentGallery];

  if (isChildOfDocumentGallery)
  {
    identifier = [*MEMORY[0x277CE1DC0] identifier];
    v8[0] = identifier;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
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
    v19.receiver = self;
    v19.super_class = &off_28280A3A8;
    v8 = objc_msgSendSuper2(&v19, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v6, v7);
  }

  else
  {
    attachment = [self attachment];
    objectID = [attachment objectID];

    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __107__ICAttachmentImageModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v14[3] = &unk_2781ABDE8;
    v15 = objectID;
    v18 = v7;
    v16 = v6;
    selfCopy = self;
    v12 = objectID;
    [mEMORY[0x277D35F30] performBackgroundTask:v14];

    v8 = 0;
  }

  return v8;
}

- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting
{
  v4 = a3;
  attachment = [self attachment];
  isChildOfDocumentGallery = [attachment isChildOfDocumentGallery];

  if ((isChildOfDocumentGallery & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = &off_28280A3A8;
    objc_msgSendSuper2(&v7, sel_registerFileLoadHandlersOnItemProvider_, v4);
  }
}

@end