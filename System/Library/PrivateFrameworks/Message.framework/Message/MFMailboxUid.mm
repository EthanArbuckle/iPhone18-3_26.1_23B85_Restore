@interface MFMailboxUid
+ (BOOL)typeIsValidTransferDestination:(int64_t)a3;
+ (id)defaultScheduler;
+ (id)fileURLForMailboxURL:(id)a3;
+ (id)fullPathForAccount:(id)a3 mailbox:(id)a4;
+ (id)log;
+ (id)specialNameForType:(int64_t)a3;
- (BOOL)hasChildren;
- (BOOL)isDescendantOfMailbox:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isNotesMailboxUid;
- (BOOL)isOutgoingMailboxUid;
- (BOOL)isSentMailboxUid;
- (BOOL)isSpecialMailboxUid;
- (BOOL)isStandardizedMailboxUid;
- (BOOL)isValid;
- (BOOL)setChildren:(id)a3;
- (BOOL)shouldRestoreMessagesAfterFailedDelete;
- (BOOL)userInfoBoolForKey:(id)a3;
- (EMMailboxObjectID)objectID;
- (MFInvocationQueue)attachmentDownloadQueue;
- (MFMailboxUid)init;
- (MFMailboxUid)initWithAccount:(id)a3;
- (MFMailboxUid)initWithName:(id)a3 attributes:(unint64_t)a4 forAccount:(id)a5 extraAttributes:(id)a6 type:(int64_t)a7;
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
- (id)URLWithAccount:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_initWithName:(id)a3 attributes:(unint64_t)a4 forAccount:(id)a5;
- (id)_mutableChildren;
- (id)_privacySafeDescription;
- (id)accountDisplayName;
- (id)ancestralAccount;
- (id)childAtIndex:(unint64_t)a3;
- (id)childWithExtraAttribute:(id)a3;
- (id)childWithName:(id)a3;
- (id)criterion;
- (id)descendantWithExtraAttribute:(id)a3;
- (id)displayNameUsingSpecialNames;
- (id)fullPath;
- (id)fullPathNonNil;
- (id)mutableCopyOfChildren;
- (id)oldURLString;
- (id)pathComponent;
- (id)pathRelativeToMailbox:(id)a3;
- (id)pathRelativeToMailboxForDisplay:(id)a3;
- (id)realFullPath;
- (id)redactedName:(id)a3;
- (id)representedAccount;
- (id)rootMailbox;
- (id)store;
- (id)topMailbox;
- (id)userInfoFileURL;
- (id)userInfoObjectForKey:(id)a3;
- (int64_t)databaseID;
- (int64_t)type;
- (unint64_t)indexOfChild:(id)a3;
- (unint64_t)numberOfChildren;
- (unint64_t)numberOfDescendants;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)suggestionsLostMessageSearchResultCount;
- (unint64_t)unreadCount;
- (void)addToPostOrderTraversal:(id)a3;
- (void)dealloc;
- (void)flushCriteria;
- (void)invalidate;
- (void)removeChild:(id)a3;
- (void)setMailboxType:(int64_t)a3;
- (void)setName:(id)a3;
- (void)setParent:(id)a3;
- (void)setRepresentedAccount:(id)a3;
- (void)setUserInfoObject:(id)a3 forKey:(id)a4;
- (void)sortChildren;
- (void)updateMostRecentStatusCount:(unint64_t)a3;
- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)a3;
@end

@implementation MFMailboxUid

- (int64_t)databaseID
{
  result = self->_mailboxID;
  if (result == *MEMORY[0x1E699A728])
  {
    v4 = [(MFMailboxUid *)self URLString];
    if ([v4 length])
    {
      v5 = [(MFMailboxUid *)self account];
      v6 = [v5 library];
      self->_mailboxID = [v6 mailboxIDForURLString:v4];
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uniqueId = v2->uniqueId;
    v2->uniqueId = v4;

    v2->_mailboxID = *MEMORY[0x1E699A728];
    atomic_store(0, &v2->_type);
    v2->_isSendLaterMailbox = 0;
    v2->_ivarLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (MailAccount)account
{
  v2 = [(MFMailboxUid *)self rootMailbox];
  v3 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (id)pathComponent
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 132));
    v2 = [*(a1 + 32) copy];
    os_unfair_lock_unlock((a1 + 132));
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
  v2 = [(MFMailboxUid *)self topMailbox];
  if ((v2[136] & 0x10) == 0)
  {

    v2 = 0;
  }

  return v2;
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
    v3 = [(MFMailboxUid *)i parent];

    if (!v3)
    {
      break;
    }

    v4 = v3;
  }

  return i;
}

