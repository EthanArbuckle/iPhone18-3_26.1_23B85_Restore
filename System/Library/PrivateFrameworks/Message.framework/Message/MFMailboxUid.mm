@interface MFMailboxUid
+ (BOOL)typeIsValidTransferDestination:(int64_t)destination;
+ (id)defaultScheduler;
+ (id)fileURLForMailboxURL:(id)l;
+ (id)fullPathForAccount:(id)account mailbox:(id)mailbox;
+ (id)log;
+ (id)specialNameForType:(int64_t)type;
- (BOOL)hasChildren;
- (BOOL)isDescendantOfMailbox:(id)mailbox;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNotesMailboxUid;
- (BOOL)isOutgoingMailboxUid;
- (BOOL)isSentMailboxUid;
- (BOOL)isSpecialMailboxUid;
- (BOOL)isStandardizedMailboxUid;
- (BOOL)isValid;
- (BOOL)setChildren:(id)children;
- (BOOL)shouldRestoreMessagesAfterFailedDelete;
- (BOOL)userInfoBoolForKey:(id)key;
- (EMMailboxObjectID)objectID;
- (MFInvocationQueue)attachmentDownloadQueue;
- (MFMailboxUid)init;
- (MFMailboxUid)initWithAccount:(id)account;
- (MFMailboxUid)initWithName:(id)name attributes:(unint64_t)attributes forAccount:(id)account extraAttributes:(id)extraAttributes type:(int64_t)type;
- (MFMailboxUserInfo)userInfo;
- (MailAccount)account;
- (NSEnumerator)depthFirstEnumerator;
- (NSString)URLString;
- (NSString)accountRelativePath;
- (NSString)bucketBarConfigurationIdentifier;
- (NSString)debugDescription;
- (NSString)decodedName;
- (NSString)displayName;
- (NSString)ef_publicDescription;
- (NSString)name;
- (NSString)persistentID;
- (NSURL)URL;
- (double)suggestionsLostMessageSearchTimestamp;
- (id)URLStringNonNil;
- (id)URLWithAccount:(id)account;
- (id)_dictionaryRepresentation;
- (id)_initWithName:(id)name attributes:(unint64_t)attributes forAccount:(id)account;
- (id)_mutableChildren;
- (id)_privacySafeDescription;
- (id)accountDisplayName;
- (id)ancestralAccount;
- (id)childAtIndex:(unint64_t)index;
- (id)childWithExtraAttribute:(id)attribute;
- (id)childWithName:(id)name;
- (id)criterion;
- (id)descendantWithExtraAttribute:(id)attribute;
- (id)displayNameUsingSpecialNames;
- (id)fullPath;
- (id)fullPathNonNil;
- (id)mutableCopyOfChildren;
- (id)oldURLString;
- (id)pathComponent;
- (id)pathRelativeToMailbox:(id)mailbox;
- (id)pathRelativeToMailboxForDisplay:(id)display;
- (id)realFullPath;
- (id)redactedName:(id)name;
- (id)representedAccount;
- (id)rootMailbox;
- (id)store;
- (id)topMailbox;
- (id)userInfoFileURL;
- (id)userInfoObjectForKey:(id)key;
- (int64_t)databaseID;
- (int64_t)type;
- (unint64_t)indexOfChild:(id)child;
- (unint64_t)numberOfChildren;
- (unint64_t)numberOfDescendants;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)suggestionsLostMessageSearchResultCount;
- (unint64_t)unreadCount;
- (void)addToPostOrderTraversal:(id)traversal;
- (void)dealloc;
- (void)flushCriteria;
- (void)invalidate;
- (void)removeChild:(id)child;
- (void)setMailboxType:(int64_t)type;
- (void)setName:(id)name;
- (void)setParent:(id)parent;
- (void)setRepresentedAccount:(id)account;
- (void)setUserInfoObject:(id)object forKey:(id)key;
- (void)sortChildren;
- (void)updateMostRecentStatusCount:(unint64_t)count;
- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)count;
@end

@implementation MFMailboxUid

- (int64_t)databaseID
{
  result = self->_mailboxID;
  if (result == *MEMORY[0x1E699A728])
  {
    uRLString = [(MFMailboxUid *)self URLString];
    if ([uRLString length])
    {
      account = [(MFMailboxUid *)self account];
      library = [account library];
      self->_mailboxID = [library mailboxIDForURLString:uRLString];
    }

    return self->_mailboxID;
  }

  return result;
}

