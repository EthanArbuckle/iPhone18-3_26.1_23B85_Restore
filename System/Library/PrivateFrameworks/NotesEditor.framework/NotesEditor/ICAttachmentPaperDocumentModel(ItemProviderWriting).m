@interface ICAttachmentPaperDocumentModel(ItemProviderWriting)
- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting;
@end

@implementation ICAttachmentPaperDocumentModel(ItemProviderWriting)

- (void)registerFileLoadHandlersOnItemProvider:()ItemProviderWriting
{
  v4 = a3;
  v5 = [a1 attachment];
  v6 = [v5 objectID];

  v7 = *MEMORY[0x277CE1E08];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__ICAttachmentPaperDocumentModel_ItemProviderWriting__registerFileLoadHandlersOnItemProvider___block_invoke;
  v9[3] = &unk_2781ABD70;
  v10 = v6;
  v8 = v6;
  [v4 registerFileRepresentationForContentType:v7 visibility:0 openInPlace:0 loadHandler:v9];
}

@end