- (BOOL)isValid
{
  v2 = [(MFMailboxUid *)self rootMailbox];
  v3 = v2 != 0;

  return v3;
}

- (id)fullPathNonNil
{
  v2 = [(MFMailboxUid *)self fullPath];
  if (!v2)
  {
    v2 = *MEMORY[0x1E695E738];
  }

  return v2;
}

- (NSString)accountRelativePath
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v5 = _stringByAppendingPathComponents(self, v3, 0, &stru_1F273A5E0, v4, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (int64_t)type
{
  v2 = [(MFMailboxUid *)self mailboxType];

  return ECMailboxTypeFromMailboxUidType(v2);
}

- (NSString)displayName
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(MailAccount *)self->_representedAccount displayName];
  [(MFMailboxUid *)self mf_unlock];
  if (v3 && ([v3 isEqualToString:&stru_1F273A5E0] & 1) == 0)
  {
    v7 = v3;
  }

  else
  {
    v4 = [(MFMailboxUid *)self account];
    v5 = v4;
    if ((self->_attributes & 0x10) != 0)
    {
      v7 = [v4 displayName];
    }

    else
    {
      if (v4)
      {
        v6 = [(MFMailboxUid *)self pathComponent];
        [v5 _pathComponentForUidName:v6];
      }

      else
      {
        v8 = MEMORY[0x1E696AEC0];
        v6 = [(MFMailboxUid *)self pathComponent];
        [v8 stringWithFormat:@"*** Orphaned mailbox %@", v6];
      }
      v7 = ;
    }
  }

  return v7;
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
  v2 = self;
  do
  {
    if (([(MFMailboxUid *)v2 attributes]& 0x10) != 0)
    {
      break;
    }

    v3 = [(MFMailboxUid *)v2 parent];

    v2 = v3;
  }

  while (v3);
  v4 = [(MFMailboxUid *)v2 account];

  return v4;
}

- (id)displayNameUsingSpecialNames
{
  v3 = [(MFMailboxUid *)self mailboxType];
  v4 = [(MFMailboxUid *)self account];
  v5 = [v4 displayNameUsingSpecialNamesForMailboxUid:self];

  if (!v5)
  {
    v5 = [objc_opt_class() specialNameForType:v3];
    if (!v5)
    {
      v5 = [(MFMailboxUid *)self displayName];
    }
  }

  return v5;
}

- (id)URLStringNonNil
{
  v2 = [(MFMailboxUid *)self URLString];
  if (!v2)
  {
    v2 = *MEMORY[0x1E695E738];
  }

  return v2;
}

- (NSURL)URL
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [(MFMailboxUid *)self URLWithAccount:v3];

  return v4;
}