- (MFMailboxUid)init
{
  v7.receiver = self;
  v7.super_class = MFMailboxUid;
  v2 = [(MFMailboxUid *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uniqueId = v2->uniqueId;
    v2->uniqueId = uUIDString;

    v2->_mailboxID = *MEMORY[0x1E699A728];
    atomic_store(0, &v2->_type);
    v2->_isSendLaterMailbox = 0;
    v2->_ivarLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (MailAccount)account
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  v3 = rootMailbox;
  if (rootMailbox)
  {
    WeakRetained = objc_loadWeakRetained((rootMailbox + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)pathComponent
{
  if (self)
  {
    os_unfair_lock_lock((self + 132));
    v2 = [*(self + 32) copy];
    os_unfair_lock_unlock((self + 132));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)mutableCopyOfChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children mutableCopy];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)rootMailbox
{
  topMailbox = [(MFMailboxUid *)self topMailbox];
  if ((topMailbox[136] & 0x10) == 0)
  {

    topMailbox = 0;
  }

  return topMailbox;
}

- (BOOL)hasChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = (self->_attributes & 0x10) != 0 || [(NSMutableArray *)self->_children count]!= 0;
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)topMailbox
{
  for (i = self; ; i = v4)
  {
    parent = [(MFMailboxUid *)i parent];

    if (!parent)
    {
      break;
    }

    v4 = parent;
  }

  return i;
}

- (BOOL)isValid
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  v3 = rootMailbox != 0;

  return v3;
}

- (id)fullPathNonNil
{
  fullPath = [(MFMailboxUid *)self fullPath];
  if (!fullPath)
  {
    fullPath = *MEMORY[0x1E695E738];
  }

  return fullPath;
}

- (NSString)accountRelativePath
{
  account = [(MFMailboxUid *)self account];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v5 = _stringByAppendingPathComponents(self, account, 0, &stru_1F273A5E0, _mailboxPathPrefix, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (int64_t)type
{
  mailboxType = [(MFMailboxUid *)self mailboxType];

  return ECMailboxTypeFromMailboxUidType(mailboxType);
}

- (NSString)displayName
{
  [(MFMailboxUid *)self mf_lock];
  displayName = [(MailAccount *)self->_representedAccount displayName];
  [(MFMailboxUid *)self mf_unlock];
  if (displayName && ([displayName isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    displayName2 = displayName;
  }

  else
  {
    account = [(MFMailboxUid *)self account];
    v5 = account;
    if ((self->_attributes & 0x10) != 0)
    {
      displayName2 = [account displayName];
    }

    else
    {
      if (account)
      {
        pathComponent = [(MFMailboxUid *)self pathComponent];
        [v5 _pathComponentForUidName:pathComponent];
      }

      else
      {
        v8 = MEMORY[0x1E696AEC0];
        pathComponent = [(MFMailboxUid *)self pathComponent];
        [v8 stringWithFormat:@"*** Orphaned mailbox %@", pathComponent];
      }
      displayName2 = ;
    }
  }

  return displayName2;
}

- (NSEnumerator)depthFirstEnumerator
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [objc_allocWithZone(_MFMailboxUidEnumerator) initWithMailbox:self];
  [(MFMailboxUid *)self mf_unlock];

  return v3;
}

- (id)ancestralAccount
{
  selfCopy = self;
  do
  {
    if (([(MFMailboxUid *)selfCopy attributes]& 0x10) != 0)
    {
      break;
    }

    parent = [(MFMailboxUid *)selfCopy parent];

    selfCopy = parent;
  }

  while (parent);
  account = [(MFMailboxUid *)selfCopy account];

  return account;
}

- (id)displayNameUsingSpecialNames
{
  mailboxType = [(MFMailboxUid *)self mailboxType];
  account = [(MFMailboxUid *)self account];
  displayName = [account displayNameUsingSpecialNamesForMailboxUid:self];

  if (!displayName)
  {
    displayName = [objc_opt_class() specialNameForType:mailboxType];
    if (!displayName)
    {
      displayName = [(MFMailboxUid *)self displayName];
    }
  }

  return displayName;
}

- (id)URLStringNonNil
{
  uRLString = [(MFMailboxUid *)self URLString];
  if (!uRLString)
  {
    uRLString = *MEMORY[0x1E695E738];
  }

  return uRLString;
}

- (NSURL)URL
{
  account = [(MFMailboxUid *)self account];
  v4 = [(MFMailboxUid *)self URLWithAccount:account];

  return v4;
}

- (NSString)URLString
{
  criterion = [(MFMailboxUid *)self criterion];
  if ([criterion criterionType] == 23)
  {
    expression = [criterion expression];
    v4 = [expression copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)criterion
{
  [(MFMailboxUid *)self mf_lock];
  p_criterion = &self->_criterion;
  criterion = self->_criterion;
  if (criterion)
  {
    v5 = criterion;
  }

  [(MFMailboxUid *)self mf_unlock];
  if (!criterion)
  {
    ancestralAccount = [(MFMailboxUid *)self ancestralAccount];
    v7 = [(MFMailboxUid *)self URLWithAccount:ancestralAccount];
    absoluteString = [v7 absoluteString];

    [(MFMailboxUid *)self mf_lock];
    if (*p_criterion || !absoluteString)
    {
      criterion = *p_criterion;
    }

    else
    {
      v9 = [MFMessageCriterion criterionForMailboxURL:absoluteString];
      objc_storeStrong(&self->_criterion, v9);
      criterion = v9;
    }

    [(MFMailboxUid *)self mf_unlock];
  }

  return criterion;
}

- (NSString)name
{
  if ((self->_attributes & 0x10) != 0)
  {
    account = [(MFMailboxUid *)self account];
    displayName = [account displayName];
    goto LABEL_5;
  }

  account = [(MFWeakReferenceHolder *)self->_parent retainedReference];
  if (account)
  {
    displayName = [(MFMailboxUid *)self pathComponent];
LABEL_5:
    v5 = displayName;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E696AEC0];
  pathComponent = [(MFMailboxUid *)self pathComponent];
  v5 = [v7 stringWithFormat:@"*** Orphaned mailbox %@", pathComponent];

  parent = self->_parent;
  self->_parent = 0;

LABEL_6:

  return v5;
}

- (id)fullPath
{
  v3 = objc_opt_class();
  account = [(MFMailboxUid *)self account];
  v5 = [v3 fullPathForAccount:account mailbox:self];

  return v5;
}

- (id)_mutableChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children mutableCopy];
  [(MFMailboxUid *)self mf_unlock];

  return v3;
}

- (id)representedAccount
{
  [(MFMailboxUid *)self mf_lock];
  representedAccount = self->_representedAccount;
  if (representedAccount)
  {
    account = representedAccount;
  }

  else
  {
    account = [(MFMailboxUid *)self account];
  }

  v5 = account;
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (EMMailboxObjectID)objectID
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_ivarLock);
  objectID = self->_objectID;
  if (objectID)
  {
    v4 = objectID;
    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_ivarLock);
    uRLString = [(MFMailboxUid *)self URLString];
    if (uRLString)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:uRLString];
      v4 = [objc_alloc(MEMORY[0x1E699AD20]) initWithURL:v6];
      os_unfair_lock_lock(&self->_ivarLock);
      objc_storeStrong(&self->_objectID, v4);
      os_unfair_lock_unlock(&self->_ivarLock);
    }

    else
    {
      v7 = +[MFMailboxUid log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        account = [(MFMailboxUid *)self account];
        ef_publicDescription = [account ef_publicDescription];
        ef_publicDescription2 = [(MFMailboxUid *)self ef_publicDescription];
        v13 = 138412546;
        v14 = ef_publicDescription;
        v15 = 2112;
        v16 = ef_publicDescription2;
        _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "No URL for mailbox. Account: %@ Mailbox: %@", &v13, 0x16u);
      }

      v4 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  _privacySafeDescription = [(MFMailboxUid *)self _privacySafeDescription];
  if (isInternal)
  {
    v6 = MEMORY[0x1E699B858];
    accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
    v8 = [v6 partiallyRedactedStringForString:accountRelativePath];
    v9 = [_privacySafeDescription stringByAppendingFormat:@" relativePath=%@", v8];

    _privacySafeDescription = v9;
  }

  return _privacySafeDescription;
}

- (id)_privacySafeDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mailboxID = self->_mailboxID;
  v6 = NSStringFromMailboxUidType([(MFMailboxUid *)self mailboxType]);
  v7 = [v3 stringWithFormat:@"<%@ %p> ID=%lld type=%@ attributes=%lu", v4, self, mailboxID, v6, -[MFMailboxUid attributes](self, "attributes")];

  return v7;
}

- (id)store
{
  account = [(MFMailboxUid *)self account];
  v4 = [account storeForMailboxUid:self];

  if (!v4)
  {
    v4 = [MFLibraryStore storeWithMailbox:self];
  }

  return v4;
}

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__MFMailboxUid_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_5 != -1)
  {
    dispatch_once(&log_onceToken_5, block);
  }

  v2 = log_log_5;

  return v2;
}

