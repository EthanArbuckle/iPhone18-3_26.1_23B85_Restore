@interface LocalAccount
+ (LocalAccount)localAccount;
- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent;
- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary;
- (id)_infoForMatchingURL:(id)l;
- (id)legacySQLExpressionToMatchAllMailboxes;
- (id)mailboxUidForFileSystemPath:(id)path;
- (void)_synchronouslyLoadListingForParent:(id)parent;
- (void)resetSpecialMailboxes;
@end

@implementation LocalAccount

+ (LocalAccount)localAccount
{
  +[MailAccount lockMailAccount];
  v3 = localAccount_sLocalAccount;
  if (!localAccount_sLocalAccount)
  {
    defaultAccountDirectory = [self defaultAccountDirectory];
    v5 = [defaultAccountDirectory stringByAppendingPathComponent:@"LocalAccountId"];

    v6 = [(MailAccount *)[LocalAccount alloc] initWithPath:v5];
    v7 = localAccount_sLocalAccount;
    localAccount_sLocalAccount = v6;

    if (+[MFMailMessageLibrary canUsePersistence])
    {
      v8 = localAccount_sLocalAccount;
      v9 = +[MFMailMessageLibrary defaultInstance];
      [v8 setLibrary:v9];
    }

    v3 = localAccount_sLocalAccount;
  }

  v10 = v3;
  +[MailAccount unlockMailAccount];

  return v10;
}

- (id)legacySQLExpressionToMatchAllMailboxes
{
  v2 = [objc_alloc(MEMORY[0x1E699B8C8]) initWithName:@"url"];
  v3 = [v2 beginsWith:@"local:" caseSensitive:0];

  return v3;
}

- (void)_synchronouslyLoadListingForParent:(id)parent
{
  parentCopy = parent;
  selfCopy = self;
  v12 = parentCopy;
  fullPath = [v12 fullPath];
  v7 = [fullPath mutableCopyWithZone:0];

  if (v7)
  {
    if ([v12 isStore])
    {
      mailboxPathExtension = [(LocalAccount *)selfCopy mailboxPathExtension];
      v9 = [v7 rangeOfString:mailboxPathExtension options:12];
      v11 = v10;

      if (v9 >= 2 && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 deleteCharactersInRange:{v9 - 1, v11 + 1}];
      }
    }

    [(MailAccount *)selfCopy _loadEntriesFromFileSystemPath:v7 parent:v12];
  }

  else
  {
  }
}

- (id)_copyMailboxUidWithParent:(id)parent name:(id)name attributes:(unint64_t)attributes existingMailboxUid:(id)uid dictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = LocalAccount;
  v7 = [(MailAccount *)&v10 _copyMailboxUidWithParent:parent name:name attributes:attributes existingMailboxUid:uid dictionary:dictionary];
  v8 = v7;
  if (v7 && ([v7 isContainer] & 1) == 0)
  {
    [v8 setAttributes:{objc_msgSend(v8, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
  }

  return v8;
}

- (BOOL)_setChildren:(id)children forMailboxUid:(id)uid
{
  childrenCopy = children;
  uidCopy = uid;
  v10.receiver = self;
  v10.super_class = LocalAccount;
  v8 = [(MailAccount *)&v10 _setChildren:childrenCopy forMailboxUid:uidCopy];
  if (([uidCopy isContainer] & 1) == 0 && objc_msgSend(childrenCopy, "count"))
  {
    [uidCopy setAttributes:{objc_msgSend(uidCopy, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
  }

  return v8;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name parent:(id)parent
{
  mailboxCopy = mailbox;
  nameCopy = name;
  parentCopy = parent;
  v11 = [parentCopy childWithName:nameCopy];
  name = [mailboxCopy name];
  if ([nameCopy mf_isSubdirectoryOfPath:name])
  {
    goto LABEL_7;
  }

  if (v11)
  {
    isStore = [v11 isStore];
    if (isStore == [mailboxCopy isStore] || (v14 = objc_msgSend(v11, "isContainer"), v14 == objc_msgSend(mailboxCopy, "isContainer")))
    {
      v16 = +[MFActivityMonitor currentMonitor];
      v17 = MEMORY[0x1E696AEC0];
      v18 = MFLookupLocalizedString(@"MAILBOX_EXISTS_FORMAT", @"The mailbox “%@” already exists.", @"Delayed");
      fullPath = [v11 fullPath];
      v20 = [v17 stringWithFormat:v18, fullPath];
      v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v20];
      [v16 setError:v21];

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  v23.receiver = self;
  v23.super_class = LocalAccount;
  v15 = [(MailAccount *)&v23 renameMailbox:mailboxCopy newName:nameCopy parent:parentCopy];
LABEL_8:

  return v15;
}

- (id)mailboxUidForFileSystemPath:(id)path
{
  pathCopy = path;
  pathExtension = [pathCopy pathExtension];
  v14 = -86;
  mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath = [pathCopy mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];

  if (![pathExtension isEqualToString:@"mbox"])
  {
    goto LABEL_8;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath isDirectory:&v14])
  {
    v8 = v14;

    if (v8 == 1)
    {
      v9 = [mailboxUidForFileSystemPath___rootlessMailboxRoot childWithName:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];
      if (v9)
      {
        goto LABEL_11;
      }

      v9 = [objc_allocWithZone(_MFRootlessMailboxUid) initWithName:mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath attributes:1 forAccount:0 extraAttributes:0];
      [v9 setMailboxType:-100];
      v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      if (!mailboxUidForFileSystemPath___rootlessMailboxRoot)
      {
        v11 = [[MFMailboxUid alloc] initWithAccount:self];
        v12 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
        mailboxUidForFileSystemPath___rootlessMailboxRoot = v11;

        v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      }

      defaultManager = [v10 mutableCopyOfChildren];
      [defaultManager addObject:v9];
      [mailboxUidForFileSystemPath___rootlessMailboxRoot setChildren:defaultManager];
      goto LABEL_10;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_10:

LABEL_11:

  return v9;
}

- (void)resetSpecialMailboxes
{
  v4.receiver = self;
  v4.super_class = LocalAccount;
  [(MailAccount *)&v4 resetSpecialMailboxes];
  v3 = [(LocalAccount *)self transientDraftsFolderShouldCreate:0];
}

- (id)_infoForMatchingURL:(id)l
{
  lCopy = l;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  resourceSpecifier = [lCopy resourceSpecifier];
  stringByRemovingPercentEncoding = [resourceSpecifier stringByRemovingPercentEncoding];

  [dictionary setObject:self forKey:@"Account"];
  v9 = [stringByRemovingPercentEncoding rangeOfString:@"/" options:8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [stringByRemovingPercentEncoding substringWithRange:{v9 + v8, objc_msgSend(stringByRemovingPercentEncoding, "length") - (v9 + v8)}];

    stringByRemovingPercentEncoding = v10;
  }

  if (stringByRemovingPercentEncoding && ([stringByRemovingPercentEncoding isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    [dictionary setObject:stringByRemovingPercentEncoding forKey:@"RelativePath"];
  }

  return dictionary;
}

@end