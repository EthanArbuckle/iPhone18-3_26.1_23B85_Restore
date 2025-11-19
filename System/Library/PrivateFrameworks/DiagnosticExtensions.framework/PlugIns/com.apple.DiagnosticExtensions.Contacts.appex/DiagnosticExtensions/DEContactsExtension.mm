@interface DEContactsExtension
- (id)attachmentsForParameters:(id)a3;
@end

@implementation DEContactsExtension

- (id)attachmentsForParameters:(id)a3
{
  v4 = objc_opt_new();
  v5 = +[NSFileManager defaultManager];
  v6 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/AddressBook/AddressBook.sqlitedb"];
  [v4 addObject:v6];

  v7 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/AddressBook/AddressBook.sqlitedb-wal"];
  [v4 addObject:v7];

  v8 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/AddressBook/AddressBook.sqlitedb-shm"];
  [v4 addObject:v8];

  v9 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/AddressBook/AddressBookImages.sqlitedb"];
  [v4 addObject:v9];

  v10 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/AddressBook/AddressBookImages.sqlitedb-wal"];
  [v4 addObject:v10];

  v11 = [DEAttachmentItem attachmentWithPath:@"/var/mobile/Library/AddressBook/AddressBookImages.sqlitedb-shm"];
  [v4 addObject:v11];

  if ([v5 fileExistsAtPath:@"/tmp/AddressBook"])
  {
    v12 = [NSURL fileURLWithPath:@"/tmp/AddressBook"];
    v13 = [(DEContactsExtension *)self filesInDir:v12 matchingPattern:0 excludingPattern:0];
    [v4 addObjectsFromArray:v13];
  }

  return v4;
}

@end