void __19__MFMailboxUid_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_5;
  log_log_5 = v1;
}

+ (id)defaultScheduler
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__MFMailboxUid_defaultScheduler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultScheduler_onceToken != -1)
  {
    dispatch_once(&defaultScheduler_onceToken, block);
  }

  v2 = defaultScheduler_scheduler;

  return v2;
}

void __32__MFMailboxUid_defaultScheduler__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E699B978];
  v4 = NSStringFromClass(*(a1 + 32));
  v2 = [v1 serialDispatchQueueSchedulerWithName:? qualityOfService:?];
  v3 = defaultScheduler_scheduler;
  defaultScheduler_scheduler = v2;
}

+ (id)fileURLForMailboxURL:(id)l
{
  lCopy = l;
  v4 = [MailAccount accountWithURL:lCopy];
  path = [v4 path];
  path2 = [lCopy path];
  v7 = [path stringByAppendingPathComponent:path2];
  mailboxPathExtension = [v4 mailboxPathExtension];
  v9 = [v7 stringByAppendingPathExtension:mailboxPathExtension];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (MFMailboxUid)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = [(MFMailboxUid *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_account, accountCopy);
    v6->_attributes = 18;
  }

  return v6;
}

- (id)_initWithName:(id)name attributes:(unint64_t)attributes forAccount:(id)account
{
  nameCopy = name;
  accountCopy = account;
  if (nameCopy)
  {
    v10 = [(MFMailboxUid *)self init];
    if (v10)
    {
      v11 = [nameCopy copy];
      pathComponent = v10->_pathComponent;
      v10->_pathComponent = v11;

LABEL_5:
      v10->_attributes = attributes;
    }
  }

  else
  {
    v10 = [(MFMailboxUid *)self initWithAccount:accountCopy];
    if (v10)
    {
      goto LABEL_5;
    }
  }

  return v10;
}