- (NSString)URLString
{
  v2 = [(MFMailboxUid *)self criterion];
  if ([v2 criterionType] == 23)
  {
    v3 = [v2 expression];
    v4 = [v3 copy];
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
    v6 = [(MFMailboxUid *)self ancestralAccount];
    v7 = [(MFMailboxUid *)self URLWithAccount:v6];
    v8 = [v7 absoluteString];

    [(MFMailboxUid *)self mf_lock];
    if (*p_criterion || !v8)
    {
      criterion = *p_criterion;
    }

    else
    {
      v9 = [MFMessageCriterion criterionForMailboxURL:v8];
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
    v3 = [(MFMailboxUid *)self account];
    v4 = [v3 displayName];
    goto LABEL_5;
  }

  v3 = [(MFWeakReferenceHolder *)self->_parent retainedReference];
  if (v3)
  {
    v4 = [(MFMailboxUid *)self pathComponent];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(MFMailboxUid *)self pathComponent];
  v5 = [v7 stringWithFormat:@"*** Orphaned mailbox %@", v8];

  parent = self->_parent;
  self->_parent = 0;

LABEL_6:

  return v5;
}

- (id)fullPath
{
  v3 = objc_opt_class();
  v4 = [(MFMailboxUid *)self account];
  v5 = [v3 fullPathForAccount:v4 mailbox:self];

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
    v4 = representedAccount;
  }

  else
  {
    v4 = [(MFMailboxUid *)self account];
  }

  v5 = v4;
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
    v5 = [(MFMailboxUid *)self URLString];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v5];
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
        v8 = [(MFMailboxUid *)self account];
        v9 = [v8 ef_publicDescription];
        v10 = [(MFMailboxUid *)self ef_publicDescription];
        v13 = 138412546;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
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
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  v5 = [(MFMailboxUid *)self _privacySafeDescription];
  if (v4)
  {
    v6 = MEMORY[0x1E699B858];
    v7 = [(MFMailboxUid *)self accountRelativePath];
    v8 = [v6 partiallyRedactedStringForString:v7];
    v9 = [v5 stringByAppendingFormat:@" relativePath=%@", v8];

    v5 = v9;
  }

  return v5;
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
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 storeForMailboxUid:self];

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
  block[4] = a1;
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
  block[4] = a1;
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

+ (id)fileURLForMailboxURL:(id)a3
{
  v3 = a3;
  v4 = [MailAccount accountWithURL:v3];
  v5 = [v4 path];
  v6 = [v3 path];
  v7 = [v5 stringByAppendingPathComponent:v6];
  v8 = [v4 mailboxPathExtension];
  v9 = [v7 stringByAppendingPathExtension:v8];

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

- (MFMailboxUid)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxUid *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_account, v4);
    v6->_attributes = 18;
  }

  return v6;
}

- (id)_initWithName:(id)a3 attributes:(unint64_t)a4 forAccount:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [(MFMailboxUid *)self init];
    if (v10)
    {
      v11 = [v8 copy];
      pathComponent = v10->_pathComponent;
      v10->_pathComponent = v11;

LABEL_5:
      v10->_attributes = a4;
    }
  }

  else
  {
    v10 = [(MFMailboxUid *)self initWithAccount:v9];
    if (v10)
    {
      goto LABEL_5;
    }
  }

  return v10;
}

- (MFMailboxUid)initWithName:(id)a3 attributes:(unint64_t)a4 forAccount:(id)a5 extraAttributes:(id)a6 type:(int64_t)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [(MFMailboxUid *)self _initWithName:v12 attributes:a4 forAccount:v13];
  if (v15)
  {
    v16 = [v14 copy];
    extraAttributes = v15->_extraAttributes;
    v15->_extraAttributes = v16;

    atomic_store(v7, &v15->_type);
    v18 = v15;
  }

  return v15;
}

