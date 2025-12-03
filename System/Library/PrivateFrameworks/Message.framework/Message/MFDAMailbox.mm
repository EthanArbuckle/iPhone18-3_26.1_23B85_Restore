@interface MFDAMailbox
- (MFDAMailbox)initWithName:(id)name attributes:(unint64_t)attributes account:(id)account folderID:(id)d;
- (NSString)folderID;
- (id)URLWithAccount:(id)account;
- (id)_folderID;
- (id)_privacySafeDescription;
- (id)dictionaryRepresentation;
- (id)displayName;
- (void)didChangeUserInfo;
- (void)setFolderID:(id)d;
@end

@implementation MFDAMailbox

- (MFDAMailbox)initWithName:(id)name attributes:(unint64_t)attributes account:(id)account folderID:(id)d
{
  nameCopy = name;
  accountCopy = account;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = MFDAMailbox;
  v13 = [(MFMailboxUid *)&v17 initWithName:nameCopy attributes:attributes forAccount:accountCopy extraAttributes:0];
  if (v13)
  {
    v14 = [dCopy copy];
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
  _folderID = [(MFDAMailbox *)self _folderID];
  if (_folderID)
  {
    [(MFMailboxUid *)self setUserInfoObject:_folderID forKey:@"DAMailboxUid"];
  }
}

- (void)setFolderID:(id)d
{
  dCopy = d;
  [(MFDAMailbox *)self mf_lock];
  v4 = [dCopy copy];
  folderID = self->_folderID;
  self->_folderID = v4;

  [(MFDAMailbox *)self mf_unlock];
  if (dCopy)
  {
    [(MFMailboxUid *)self setUserInfoObject:dCopy forKey:@"DAMailboxUid"];
    [(MFMailboxUid *)self flushCriteria];
  }
}

- (NSString)folderID
{
  _folderID = [(MFMailboxUid *)self userInfoObjectForKey:@"DAMailboxUid"];
  if (!_folderID)
  {
    _folderID = [(MFDAMailbox *)self _folderID];
  }

  return _folderID;
}

- (id)_folderID
{
  [(MFDAMailbox *)self mf_lock];
  v3 = self->_folderID;
  [(MFDAMailbox *)self mf_unlock];

  return v3;
}

- (id)URLWithAccount:(id)account
{
  accountCopy = account;
  uniqueID = [accountCopy uniqueID];
  folderID = [(MFDAMailbox *)self folderID];
  v7 = [uniqueID stringByAppendingPathComponent:folderID];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{accountCopy, @"Account", v7, @"RelativePath", 0}];
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
  displayName = [(MFMailboxUid *)&v9 displayName];
  if ([displayName isEqualToString:@"70FB9178-576E-4CAA-A08E-F68D57BFD01E"])
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [(MFMailboxUid *)self ef_publicDescription];
      *buf = 136315394;
      v11 = "[MFDAMailbox displayName]";
      v12 = 2114;
      v13 = ef_publicDescription;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "%s [10463402] fixing bogus EAS inbox name for %{public}@", buf, 0x16u);
    }

    v6 = MFLookupLocalizedString(@"INBOX_SPECIAL_MAILBOX_NAME", @"Inbox", @"Message");

    displayName = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return displayName;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = MFDAMailbox;
  mutableDictionaryRepresentation = [(MFMailboxUid *)&v7 mutableDictionaryRepresentation];
  v4 = mutableDictionaryRepresentation;
  folderID = self->_folderID;
  if (folderID)
  {
    [mutableDictionaryRepresentation setObject:folderID forKeyedSubscript:@"DAFolderID"];
  }

  return v4;
}

- (id)_privacySafeDescription
{
  v7.receiver = self;
  v7.super_class = MFDAMailbox;
  _privacySafeDescription = [(MFMailboxUid *)&v7 _privacySafeDescription];
  folderID = [(MFDAMailbox *)self folderID];
  v5 = [_privacySafeDescription stringByAppendingFormat:@" folderID:%@", folderID];

  return v5;
}

@end