- (MFMailboxUid)initWithName:(id)name attributes:(unint64_t)attributes forAccount:(id)account extraAttributes:(id)extraAttributes type:(int64_t)type
{
  typeCopy = type;
  nameCopy = name;
  accountCopy = account;
  extraAttributesCopy = extraAttributes;
  v15 = [(MFMailboxUid *)self _initWithName:nameCopy attributes:attributes forAccount:accountCopy];
  if (v15)
  {
    v16 = [extraAttributesCopy copy];
    extraAttributes = v15->_extraAttributes;
    v15->_extraAttributes = v16;

    atomic_store(typeCopy, &v15->_type);
    v18 = v15;
  }

  return v15;
}

- (id)_dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  attributes = [(MFMailboxUid *)self attributes];
  v4 = MEMORY[0x1E695DF90];
  name = [(MFMailboxUid *)self name];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:attributes];
  v7 = [v4 dictionaryWithObjectsAndKeys:{name, @"MailboxName", v6, @"MailboxAttributes", 0}];

  if ((attributes & 1) == 0)
  {
    children = [(MFMailboxUid *)self children];
    v9 = [children count];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = children;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v11);
            }

            dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
            [v10 addObject:dictionaryRepresentation];
          }

          v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      [v7 setObject:v10 forKeyedSubscript:@"MailboxChildren"];
    }
  }

  extraAttributes = [(MFMailboxUid *)self extraAttributes];
  if (extraAttributes)
  {
    [v7 setObject:extraAttributes forKeyedSubscript:@"MailboxExtraAttributes"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)decodedName
{
  account = [(MFMailboxUid *)self account];
  v4 = account;
  if ((self->_attributes & 0x10) != 0)
  {
    displayName = [account displayName];
  }

  else
  {
    if (account)
    {
      pathComponent = [(MFMailboxUid *)self pathComponent];
      [v4 _pathComponentForUidName:pathComponent];
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      pathComponent = [(MFMailboxUid *)self pathComponent];
      [v7 stringWithFormat:@"*** Orphaned mailbox %@", pathComponent];
    }
    displayName = ;
  }

  return displayName;
}

+ (id)specialNameForType:(int64_t)type
{
  v3 = 0;
  if (type <= 3)
  {
    switch(type)
    {
      case 1:
        v4 = @"JUNK_SPECIAL_MAILBOX_NAME";
        v5 = @"Junk";
        break;
      case 2:
        v4 = @"ARCHIVE_SPECIAL_MAILBOX_NAME";
        v5 = @"Archive";
        break;
      case 3:
        v4 = @"TRASH_SPECIAL_MAILBOX_NAME";
        v5 = @"Trash";
        break;
      default:
        goto LABEL_17;
    }
  }

  else if (type > 5)
  {
    if (type == 6)
    {
      v4 = @"OUTBOX_SPECIAL_MAILBOX_NAME";
      v5 = @"Outbox";
    }

    else
    {
      if (type != 7)
      {
        goto LABEL_17;
      }

      v4 = @"INBOX_SPECIAL_MAILBOX_NAME";
      v5 = @"Inbox";
    }
  }

  else if (type == 4)
  {
    v4 = @"SENT_MESSAGES_SPECIAL_MAILBOX_NAME";
    v5 = @"Sent";
  }

  else
  {
    v4 = @"DRAFTS_SPECIAL_MAILBOX_NAME";
    v5 = @"Drafts";
  }

  v3 = MFLookupLocalizedString(v4, v5, @"Message");
LABEL_17:

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  [(MFMailboxUid *)self mf_lock];
  os_unfair_lock_lock(&self->_ivarLock);
  if ([nameCopy isEqual:self->_pathComponent])
  {
    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    v4 = [nameCopy copy];
    pathComponent = self->_pathComponent;
    self->_pathComponent = v4;

    realFullPath = self->_realFullPath;
    self->_realFullPath = 0;

    os_unfair_lock_unlock(&self->_ivarLock);
    uRLString = [(MFMailboxUid *)self URLString];

    if (uRLString)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (id)accountDisplayName
{
  representedAccount = [(MFMailboxUid *)self representedAccount];
  displayName = [representedAccount displayName];

  return displayName;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v6 = [library serverUnreadOnlyOnServerCountForMailbox:uRLString];

  return v6;
}

- (unint64_t)unreadCount
{
  account = [(MFMailboxUid *)self account];
  library = [account library];
  uRLString = [(MFMailboxUid *)self URLString];
  v6 = [library unreadCountForMailbox:uRLString];

  return v6;
}

- (void)updateMostRecentStatusCount:(unint64_t)count
{
  defaultScheduler = [objc_opt_class() defaultScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MFMailboxUid_updateMostRecentStatusCount___block_invoke;
  v6[3] = &unk_1E7AA33B0;
  v6[4] = self;
  v6[5] = count;
  [defaultScheduler performBlock:v6];
}

void __44__MFMailboxUid_updateMostRecentStatusCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  v4 = [v2 library];

  v3 = [*(a1 + 32) URLString];
  if ([v4 mostRecentStatusCountForMailbox:v3] != *(a1 + 40))
  {
    [v4 setMostRecentStatusCount:? forMailbox:?];
  }
}

- (unint64_t)numberOfChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children count];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (unint64_t)numberOfDescendants
{
  v15 = *MEMORY[0x1E69E9840];
  [(MFMailboxUid *)self mf_lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_children;
  v4 = 0;
  v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v4 += [*(*(&v10 + 1) + 8 * v7++) numberOfDescendants] + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(MFMailboxUid *)self mf_unlock];
  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)childAtIndex:(unint64_t)index
{
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children objectAtIndex:index];
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (unint64_t)indexOfChild:(id)child
{
  childCopy = child;
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children indexOfObject:childCopy];
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (id)childWithName:(id)name
{
  v3 = _MFChildWithPredicate(self, mailboxHasName, name);

  return v3;
}

- (id)childWithExtraAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy length])
  {
    v5 = _MFChildWithPredicate(self, mailboxHasExtraAttribute, attributeCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descendantWithExtraAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy length])
  {
    v5 = _MFDescendantWithPredicate(self, mailboxHasExtraAttribute, attributeCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setChildren:(id)children
{
  v34 = *MEMORY[0x1E69E9840];
  childrenCopy = children;
  [(MFMailboxUid *)self mf_lock];
  if ([(MFMailboxUid *)self isValid])
  {
    mutableCopyOfChildren = [(MFMailboxUid *)self mutableCopyOfChildren];
  }

  else
  {
    mutableCopyOfChildren = 0;
  }

  [(NSMutableArray *)self->_children removeAllObjects];
  if ([childrenCopy count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = childrenCopy;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v6)
    {
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v5);
          }

          bindParentAndChild(self, *(*(&v29 + 1) + 8 * i));
        }

        v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }

    if (!mutableCopyOfChildren || ([mutableCopyOfChildren isEqualToArray:v5] & 1) == 0)
    {
      v9 = 1;
LABEL_17:
      v23 = v9;
      goto LABEL_19;
    }
  }

  else if (mutableCopyOfChildren)
  {
    v9 = [mutableCopyOfChildren count] != 0;
    goto LABEL_17;
  }

  v23 = 0;
