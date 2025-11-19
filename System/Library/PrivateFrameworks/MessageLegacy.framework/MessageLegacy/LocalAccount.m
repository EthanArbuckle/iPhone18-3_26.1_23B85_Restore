@interface LocalAccount
+ (id)localAccount;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (LocalAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (id)_infoForMatchingURL:(id)a3;
- (id)mailboxUidForFileSystemPath:(id)a3;
- (void)_synchronouslyLoadListingForParent:(id)a3;
- (void)resetSpecialMailboxes;
@end

@implementation LocalAccount

+ (id)localAccount
{
  +[MailAccount mf_lock];
  if (!localAccount)
  {
    localAccount = -[MailAccount initWithPath:]([LocalAccount alloc], "initWithPath:", [objc_msgSend(a1 "defaultAccountDirectory")]);
  }

  +[MailAccount mf_unlock];
  return localAccount;
}

- (LocalAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    +[MailAccount mf_lock];
    if (localAccount)
    {
      [(MailAccount *)self dealloc];
      v8 = localAccount;
    }

    else
    {
      v11.receiver = self;
      v11.super_class = LocalAccount;
      v8 = [(MailAccount *)&v11 initWithLibrary:a3 persistentAccount:a4];
      localAccount = v8;
    }

    +[MailAccount mf_unlock];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LocalAccount;
    return [(MailAccount *)&v10 initWithLibrary:a3 persistentAccount:a4];
  }

  return v8;
}

- (void)_synchronouslyLoadListingForParent:(id)a3
{
  v7 = [objc_msgSend(a3 "fullPath")];
  if (v7)
  {
    if ([a3 isStore])
    {
      v5 = [v7 rangeOfString:-[LocalAccount mailboxPathExtension](self options:{"mailboxPathExtension"), 12}];
      if (v5 >= 2 && v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 deleteCharactersInRange:{v5 - 1, v6 + 1}];
      }
    }

    [(MailAccount *)self _loadEntriesFromFileSystemPath:v7 parent:a3];
  }
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v8.receiver = self;
  v8.super_class = LocalAccount;
  v6 = [MailAccount _setChildren:sel__setChildren_forMailboxUid_ forMailboxUid:?];
  if (([a4 isContainer] & 1) == 0 && objc_msgSend(a3, "count"))
  {
    [a4 setAttributes:{objc_msgSend(a4, "attributes") & 0xFFFFFFFELL}];
  }

  return v6;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v9 = [a5 childWithName:a4];
  if (([a4 mf_isSubdirectoryOfPath:{objc_msgSend(a3, "name")}] & 1) == 0)
  {
    if (!v9 || (v10 = [v9 isStore], v10 != objc_msgSend(a3, "isStore")) && (v11 = objc_msgSend(v9, "isContainer"), v11 != objc_msgSend(a3, "isContainer")))
    {
      v14.receiver = self;
      v14.super_class = LocalAccount;
      return [(MailAccount *)&v14 renameMailbox:a3 newName:a4 parent:a5];
    }

    v13 = +[MFActivityMonitor currentMonitor];
    [v13 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1030, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", MFLookupLocalizedString(@"MAILBOX_EXISTS_FORMAT", @"The mailbox “%@” already exists.", @"Delayed", objc_msgSend(v9, "tildeAbbreviatedPath")))}];
  }

  return 0;
}

- (id)mailboxUidForFileSystemPath:(id)a3
{
  v5 = [a3 pathExtension];
  v6 = [a3 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  if (![v5 isEqualToString:@"mbox"])
  {
    return 0;
  }

  v11 = 0;
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] || v11 != 1)
  {
    return 0;
  }

  v7 = [mailboxUidForFileSystemPath___rootlessMailboxRoot childWithName:v6];
  if (!v7)
  {
    v7 = [objc_allocWithZone(_MFRootlessMailboxUid) initWithName:v6 attributes:1 forAccount:0 extraAttributes:0];
    [v7 setType:4294967196];
    v8 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
    if (!mailboxUidForFileSystemPath___rootlessMailboxRoot)
    {
      v8 = [[MFMailboxUid alloc] initWithAccount:self];
      mailboxUidForFileSystemPath___rootlessMailboxRoot = v8;
    }

    v9 = [(MFMailboxUid *)v8 mutableCopyOfChildren];
    [v9 addObject:v7];
    [mailboxUidForFileSystemPath___rootlessMailboxRoot setChildren:v9];
  }

  return v7;
}

- (void)resetSpecialMailboxes
{
  v3.receiver = self;
  v3.super_class = LocalAccount;
  [(MailAccount *)&v3 resetSpecialMailboxes];
  [(LocalAccount *)self transientDraftsFolderShouldCreate:0];
}

- (id)_infoForMatchingURL:(id)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [objc_msgSend(a3 "resourceSpecifier")];
  [v5 setObject:self forKey:@"Account"];
  v7 = [v6 rangeOfString:@"/" options:8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v6 substringWithRange:{v7 + v8, objc_msgSend(v6, "length") - (v7 + v8)}];
  }

  if (v6 && ([v6 isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    [v5 setObject:v6 forKey:@"RelativePath"];
  }

  return v5;
}

@end