@interface ICAccount
@end

@implementation ICAccount

void __45__ICAccount_UI__globalVirtualMathNotesFolder__block_invoke()
{
  v0 = [ICVirtualSmartFolderItemIdentifier alloc];
  v3 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
  v1 = [(ICVirtualSmartFolderItemIdentifier *)v0 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes" parentIdentifier:v3];
  v2 = globalVirtualMathNotesFolder_identifier;
  globalVirtualMathNotesFolder_identifier = v1;
}

void __49__ICAccount_UI__globalVirtualSharedWithYouFolder__block_invoke()
{
  v0 = [ICVirtualSmartFolderItemIdentifier alloc];
  v3 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
  v1 = [(ICVirtualSmartFolderItemIdentifier *)v0 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeSharedWithYou" parentIdentifier:v3];
  v2 = globalVirtualSharedWithYouFolder_identifier;
  globalVirtualSharedWithYouFolder_identifier = v1;
}

void __47__ICAccount_UI__globalVirtualSystemPaperFolder__block_invoke()
{
  v0 = [ICVirtualSmartFolderItemIdentifier alloc];
  v3 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
  v1 = [(ICVirtualSmartFolderItemIdentifier *)v0 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper" parentIdentifier:v3];
  v2 = globalVirtualSystemPaperFolder_identifier;
  globalVirtualSystemPaperFolder_identifier = v1;
}

void __60__ICAccount_UI__globalVirtualRecentlyDeletedMathNotesFolder__block_invoke(uint64_t a1)
{
  v2 = [ICVirtualSmartFolderItemIdentifier alloc];
  v5 = [*(a1 + 32) globalVirtualMathNotesFolder];
  v3 = [(ICVirtualSmartFolderItemIdentifier *)v2 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes" parentIdentifier:v5];
  v4 = globalVirtualRecentlyDeletedMathNotesFolder_identifier;
  globalVirtualRecentlyDeletedMathNotesFolder_identifier = v3;
}

void __45__ICAccount_UI__globalVirtualCallNotesFolder__block_invoke()
{
  v0 = [ICVirtualSmartFolderItemIdentifier alloc];
  v3 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
  v1 = [(ICVirtualSmartFolderItemIdentifier *)v0 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes" parentIdentifier:v3];
  v2 = globalVirtualCallNotesFolder_identifier;
  globalVirtualCallNotesFolder_identifier = v1;
}

@end