- (id)_dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(MFMailboxUid *)self attributes];
  v4 = MEMORY[0x1E695DF90];
  v5 = [(MFMailboxUid *)self name];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v7 = [v4 dictionaryWithObjectsAndKeys:{v5, @"MailboxName", v6, @"MailboxAttributes", 0}];

  if ((v3 & 1) == 0)
  {
    v8 = [(MFMailboxUid *)self children];
    v9 = [v8 count];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v8;
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

            v15 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
            [v10 addObject:v15];
          }

          v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      [v7 setObject:v10 forKeyedSubscript:@"MailboxChildren"];
    }
  }

  v16 = [(MFMailboxUid *)self extraAttributes];
  if (v16)
  {
    [v7 setObject:v16 forKeyedSubscript:@"MailboxExtraAttributes"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)decodedName
{
  v3 = [(MFMailboxUid *)self account];
  v4 = v3;
  if ((self->_attributes & 0x10) != 0)
  {
    v6 = [v3 displayName];
  }

  else
  {
    if (v3)
    {
      v5 = [(MFMailboxUid *)self pathComponent];
      [v4 _pathComponentForUidName:v5];
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v5 = [(MFMailboxUid *)self pathComponent];
      [v7 stringWithFormat:@"*** Orphaned mailbox %@", v5];
    }
    v6 = ;
  }

  return v6;
}

+ (id)specialNameForType:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 3)
  {
    switch(a3)
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

  else if (a3 > 5)
  {
    if (a3 == 6)
    {
      v4 = @"OUTBOX_SPECIAL_MAILBOX_NAME";
      v5 = @"Outbox";
    }

    else
    {
      if (a3 != 7)
      {
        goto LABEL_17;
      }

      v4 = @"INBOX_SPECIAL_MAILBOX_NAME";
      v5 = @"Inbox";
    }
  }

  else if (a3 == 4)
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

- (void)setName:(id)a3
{
  v9 = a3;
  [(MFMailboxUid *)self mf_lock];
  os_unfair_lock_lock(&self->_ivarLock);
  if ([v9 isEqual:self->_pathComponent])
  {
    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    v4 = [v9 copy];
    pathComponent = self->_pathComponent;
    self->_pathComponent = v4;

    realFullPath = self->_realFullPath;
    self->_realFullPath = 0;

    os_unfair_lock_unlock(&self->_ivarLock);
    v7 = [(MFMailboxUid *)self URLString];

    if (v7)
    {
      criterion = self->_criterion;
      self->_criterion = 0;
    }
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (id)accountDisplayName
{
  v2 = [(MFMailboxUid *)self representedAccount];
  v3 = [v2 displayName];

  return v3;
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 library];
  v5 = [(MFMailboxUid *)self URLString];
  v6 = [v4 serverUnreadOnlyOnServerCountForMailbox:v5];

  return v6;
}

- (unint64_t)unreadCount
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 library];
  v5 = [(MFMailboxUid *)self URLString];
  v6 = [v4 unreadCountForMailbox:v5];

  return v6;
}

- (void)updateMostRecentStatusCount:(unint64_t)a3
{
  v5 = [objc_opt_class() defaultScheduler];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MFMailboxUid_updateMostRecentStatusCount___block_invoke;
  v6[3] = &unk_1E7AA33B0;
  v6[4] = self;
  v6[5] = a3;
  [v5 performBlock:v6];
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

- (id)childAtIndex:(unint64_t)a3
{
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children objectAtIndex:a3];
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (unint64_t)indexOfChild:(id)a3
{
  v4 = a3;
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children indexOfObject:v4];
  [(MFMailboxUid *)self mf_unlock];

  return v5;
}

- (id)childWithName:(id)a3
{
  v3 = _MFChildWithPredicate(self, mailboxHasName, a3);

  return v3;
}