LABEL_19:
  [(MFMailboxUid *)self mf_unlock];
  if ([mutableCopyOfChildren count])
  {
    v10 = [mutableCopyOfChildren arrayByApplyingSelector:sel_URLStringNonNil];
    v25 = [mutableCopyOfChildren arrayByApplyingSelector:sel_fullPathNonNil];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [mutableCopyOfChildren count];
    account = [(MFMailboxUid *)self account];
    if (v11)
    {
      v12 = 0;
      v13 = *MEMORY[0x1E695E738];
      do
      {
        v14 = [mutableCopyOfChildren objectAtIndex:v12];
        v15 = [v10 objectAtIndex:v12];
        if (v15 != v13)
        {
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:@"URLString"];
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:v14 userInfo:v16];

          if ([v14 isStore])
          {
            v18 = [account mailboxUidForURL:v15];
            v19 = v18;
            if (!v18 || ([v18 isValid] & 1) == 0)
            {
              [v27 addObject:v15];
              v20 = [v25 objectAtIndex:v12];
              [v26 addObject:v20];
            }
          }
        }

        ++v12;
      }

      while (v11 != v12);
    }

    if ([v27 count])
    {
      [account _mailboxesWereRemovedFromTree:v27 withFileSystemPaths:v26];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)sortChildren
{
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children sortUsingFunction:MFCompareMailboxUids context:[(MFMailboxUid *)self account]];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)removeChild:(id)child
{
  childCopy = child;
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children removeObject:childCopy];
  [(MFMailboxUid *)self mf_unlock];
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  parent = [(MFMailboxUid *)self parent];

  if (parent != parentCopy)
  {
    bindParentAndChild(parentCopy, self);
    [(MFMailboxUid *)self mf_lock];
    uRLString = [(MFMailboxUid *)self URLString];

    if (uRLString)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (void)flushCriteria
{
  [(MFMailboxUid *)self mf_lock];
  criterion = self->_criterion;
  self->_criterion = 0;

  [(MFMailboxUid *)self mf_unlock];
  os_unfair_lock_lock(&self->_ivarLock);
  objectID = self->_objectID;
  self->_objectID = 0;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (void)setRepresentedAccount:(id)account
{
  accountCopy = account;
  [(MFMailboxUid *)self mf_lock];
  if (self->_representedAccount != accountCopy)
  {
    objc_storeStrong(&self->_representedAccount, account);
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (void)invalidate
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  if (rootMailbox == self)
  {
    objc_storeWeak(&self->_account, 0);
    self->_attributes &= ~0x10uLL;
  }

  parent = [(MFMailboxUid *)self parent];
  [parent removeChild:self];

  if (rootMailbox)
  {
    uRLString = [(MFMailboxUid *)self URLString];
    if (uRLString)
    {
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObject:uRLString forKey:@"URLString"];
    }

    else
    {
      v5 = 0;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:self userInfo:v5];
  }
}

- (BOOL)isStandardizedMailboxUid
{
  mailboxType = [(MFMailboxUid *)self mailboxType];

  return [MFMailboxUid isStandardizedMailboxUidType:mailboxType];
}

- (BOOL)isSpecialMailboxUid
{
  selfCopy = self;
  account = [(MFMailboxUid *)self account];
  LOBYTE(selfCopy) = [account isSpecialMailbox:selfCopy];

  return selfCopy;
}

- (BOOL)isSentMailboxUid
{
  v3 = objc_opt_class();
  mailboxType = [(MFMailboxUid *)self mailboxType];

  return [v3 isSentMailboxType:mailboxType];
}

+ (BOOL)typeIsValidTransferDestination:(int64_t)destination
{
  v4 = [objc_opt_class() isOutgoingMailboxType:destination];
  v5 = destination != 8;
  if (destination == -100)
  {
    v5 = 0;
  }

  if (destination == -500)
  {
    v5 = 0;
  }

  return (v4 & 1) == 0 && v5;
}

- (BOOL)isOutgoingMailboxUid
{
  mailboxType = [(MFMailboxUid *)self mailboxType];
  v3 = objc_opt_class();

  return [v3 isOutgoingMailboxType:mailboxType];
}

- (BOOL)isNotesMailboxUid
{
  name = [(MFMailboxUid *)self name];
  if ([name isEqualToString:@"Notes"])
  {
    parent = [(MFMailboxUid *)self parent];
    account = [(MFMailboxUid *)self account];
    rootMailbox = [account rootMailbox];
    v7 = parent == rootMailbox;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  EFAtomicSetOnceObjectRelease();
  v3.receiver = self;
  v3.super_class = MFMailboxUid;
  [(MFMailboxUid *)&v3 dealloc];
}

- (MFMailboxUserInfo)userInfo
{
  if (([(MFMailboxUid *)self attributes]& 0x10) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = EFAtomicSetOnceObjectLoad();
  }

  return v2;
}

MFMailboxUserInfo *__24__MFMailboxUid_userInfo__block_invoke(uint64_t a1)
{
  v2 = [MFMailboxUserInfo alloc];
  v3 = [*(a1 + 32) userInfoFileURL];
  v4 = [(MFMailboxUserInfo *)v2 initWithFileURL:v3];

  return v4;
}

- (id)userInfoFileURL
{
  fullPath = [(MFMailboxUid *)self fullPath];
  if (fullPath)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:fullPath isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fullPathForAccount:(id)account mailbox:(id)mailbox
{
  accountCopy = account;
  mailboxCopy = mailbox;
  path = [accountCopy path];
  mailboxPathExtension = [accountCopy mailboxPathExtension];
  _mailboxPathPrefix = [accountCopy _mailboxPathPrefix];
  [mailboxCopy mf_lock];
  v10 = _stringByAppendingPathComponents(mailboxCopy, accountCopy, 0, path, _mailboxPathPrefix, mailboxPathExtension);
  [mailboxCopy mf_unlock];

  return v10;
}

- (id)realFullPath
{
  [(MFMailboxUid *)self mf_lock];
  realFullPath = self->_realFullPath;
  if (!realFullPath)
  {
    fullPath = [(MFMailboxUid *)self fullPath];
    mf_betterStringByResolvingSymlinksInPath = [fullPath mf_betterStringByResolvingSymlinksInPath];
    v6 = self->_realFullPath;
    self->_realFullPath = mf_betterStringByResolvingSymlinksInPath;

    realFullPath = self->_realFullPath;
  }

  v7 = realFullPath;
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (id)pathRelativeToMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  if (mailboxCopy)
  {
    account = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponents(self, account, mailboxCopy, &stru_1F273A5E0, 0, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathRelativeToMailboxForDisplay:(id)display
{
  displayCopy = display;
  if (displayCopy)
  {
    account = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, displayCopy, &stru_1F273A5E0, 0, 0, 1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URLWithAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v7 = [v5 initWithObjectsAndKeys:{accountCopy, @"Account", accountRelativePath, @"RelativePath", 0}];

  v8 = [MailAccount URLForInfo:v7];

  return v8;
}

- (id)oldURLString
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  ancestralAccount = [(MFMailboxUid *)self ancestralAccount];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v7 = [v3 initWithObjectsAndKeys:{ancestralAccount, @"Account", accountRelativePath, @"RelativePath", v6, @"IncludeDefaultSecurePortNumber", 0}];

  v8 = [MailAccount URLForInfo:v7];
  absoluteString = [v8 absoluteString];

  return absoluteString;
}

- (NSString)persistentID
{
  [(MFMailboxUid *)self databaseID];

  return EFStringWithInt64();
}

- (BOOL)isDescendantOfMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  selfCopy = self;
  if (selfCopy)
  {
    v6 = selfCopy;
    do
    {
      parent = [(MFMailboxUid *)v6 parent];

      v8 = v6 == mailboxCopy;
      if (v6 == mailboxCopy)
      {
        break;
      }

      v6 = parent;
    }

    while (parent);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)debugDescription
{
  _privacySafeDescription = [(MFMailboxUid *)self _privacySafeDescription];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v5 = [_privacySafeDescription stringByAppendingFormat:@" relativePath=%@", accountRelativePath];

  return v5;
}

- (void)setMailboxType:(int64_t)type
{
  v10 = *MEMORY[0x1E69E9840];
  mailboxType = [(MFMailboxUid *)self mailboxType];
  if (!type && mailboxType == 7)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      [(MFMailboxUid *)callStackSymbols setMailboxType:v9, v6];
    }
  }

  atomic_store(type, &self->_type);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)userInfoObjectForKey:(id)key
{
  keyCopy = key;
  userInfo = [(MFMailboxUid *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  add = atomic_fetch_add(&self->_isChangingUserInfo, 1u);
  userInfo = [(MFMailboxUid *)self userInfo];
  [userInfo setObject:objectCopy forKeyedSubscript:keyCopy];

  if (!add)
  {
    [(MFMailboxUid *)self didChangeUserInfo];
  }

  atomic_fetch_add(&self->_isChangingUserInfo, 0xFFFFFFFF);
}

- (BOOL)userInfoBoolForKey:(id)key
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:key];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mailboxID = self->_mailboxID;
    v6 = equalCopy[2];
    if (mailboxID == *MEMORY[0x1E699A728] || v6 == *MEMORY[0x1E699A728])
    {
      v8 = [(MFMailboxUid *)self URL];
      v9 = [equalCopy URL];
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = mailboxID == v6;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)shouldRestoreMessagesAfterFailedDelete
{
  account = [(MFMailboxUid *)self account];
  shouldRestoreMessagesAfterFailedDelete = [account shouldRestoreMessagesAfterFailedDelete];

  return shouldRestoreMessagesAfterFailedDelete;
}

- (void)addToPostOrderTraversal:(id)traversal
{
  v15 = *MEMORY[0x1E69E9840];
  traversalCopy = traversal;
  [(MFMailboxUid *)self mf_lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_children;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) addToPostOrderTraversal:{traversalCopy, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(MFMailboxUid *)self mf_unlock];
  [traversalCopy addObject:self];

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)suggestionsLostMessageSearchResultCount
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchResultCount"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)suggestionsLostMessageSearchTimestamp
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchTimestamp"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)count
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  [MFMailboxUid setUserInfoObject:"setUserInfoObject:forKey:" forKey:?];

  v4 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [MFMailboxUid setUserInfoObject:"setUserInfoObject:forKey:" forKey:?];
}

- (id)redactedName:(id)name
{
  nameCopy = name;
  if ([(MFMailboxUid *)self isStandardizedMailboxUid])
  {
    v5 = nameCopy;
  }

  else
  {
    v5 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:nameCopy];
  }

  v6 = v5;

  return v6;
}

- (NSString)bucketBarConfigurationIdentifier
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MFMailboxUid *)self smartMailboxType];
    [(MFMailboxUid *)self type];
    absoluteString = NSStringFromEMSmartMailboxType();
  }

  else
  {
    objectID = [(MFMailboxUid *)self objectID];
    v5 = [objectID url];
    absoluteString = [v5 absoluteString];
  }

  return absoluteString;
}

- (MFInvocationQueue)attachmentDownloadQueue
{
  v3 = objc_getAssociatedObject(self, MFMailboxUidAttachmentQueue);
  if (!v3)
  {
    v3 = objc_alloc_init(MFInvocationQueue);
    objc_setAssociatedObject(self, MFMailboxUidAttachmentQueue, v3, 0x301);
  }

  return v3;
}

- (void)setMailboxType:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "change in mailbox type [Inbox -> Generic]: %@", buf, 0xCu);
}

@end