@interface ICAccount(UI)
+ (id)globalVirtualCallNotesFolder;
+ (id)globalVirtualMathNotesFolder;
+ (id)globalVirtualRecentlyDeletedMathNotesFolder;
+ (id)globalVirtualSharedWithYouFolder;
+ (id)globalVirtualSystemPaperFolder;
+ (id)localizedLocalAccountNameMidSentence:()UI;
- (ICVirtualSmartFolderItemIdentifier)virtualCallNotesFolder;
- (ICVirtualSmartFolderItemIdentifier)virtualMathNotesFolder;
- (ICVirtualSmartFolderItemIdentifier)virtualSystemPaperFolder;
@end

@implementation ICAccount(UI)

+ (id)globalVirtualSystemPaperFolder
{
  if (globalVirtualSystemPaperFolder_once != -1)
  {
    +[ICAccount(UI) globalVirtualSystemPaperFolder];
  }

  v1 = globalVirtualSystemPaperFolder_identifier;

  return v1;
}

+ (id)globalVirtualMathNotesFolder
{
  if (globalVirtualMathNotesFolder_once != -1)
  {
    +[ICAccount(UI) globalVirtualMathNotesFolder];
  }

  v1 = globalVirtualMathNotesFolder_identifier;

  return v1;
}

+ (id)localizedLocalAccountNameMidSentence:()UI
{
  v8 = a4 & 1;
  Helper_x8__OBJC_CLASS___ACUILocalization = gotLoadHelper_x8__OBJC_CLASS___ACUILocalization(self);
  v6 = [*(v5 + 2272) localizedTitleForLocalSourceOfDataclass:*MEMORY[0x1E69596C0] usedAtBeginningOfSentence:{(v8 & 1) == 0, Helper_x8__OBJC_CLASS___ACUILocalization}];

  return v6;
}

+ (id)globalVirtualSharedWithYouFolder
{
  if (globalVirtualSharedWithYouFolder_once != -1)
  {
    +[ICAccount(UI) globalVirtualSharedWithYouFolder];
  }

  v1 = globalVirtualSharedWithYouFolder_identifier;

  return v1;
}

+ (id)globalVirtualRecentlyDeletedMathNotesFolder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ICAccount_UI__globalVirtualRecentlyDeletedMathNotesFolder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (globalVirtualRecentlyDeletedMathNotesFolder_once != -1)
  {
    dispatch_once(&globalVirtualRecentlyDeletedMathNotesFolder_once, block);
  }

  v1 = globalVirtualRecentlyDeletedMathNotesFolder_identifier;

  return v1;
}

+ (id)globalVirtualCallNotesFolder
{
  if (globalVirtualCallNotesFolder_once != -1)
  {
    +[ICAccount(UI) globalVirtualCallNotesFolder];
  }

  v1 = globalVirtualCallNotesFolder_identifier;

  return v1;
}

- (ICVirtualSmartFolderItemIdentifier)virtualSystemPaperFolder
{
  v2 = objc_getAssociatedObject(self, &ICAccountVirtualSystemPaperFolderIdentifier);
  if (!v2)
  {
    v3 = [ICVirtualSmartFolderItemIdentifier alloc];
    v4 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
    objectID = [self objectID];
    v2 = [(ICVirtualSmartFolderItemIdentifier *)v3 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeSystemPaper" parentIdentifier:v4 accountObjectID:objectID];

    objc_setAssociatedObject(self, &ICAccountVirtualSystemPaperFolderIdentifier, v2, 1);
  }

  return v2;
}

- (ICVirtualSmartFolderItemIdentifier)virtualMathNotesFolder
{
  v2 = objc_getAssociatedObject(self, &ICAccountVirtualMathNotesFolderIdentifier);
  if (!v2)
  {
    v3 = [ICVirtualSmartFolderItemIdentifier alloc];
    v4 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
    objectID = [self objectID];
    v2 = [(ICVirtualSmartFolderItemIdentifier *)v3 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeMathNotes" parentIdentifier:v4 accountObjectID:objectID];

    objc_setAssociatedObject(self, &ICAccountVirtualMathNotesFolderIdentifier, v2, 1);
  }

  return v2;
}

- (ICVirtualSmartFolderItemIdentifier)virtualCallNotesFolder
{
  v2 = objc_getAssociatedObject(self, &ICAccountVirtualCallNotesFolderIdentifier);
  if (!v2)
  {
    v3 = [ICVirtualSmartFolderItemIdentifier alloc];
    v4 = +[ICFolderListSectionIdentifier systemSectionIdentifier];
    objectID = [self objectID];
    v2 = [(ICVirtualSmartFolderItemIdentifier *)v3 initWithType:@"ICVirtualSmartFolderItemIdentifierTypeCallNotes" parentIdentifier:v4 accountObjectID:objectID];

    objc_setAssociatedObject(self, &ICAccountVirtualCallNotesFolderIdentifier, v2, 1);
  }

  return v2;
}

@end