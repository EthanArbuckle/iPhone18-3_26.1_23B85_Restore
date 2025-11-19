@interface MFDAMailbox
- (MFDAMailbox)initWithName:(id)a3 attributes:(unint64_t)a4 account:(id)a5 folderID:(id)a6;
- (NSString)folderID;
- (id)URLWithAccount:(id)a3;
- (id)_folderID;
- (id)_privacySafeDescription;
- (id)dictionaryRepresentation;
- (id)displayName;
- (void)didChangeUserInfo;
- (void)setFolderID:(id)a3;
@end

@implementation MFDAMailbox

- (MFDAMailbox)initWithName:(id)a3 attributes:(unint64_t)a4 account:(id)a5 folderID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = MFDAMailbox;
  v13 = [(MFMailboxUid *)&v17 initWithName:v10 attributes:a4 forAccount:v11 extraAttributes:0];
  if (v13)
  {
    v14 = [v12 copy];
    folderID = v13->_folderID;
    v13->_folderID = v14;
  }

  return v13;
}

- (void)didChangeUserInfo
{
  v4.receiver = self;
  v4.super_class = MFDAMailbox;
  [(MFMailboxUid *)&v4 didChangeUserInfo];
  v3 = [(MFDAMailbox *)self _folderID];
  if (v3)
  {
    [(MFMailboxUid *)self setUserInfoObject:v3 forKey:@"DAMailboxUid"];
  }
}

- (void)setFolderID:(id)a3
{
  v6 = a3;
  [(MFDAMailbox *)self mf_lock];
  v4 = [v6 copy];
  folderID = self->_folderID;
  self->_folderID = v4;

  [(MFDAMailbox *)self mf_unlock];
  if (v6)
  {
    [(MFMailboxUid *)self setUserInfoObject:v6 forKey:@"DAMailboxUid"];
    [(MFMailboxUid *)self flushCriteria];
  }
}

- (NSString)folderID
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:@"DAMailboxUid"];
  if (!v3)
  {
    v3 = [(MFDAMailbox *)self _folderID];
  }

  return v3;
}

- (id)_folderID
{
  [(MFDAMailbox *)self mf_lock];
  v3 = self->_folderID;
  [(MFDAMailbox *)self mf_unlock];

  return v3;
}

- (id)URLWithAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueID];
  v6 = [(MFDAMailbox *)self folderID];
  v7 = [v5 stringByAppendingPathComponent:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"Account", v7, @"RelativePath", 0}];
    v9 = [MailAccount URLForInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)displayName
{
  v14 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = MFDAMailbox;
  v3 = [(MFMailboxUid *)&v9 displayName];
  if ([v3 isEqualToString:@"70FB9178-576E-4CAA-A08E-F68D57BFD01E"])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MFMailboxUid *)self ef_publicDescription];
      *buf = 136315394;
      v11 = "[MFDAMailbox displayName]";
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "%s [10463402] fixing bogus EAS inbox name for %{public}@", buf, 0x16u);
    }

    v6 = MFLookupLocalizedString(@"INBOX_SPECIAL_MAILBOX_NAME", @"Inbox", @"Message");

    v3 = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = MFDAMailbox;
  v3 = [(MFMailboxUid *)&v7 mutableDictionaryRepresentation];
  v4 = v3;
  folderID = self->_folderID;
  if (folderID)
  {
    [v3 setObject:folderID forKeyedSubscript:@"DAFolderID"];
  }

  return v4;
}

- (id)_privacySafeDescription
{
  v7.receiver = self;
  v7.super_class = MFDAMailbox;
  v3 = [(MFMailboxUid *)&v7 _privacySafeDescription];
  v4 = [(MFDAMailbox *)self folderID];
  v5 = [v3 stringByAppendingFormat:@" folderID:%@", v4];

  return v5;
}

@end