- (id)childWithExtraAttribute:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = _MFChildWithPredicate(self, mailboxHasExtraAttribute, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descendantWithExtraAttribute:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = _MFDescendantWithPredicate(self, mailboxHasExtraAttribute, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setChildren:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = a3;
  [(MFMailboxUid *)self mf_lock];
  if ([(MFMailboxUid *)self isValid])
  {
    v4 = [(MFMailboxUid *)self mutableCopyOfChildren];
  }

  else
  {
    v4 = 0;
  }

  [(NSMutableArray *)self->_children removeAllObjects];
  if ([v24 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = v24;
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

    if (!v4 || ([v4 isEqualToArray:v5] & 1) == 0)
    {
      v9 = 1;
LABEL_17:
      v23 = v9;
      goto LABEL_19;
    }
  }

  else if (v4)
  {
    v9 = [v4 count] != 0;
    goto LABEL_17;
  }

  v23 = 0;
LABEL_19:
  [(MFMailboxUid *)self mf_unlock];
  if ([v4 count])
  {
    v10 = [v4 arrayByApplyingSelector:sel_URLStringNonNil];
    v25 = [v4 arrayByApplyingSelector:sel_fullPathNonNil];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [v4 count];
    v28 = [(MFMailboxUid *)self account];
    if (v11)
    {
      v12 = 0;
      v13 = *MEMORY[0x1E695E738];
      do
      {
        v14 = [v4 objectAtIndex:v12];
        v15 = [v10 objectAtIndex:v12];
        if (v15 != v13)
        {
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:v15 forKey:@"URLString"];
          v17 = [MEMORY[0x1E696AD88] defaultCenter];
          [v17 postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:v14 userInfo:v16];

          if ([v14 isStore])
          {
            v18 = [v28 mailboxUidForURL:v15];
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
      [v28 _mailboxesWereRemovedFromTree:v27 withFileSystemPaths:v26];
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

- (void)removeChild:(id)a3
{
  v4 = a3;
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children removeObject:v4];
  [(MFMailboxUid *)self mf_unlock];
}

- (void)setParent:(id)a3
{
  v7 = a3;
  v4 = [(MFMailboxUid *)self parent];

  if (v4 != v7)
  {
    bindParentAndChild(v7, self);
    [(MFMailboxUid *)self mf_lock];
    v5 = [(MFMailboxUid *)self URLString];

    if (v5)
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

- (void)setRepresentedAccount:(id)a3
{
  v5 = a3;
  [(MFMailboxUid *)self mf_lock];
  if (self->_representedAccount != v5)
  {
    objc_storeStrong(&self->_representedAccount, a3);
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (void)invalidate
{
  v7 = [(MFMailboxUid *)self rootMailbox];
  if (v7 == self)
  {
    objc_storeWeak(&self->_account, 0);
    self->_attributes &= ~0x10uLL;
  }

  v3 = [(MFMailboxUid *)self parent];
  [v3 removeChild:self];

  if (v7)
  {
    v4 = [(MFMailboxUid *)self URLString];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObject:v4 forKey:@"URLString"];
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:self userInfo:v5];
  }
}

- (BOOL)isStandardizedMailboxUid
{
  v2 = [(MFMailboxUid *)self mailboxType];

  return [MFMailboxUid isStandardizedMailboxUidType:v2];
}

- (BOOL)isSpecialMailboxUid
{
  v2 = self;
  v3 = [(MFMailboxUid *)self account];
  LOBYTE(v2) = [v3 isSpecialMailbox:v2];

  return v2;
}

- (BOOL)isSentMailboxUid
{
  v3 = objc_opt_class();
  v4 = [(MFMailboxUid *)self mailboxType];

  return [v3 isSentMailboxType:v4];
}

+ (BOOL)typeIsValidTransferDestination:(int64_t)a3
{
  v4 = [objc_opt_class() isOutgoingMailboxType:a3];
  v5 = a3 != 8;
  if (a3 == -100)
  {
    v5 = 0;
  }

  if (a3 == -500)
  {
    v5 = 0;
  }

  return (v4 & 1) == 0 && v5;
}

- (BOOL)isOutgoingMailboxUid
{
  v2 = [(MFMailboxUid *)self mailboxType];
  v3 = objc_opt_class();

  return [v3 isOutgoingMailboxType:v2];
}

- (BOOL)isNotesMailboxUid
{
  v3 = [(MFMailboxUid *)self name];
  if ([v3 isEqualToString:@"Notes"])
  {
    v4 = [(MFMailboxUid *)self parent];
    v5 = [(MFMailboxUid *)self account];
    v6 = [v5 rootMailbox];
    v7 = v4 == v6;
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
  v2 = [(MFMailboxUid *)self fullPath];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
    v4 = [v3 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fullPathForAccount:(id)a3 mailbox:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 path];
  v8 = [v5 mailboxPathExtension];
  v9 = [v5 _mailboxPathPrefix];
  [v6 mf_lock];
  v10 = _stringByAppendingPathComponents(v6, v5, 0, v7, v9, v8);
  [v6 mf_unlock];

  return v10;
}

- (id)realFullPath
{
  [(MFMailboxUid *)self mf_lock];
  realFullPath = self->_realFullPath;
  if (!realFullPath)
  {
    v4 = [(MFMailboxUid *)self fullPath];
    v5 = [v4 mf_betterStringByResolvingSymlinksInPath];
    v6 = self->_realFullPath;
    self->_realFullPath = v5;

    realFullPath = self->_realFullPath;
  }

  v7 = realFullPath;
  [(MFMailboxUid *)self mf_unlock];

  return v7;
}

- (id)pathRelativeToMailbox:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponents(self, v5, v4, &stru_1F273A5E0, 0, 0);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathRelativeToMailboxForDisplay:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(MFMailboxUid *)self account];
    v6 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v5, v4, &stru_1F273A5E0, 0, 0, 1);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)URLWithAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v6 = [(MFMailboxUid *)self accountRelativePath];
  v7 = [v5 initWithObjectsAndKeys:{v4, @"Account", v6, @"RelativePath", 0}];

  v8 = [MailAccount URLForInfo:v7];

  return v8;
}

- (id)oldURLString
{
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [(MFMailboxUid *)self ancestralAccount];
  v5 = [(MFMailboxUid *)self accountRelativePath];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v7 = [v3 initWithObjectsAndKeys:{v4, @"Account", v5, @"RelativePath", v6, @"IncludeDefaultSecurePortNumber", 0}];

  v8 = [MailAccount URLForInfo:v7];
  v9 = [v8 absoluteString];

  return v9;
}

- (NSString)persistentID
{
  [(MFMailboxUid *)self databaseID];

  return EFStringWithInt64();
}

- (BOOL)isDescendantOfMailbox:(id)a3
{
  v4 = a3;
  v5 = self;
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [(MFMailboxUid *)v6 parent];

      v8 = v6 == v4;
      if (v6 == v4)
      {
        break;
      }

      v6 = v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)debugDescription
{
  v3 = [(MFMailboxUid *)self _privacySafeDescription];
  v4 = [(MFMailboxUid *)self accountRelativePath];
  v5 = [v3 stringByAppendingFormat:@" relativePath=%@", v4];

  return v5;
}

- (void)setMailboxType:(int64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [(MFMailboxUid *)self mailboxType];
  if (!a3 && v5 == 7)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AF00] callStackSymbols];
      [(MFMailboxUid *)v7 setMailboxType:v9, v6];
    }
  }

  atomic_store(a3, &self->_type);
  v8 = *MEMORY[0x1E69E9840];
}

- (id)userInfoObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(MFMailboxUid *)self userInfo];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setUserInfoObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  add = atomic_fetch_add(&self->_isChangingUserInfo, 1u);
  v8 = [(MFMailboxUid *)self userInfo];
  [v8 setObject:v9 forKeyedSubscript:v6];

  if (!add)
  {
    [(MFMailboxUid *)self didChangeUserInfo];
  }

  atomic_fetch_add(&self->_isChangingUserInfo, 0xFFFFFFFF);
}

