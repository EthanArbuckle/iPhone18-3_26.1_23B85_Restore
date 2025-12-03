@interface ICAttachmentInlineDrawingModel(ItemProviderWriting)
- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (id)writableTypeIdentifiersForItemProvider;
@end

@implementation ICAttachmentInlineDrawingModel(ItemProviderWriting)

- (id)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  attachment = [self attachment];
  typeUTI = [attachment typeUTI];
  [v2 ic_addNonNilObject:typeUTI];

  fallbackImageUTI = [MEMORY[0x277D35E00] fallbackImageUTI];
  [v2 ic_addNonNilObject:fallbackImageUTI];

  fallbackPDFUTI = [MEMORY[0x277D35E00] fallbackPDFUTI];
  [v2 ic_addNonNilObject:fallbackPDFUTI];

  v7 = [v2 copy];

  return v7;
}

- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277D35D08]])
  {
    v18.receiver = self;
    v18.super_class = &off_28280A960;
    v8 = objc_msgSendSuper2(&v18, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v6, v7);
  }

  else
  {
    attachment = [self attachment];
    objectID = [attachment objectID];

    mEMORY[0x277D35F30] = [MEMORY[0x277D35F30] sharedContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v14[3] = &unk_2781ABD98;
    v15 = objectID;
    v16 = v6;
    v17 = v7;
    v12 = objectID;
    [mEMORY[0x277D35F30] performBackgroundTask:v14];

    v8 = 0;
  }

  return v8;
}

@end