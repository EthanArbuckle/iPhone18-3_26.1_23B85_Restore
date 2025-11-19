@interface ICAttachmentPaperDocumentModel
@end

@implementation ICAttachmentPaperDocumentModel

uint64_t __94__ICAttachmentPaperDocumentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D35F30] sharedContext];
  v5 = [v4 workerManagedObjectContext];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__ICAttachmentPaperDocumentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2;
  v9[3] = &unk_2781ABE10;
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v3;
  v6 = v3;
  v7 = v5;
  [v7 performBlock:v9];

  return 0;
}

void __94__ICAttachmentPaperDocumentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke_2(void *a1)
{
  v4 = [MEMORY[0x277D35E00] ic_existingObjectWithID:a1[4] context:a1[5]];
  v2 = a1[6];
  v3 = [v4 previewItemURL];
  (*(v2 + 16))(v2, v3, 0, 0);
}

@end