- (BOOL)userInfoBoolForKey:(id)a3
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:a3];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mailboxID = self->_mailboxID;
    v6 = v4[2];
    if (mailboxID == *MEMORY[0x1E699A728] || v6 == *MEMORY[0x1E699A728])
    {
      v8 = [(MFMailboxUid *)self URL];
      v9 = [v4 URL];
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
  v2 = [(MFMailboxUid *)self account];
  v3 = [v2 shouldRestoreMessagesAfterFailedDelete];

  return v3;
}

- (void)addToPostOrderTraversal:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

        [*(*(&v10 + 1) + 8 * v8++) addToPostOrderTraversal:{v4, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(MFMailboxUid *)self mf_unlock];
  [v4 addObject:self];

  v9 = *MEMORY[0x1E69E9840];
}

- (unint64_t)suggestionsLostMessageSearchResultCount
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchResultCount"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (double)suggestionsLostMessageSearchTimestamp
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchTimestamp"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [MFMailboxUid setUserInfoObject:"setUserInfoObject:forKey:" forKey:?];

  v4 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  [MFMailboxUid setUserInfoObject:"setUserInfoObject:forKey:" forKey:?];
}

- (id)redactedName:(id)a3
{
  v4 = a3;
  if ([(MFMailboxUid *)self isStandardizedMailboxUid])
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E699B858] fullyOrPartiallyRedactedStringForString:v4];
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
    v3 = NSStringFromEMSmartMailboxType();
  }

  else
  {
    v4 = [(MFMailboxUid *)self objectID];
    v5 = [v4 url];
    v3 = [v5 absoluteString];
  }

  return v3;
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