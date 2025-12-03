@interface LocalAccount
+ (id)localAccount;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (LocalAccount)initWithLibrary:(id)library persistentAccount:(id)account;
- (id)_infoForMatchingURL:(id)l;
- (id)mailboxUidForFileSystemPath:(id)path;
- (void)_synchronouslyLoadListingForParent:(id)parent;
- (void)resetSpecialMailboxes;
@end

@implementation LocalAccount

+ (id)localAccount
{
  +[MailAccount mf_lock];
  if (!localAccount)
  {
    localAccount = -[MailAccount initWithPath:]([LocalAccount alloc], "initWithPath:", [objc_msgSend(self "defaultAccountDirectory")]);
  }

  +[MailAccount mf_unlock];
  return localAccount;
}

- (LocalAccount)initWithLibrary:(id)library persistentAccount:(id)account
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
      v8 = [(MailAccount *)&v11 initWithLibrary:library persistentAccount:account];
      localAccount = v8;
    }

    +[MailAccount mf_unlock];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = LocalAccount;
    return [(MailAccount *)&v10 initWithLibrary:library persistentAccount:account];
  }

  return v8;
}

- (void)_synchronouslyLoadListingForParent:(id)parent
{
  v7 = [objc_msgSend(parent "fullPath")];
  if (v7)
  {
    if ([parent isStore])
    {
      v5 = [v7 rangeOfString:-[LocalAccount mailboxPathExtension](self options:{"mailboxPathExtension"), 12}];
      if (v5 >= 2 && v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 deleteCharactersInRange:{v5 - 1, v6 + 1}];
      }
    }

    [(MailAccount *)self _loadEntriesFromFileSystemPath:v7 parent:parent];
  }
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  v8.receiver = self;
  v8.super_class = LocalAccount;
  v6 = [MailAccount _setChildren:sel__setChildren_forMailboxUid_ forMailboxUid:?];
  if (([uid isContainer] & 1) == 0 && objc_msgSend(children, "count"))
  {
    [uid setAttributes:{objc_msgSend(uid, "attributes") & 0xFFFFFFFELL}];
  }

  return v6;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  v9 = [parent childWithName:name];
  if (([name mf_isSubdirectoryOfPath:{objc_msgSend(mailbox, "name")}] & 1) == 0)
  {
    if (!v9 || (v10 = [v9 isStore], v10 != objc_msgSend(mailbox, "isStore")) && (v11 = objc_msgSend(v9, "isContainer"), v11 != objc_msgSend(mailbox, "isContainer")))
    {
      v14.receiver = self;
      v14.super_class = LocalAccount;
      return [(MailAccount *)&v14 renameMailbox:mailbox newName:name parent:parent];
    }

    v13 = +[MFActivityMonitor currentMonitor];
    [v13 setError:{+[MFError errorWithDomain:code:localizedDescription:](MFError, "errorWithDomain:code:localizedDescription:", @"MFMessageErrorDomain", 1030, objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", MFLookupLocalizedString(@"MAILBOX_EXISTS_FORMAT", @"The mailbox “%@” already exists.", @"Delayed", objc_msgSend(v9, "tildeAbbreviatedPath")))}];
  }

  return 0;
}

- (id)mailboxUidForFileSystemPath:(id)path
{
  pathExtension = [path pathExtension];
  mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [path mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  if (![pathExtension isEqualToString:@"mbox"])
  {
    return 0;
  }

  v11 = 0;
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] || v11 != 1)
  {
    return 0;
  }

  v7 = [mailboxUidForFileSystemPath___rootlessMailboxRoot childWithName:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
  if (!v7)
  {
    v7 = [objc_allocWithZone(_MFRootlessMailboxUid) initWithName:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath attributes:1 forAccount:0 extraAttributes:0];
    [v7 setType:4294967196];
    v8 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
    if (!mailboxUidForFileSystemPath___rootlessMailboxRoot)
    {
      v8 = [[MFMailboxUid alloc] initWithAccount:self];
      mailboxUidForFileSystemPath___rootlessMailboxRoot = v8;
    }

    mutableCopyOfChildren = [(MFMailboxUid *)v8 mutableCopyOfChildren];
    [mutableCopyOfChildren addObject:v7];
    [mailboxUidForFileSystemPath___rootlessMailboxRoot setChildren:mutableCopyOfChildren];
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

- (id)_infoForMatchingURL:(id)l
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [objc_msgSend(l "resourceSpecifier")];
  [dictionary setObject:self forKey:@"Account"];
  v7 = [v6 rangeOfString:@"/" options:8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v6 substringWithRange:{v7 + v8, objc_msgSend(v6, "length") - (v7 + v8)}];
  }

  if (v6 && ([v6 isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    [dictionary setObject:v6 forKey:@"RelativePath"];
  }

  return dictionary;
}

@end