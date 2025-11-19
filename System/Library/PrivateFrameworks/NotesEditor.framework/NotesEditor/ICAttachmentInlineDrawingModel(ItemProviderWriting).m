@interface ICAttachmentInlineDrawingModel(ItemProviderWriting)
- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:;
- (id)writableTypeIdentifiersForItemProvider;
@end

@implementation ICAttachmentInlineDrawingModel(ItemProviderWriting)

- (id)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v3 = [a1 attachment];
  v4 = [v3 typeUTI];
  [v2 ic_addNonNilObject:v4];

  v5 = [MEMORY[0x277D35E00] fallbackImageUTI];
  [v2 ic_addNonNilObject:v5];

  v6 = [MEMORY[0x277D35E00] fallbackPDFUTI];
  [v2 ic_addNonNilObject:v6];

  v7 = [v2 copy];

  return v7;
}

- (id)loadDataWithTypeIdentifier:()ItemProviderWriting forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:*MEMORY[0x277D35D08]])
  {
    v18.receiver = a1;
    v18.super_class = &off_28280A960;
    v8 = objc_msgSendSuper2(&v18, sel_loadDataWithTypeIdentifier_forItemProviderCompletionHandler_, v6, v7);
  }

  else
  {
    v9 = [a1 attachment];
    v10 = [v9 objectID];

    v11 = [MEMORY[0x277D35F30] sharedContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __115__ICAttachmentInlineDrawingModel_ItemProviderWriting__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
    v14[3] = &unk_2781ABD98;
    v15 = v10;
    v16 = v6;
    v17 = v7;
    v12 = v10;
    [v11 performBackgroundTask:v14];

    v8 = 0;
  }

  return v8;
}

@end