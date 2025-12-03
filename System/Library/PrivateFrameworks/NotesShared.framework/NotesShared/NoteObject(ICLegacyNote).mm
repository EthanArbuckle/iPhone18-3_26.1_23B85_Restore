@interface NoteObject(ICLegacyNote)
- (id)account;
- (id)createAttachmentWithName:()ICLegacyNote;
@end

@implementation NoteObject(ICLegacyNote)

- (id)account
{
  folder = [self folder];
  account = [folder account];

  return account;
}

- (id)createAttachmentWithName:()ICLegacyNote
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  uUID = [v4 UUID];
  uUIDString = [uUID UUIDString];
  v8 = [uUIDString stringByAppendingString:@"@mobilenotes.apple.com"];

  v9 = MEMORY[0x277D35930];
  managedObjectContext = [self managedObjectContext];
  v11 = [v9 newlyAddedAttachmentInContext:managedObjectContext];

  [v11 setNote:self];
  [v11 setFilename:v5];

  [v11 setContentID:v8];

  return v11;
}

@end