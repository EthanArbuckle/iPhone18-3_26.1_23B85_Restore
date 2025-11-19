@interface DOCFileRenamingSupport(Swift_OBJC)
+ (void)_workaroundWrapper_importDocumentAtURL:()Swift_OBJC hostIdentifier:completionHandler:;
+ (void)_workaroundWrapper_renameDocumentAtURL:()Swift_OBJC newName:hostIdentifier:completionHandler:;
@end

@implementation DOCFileRenamingSupport(Swift_OBJC)

+ (void)_workaroundWrapper_renameDocumentAtURL:()Swift_OBJC newName:hostIdentifier:completionHandler:
{
  v9 = a6;
  v10 = MEMORY[0x277D05EC8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __118__DOCFileRenamingSupport_Swift_OBJC___workaroundWrapper_renameDocumentAtURL_newName_hostIdentifier_completionHandler___block_invoke;
  v12[3] = &unk_278FA1F38;
  v13 = v9;
  v11 = v9;
  [v10 _renameDocumentAtURL:a3 newName:a4 hostIdentifier:a5 roleIdentifier:0 completion:v12];
}

+ (void)_workaroundWrapper_importDocumentAtURL:()Swift_OBJC hostIdentifier:completionHandler:
{
  v7 = a5;
  v8 = MEMORY[0x277D05EC8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __110__DOCFileRenamingSupport_Swift_OBJC___workaroundWrapper_importDocumentAtURL_hostIdentifier_completionHandler___block_invoke;
  v10[3] = &unk_278FA1F38;
  v11 = v7;
  v9 = v7;
  [v8 _importDocumentAtURL:a3 hostIdentifier:a4 roleIdentifier:0 completion:v10];
}

@end