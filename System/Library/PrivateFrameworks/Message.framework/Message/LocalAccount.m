@interface LocalAccount
+ (LocalAccount)localAccount;
- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7;
- (id)_infoForMatchingURL:(id)a3;
- (id)legacySQLExpressionToMatchAllMailboxes;
- (id)mailboxUidForFileSystemPath:(id)a3;
- (void)_synchronouslyLoadListingForParent:(id)a3;
- (void)resetSpecialMailboxes;
@end

@implementation LocalAccount

+ (LocalAccount)localAccount
{
  +[MailAccount lockMailAccount];
  v3 = localAccount_sLocalAccount;
  if (!localAccount_sLocalAccount)
  {
    v4 = [a1 defaultAccountDirectory];
    v5 = [v4 stringByAppendingPathComponent:@"LocalAccountId"];

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

- (void)_synchronouslyLoadListingForParent:(id)a3
{
  v4 = a3;
  v5 = self;
  v12 = v4;
  v6 = [v12 fullPath];
  v7 = [v6 mutableCopyWithZone:0];

  if (v7)
  {
    if ([v12 isStore])
    {
      v8 = [(LocalAccount *)v5 mailboxPathExtension];
      v9 = [v7 rangeOfString:v8 options:12];
      v11 = v10;

      if (v9 >= 2 && v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 deleteCharactersInRange:{v9 - 1, v11 + 1}];
      }
    }

    [(MailAccount *)v5 _loadEntriesFromFileSystemPath:v7 parent:v12];
  }

  else
  {
  }
}

- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7
{
  v10.receiver = self;
  v10.super_class = LocalAccount;
  v7 = [(MailAccount *)&v10 _copyMailboxUidWithParent:a3 name:a4 attributes:a5 existingMailboxUid:a6 dictionary:a7];
  v8 = v7;
  if (v7 && ([v7 isContainer] & 1) == 0)
  {
    [v8 setAttributes:{objc_msgSend(v8, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
  }

  return v8;
}

- (BOOL)_setChildren:(id)a3 forMailboxUid:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = LocalAccount;
  v8 = [(MailAccount *)&v10 _setChildren:v6 forMailboxUid:v7];
  if (([v7 isContainer] & 1) == 0 && objc_msgSend(v6, "count"))
  {
    [v7 setAttributes:{objc_msgSend(v7, "attributes") & 0xFFFFFFFFFFFFFFFELL}];
  }

  return v8;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 childWithName:v9];
  v12 = [v8 name];
  if ([v9 mf_isSubdirectoryOfPath:v12])
  {
    goto LABEL_7;
  }

  if (v11)
  {
    v13 = [v11 isStore];
    if (v13 == [v8 isStore] || (v14 = objc_msgSend(v11, "isContainer"), v14 == objc_msgSend(v8, "isContainer")))
    {
      v16 = +[MFActivityMonitor currentMonitor];
      v17 = MEMORY[0x1E696AEC0];
      v18 = MFLookupLocalizedString(@"MAILBOX_EXISTS_FORMAT", @"The mailbox “%@” already exists.", @"Delayed");
      v19 = [v11 fullPath];
      v20 = [v17 stringWithFormat:v18, v19];
      v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v20];
      [v16 setError:v21];

LABEL_7:
      v15 = 0;
      goto LABEL_8;
    }
  }

  v23.receiver = self;
  v23.super_class = LocalAccount;
  v15 = [(MailAccount *)&v23 renameMailbox:v8 newName:v9 parent:v10];
LABEL_8:

  return v15;
}

- (id)mailboxUidForFileSystemPath:(id)a3
{
  v4 = a3;
  v5 = [v4 pathExtension];
  v14 = -86;
  v6 = [v4 mf_stringByExpandingTildeWithSharedResourcesDirectoryInPath];

  if (![v5 isEqualToString:@"mbox"])
  {
    goto LABEL_8;
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v7 fileExistsAtPath:v6 isDirectory:&v14])
  {
    v8 = v14;

    if (v8 == 1)
    {
      v9 = [mailboxUidForFileSystemPath___rootlessMailboxRoot childWithName:v6];
      if (v9)
      {
        goto LABEL_11;
      }

      v9 = [objc_allocWithZone(_MFRootlessMailboxUid) initWithName:v6 attributes:1 forAccount:0 extraAttributes:0];
      [v9 setMailboxType:-100];
      v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      if (!mailboxUidForFileSystemPath___rootlessMailboxRoot)
      {
        v11 = [[MFMailboxUid alloc] initWithAccount:self];
        v12 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
        mailboxUidForFileSystemPath___rootlessMailboxRoot = v11;

        v10 = mailboxUidForFileSystemPath___rootlessMailboxRoot;
      }

      v7 = [v10 mutableCopyOfChildren];
      [v7 addObject:v9];
      [mailboxUidForFileSystemPath___rootlessMailboxRoot setChildren:v7];
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

- (id)_infoForMatchingURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [v4 resourceSpecifier];
  v7 = [v6 stringByRemovingPercentEncoding];

  [v5 setObject:self forKey:@"Account"];
  v9 = [v7 rangeOfString:@"/" options:8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v7 substringWithRange:{v9 + v8, objc_msgSend(v7, "length") - (v9 + v8)}];

    v7 = v10;
  }

  if (v7 && ([v7 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    [v5 setObject:v7 forKey:@"RelativePath"];
  }

  return v5;
}

@end