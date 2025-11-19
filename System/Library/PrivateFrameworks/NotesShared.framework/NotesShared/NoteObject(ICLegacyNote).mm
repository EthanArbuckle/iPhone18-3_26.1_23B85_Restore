@interface NoteObject(ICLegacyNote)
- (id)account;
- (id)createAttachmentWithName:()ICLegacyNote;
@end

@implementation NoteObject(ICLegacyNote)

- (id)account
{
  v1 = [a1 folder];
  v2 = [v1 account];

  return v2;
}

- (id)createAttachmentWithName:()ICLegacyNote
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = [v7 stringByAppendingString:@"@mobilenotes.apple.com"];

  v9 = MEMORY[0x277D35930];
  v10 = [a1 managedObjectContext];
  v11 = [v9 newlyAddedAttachmentInContext:v10];

  [v11 setNote:a1];
  [v11 setFilename:v5];

  [v11 setContentID:v8];

  return v11;
}

@end