@interface ICAttachmentGalleryModel(ItemProviderWriting)
- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting;
@end

@implementation ICAttachmentGalleryModel(ItemProviderWriting)

- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  identifier = [*MEMORY[0x277CE1E08] identifier];
  v9 = [v6 isEqualToString:identifier];

  if (v9)
  {
    attachment = [self attachment];
    objectID = [attachment objectID];

    v12 = objc_alloc_init(MEMORY[0x277CCAC48]);
    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __109__ICAttachmentGalleryModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v20[3] = &unk_2781ABD98;
    v21 = objectID;
    v14 = v12;
    v22 = v14;
    v23 = v7;
    v15 = objectID;
    [mEMORY[0x277D35F30] performBackgroundTask:v20];

    v16 = v23;
    v17 = v14;
  }

  else
  {
    v19.receiver = self;
    v19.super_class = &off_28280A838;
    v17 = objc_msgSendSuper2(&v19, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v6, v7);
  }

  return v17;
}

- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting
{
  v4 = a3;
  attachment = [self attachment];
  objectID = [attachment objectID];

  itemProviderUTI = [self itemProviderUTI];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__ICAttachmentGalleryModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke;
  v9[3] = &unk_2781ABD70;
  v10 = objectID;
  v8 = objectID;
  [v4 registerFileRepresentationForTypeIdentifier:itemProviderUTI fileOptions:0 visibility:0 loadHandler:v9];
}

@end