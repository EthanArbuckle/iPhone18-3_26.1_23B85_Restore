@interface MFMailboxUid
+ (id)fileURLForMailboxURL:(id)l;
+ (id)specialNameForType:(int)type;
- (BOOL)hasChildren;
- (BOOL)isDescendantOfMailbox:(id)mailbox;
- (BOOL)isNotesMailboxUid;
- (BOOL)isOutgoingMailboxUid;
- (BOOL)isSentMailboxUid;
- (BOOL)isSpecialMailboxUid;
- (BOOL)isStandardizedMailboxUid;
- (BOOL)setChildren:(id)children;
- (BOOL)shouldRestoreMessagesAfterFailedDelete;
- (BOOL)userInfoBoolForKey:(id)key;
- (MFInvocationQueue)attachmentDownloadQueue;
- (MFMailboxUid)init;
- (MFMailboxUid)initWithAccount:(id)account;
- (NSString)ef_publicDescription;
- (double)suggestionsLostMessageSearchTimestamp;
- (id)URL;
- (id)URLString;
- (id)URLStringNonNil;
- (id)URLStringWithAccount:(id)account;
- (id)_dictionaryRepresentation;
- (id)_loadUserInfo;
- (id)_mutableChildren;
- (id)_privacySafeDescription;
- (id)account;
- (id)accountDisplayName;
- (id)accountRelativePath;
- (id)ancestralAccount;
- (id)childAtIndex:(unint64_t)index;
- (id)childWithExtraAttribute:(id)attribute;
- (id)criterion;
- (id)depthFirstEnumerator;
- (id)descendantWithExtraAttribute:(id)attribute;
- (id)displayName;
- (id)displayNameUsingSpecialNames;
- (id)fullPath;
- (id)fullPathNonNil;
- (id)mutableCopyOfChildren;
- (id)name;
- (id)oldURLString;
- (id)pathRelativeToMailbox:(id)mailbox;
- (id)pathRelativeToMailboxForDisplay:(id)display;
- (id)realFullPath;
- (id)representedAccount;
- (id)rootMailbox;
- (id)store;
- (id)tildeAbbreviatedPath;
- (id)topMailbox;
- (id)userInfoDictionary;
- (id)userInfoForSerialization;
- (id)userInfoObjectForKey:(id)key;
- (int64_t)indexToInsertChildMailboxUid:(id)uid;
- (int64_t)statusCountDelta;
- (unint64_t)indexOfChild:(id)child;
- (unint64_t)numberOfChildren;
- (unint64_t)numberOfDescendants;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)suggestionsLostMessageSearchResultCount;
- (unsigned)mailboxID;
- (void)addToPostOrderTraversal:(id)traversal;
- (void)dealloc;
- (void)flushCriteria;
- (void)invalidate;
- (void)removeChild:(id)child;
- (void)saveUserInfo;
- (void)setCriterion:(id)criterion;
- (void)setLastViewedMessageID:(id)d;
- (void)setName:(id)name;
- (void)setParent:(id)parent;
- (void)setRepresentedAccount:(id)account;
- (void)setUserInfoBool:(BOOL)bool forKey:(id)key;
- (void)setUserInfoObject:(id)object forKey:(id)key;
- (void)setUserInfoWithDictionary:(id)dictionary;
- (void)sortChildren;
- (void)updateMostRecentStatusCount:(unint64_t)count;
- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)count;
@end

@implementation MFMailboxUid

+ (id)fileURLForMailboxURL:(id)l
{
  v4 = [MailAccount accountWithURL:?];
  result = [objc_msgSend(-[MailAccount path](v4 "path")];
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x277CBEBC0];

    return [v7 fileURLWithPath:v6];
  }

  return result;
}

- (void)dealloc
{
  pathComponent = self->_pathComponent;
  if (pathComponent && self->_account)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    pathComponent = self->_pathComponent;
  }

  v5.receiver = self;
  v5.super_class = MFMailboxUid;
  [(MFMailboxUid *)&v5 dealloc];
}

- (MFMailboxUid)init
{
  v7.receiver = self;
  v7.super_class = MFMailboxUid;
  v2 = [(MFMailboxUid *)&v7 init];
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    v4 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
    v5 = CFUUIDCreateString(v3, v4);

    v2->uniqueId = &v5->isa;
    v2->_mailboxID = -1;
  }

  return v2;
}

- (MFMailboxUid)initWithAccount:(id)account
{
  v4 = [(MFMailboxUid *)self init];
  if (v4)
  {
    v4->_account = [MEMORY[0x277D24FC0] weakReferenceWithObject:account];
    v4->_attributes = 18;
  }

  return v4;
}

- (id)_dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  attributes = [(MFMailboxUid *)self attributes];
  v4 = MEMORY[0x277CBEB38];
  name = [(MFMailboxUid *)self name];
  v6 = [v4 dictionaryWithObjectsAndKeys:{name, @"MailboxName", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", attributes), @"MailboxAttributes", 0}];
  if ((attributes & 1) == 0)
  {
    children = [(MFMailboxUid *)self children];
    v8 = [children count];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(children);
            }

            [v9 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * v13++), "dictionaryRepresentation")}];
          }

          while (v11 != v13);
          v11 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      [v6 setObject:v9 forKeyedSubscript:@"MailboxChildren"];
    }
  }

  extraAttributes = [(MFMailboxUid *)self extraAttributes];
  if (extraAttributes)
  {
    [v6 setObject:extraAttributes forKeyedSubscript:@"MailboxExtraAttributes"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)displayName
{
  [(MFMailboxUid *)self mf_lock];
  displayName = [(MailAccount *)self->_representedAccount displayName];
  [(MFMailboxUid *)self mf_unlock];
  if (displayName && ![displayName isEqualToString:&stru_2869ED3E0])
  {
    return displayName;
  }

  account = [(MFMailboxUid *)self account];
  if ((self->_attributes & 0x10) != 0)
  {

    return [account displayName];
  }

  else if (account)
  {
    pathComponent = self->_pathComponent;

    return [account _pathComponentForUidName:pathComponent];
  }

  else
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"*** Orphaned mailbox %@", self->_pathComponent];
  }
}

- (id)name
{
  if ((self->_attributes & 0x10) != 0)
  {
    account = [(MFMailboxUid *)self account];

    return [account displayName];
  }

  else
  {
    retainedReference = [(MFWeakReferenceHolder *)self->_parent retainedReference];
    if (retainedReference)
    {
      pathComponent = self->_pathComponent;

      return pathComponent;
    }

    else
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Orphaned mailbox %@", self->_pathComponent];

      self->_parent = 0;
      return v7;
    }
  }
}

+ (id)specialNameForType:(int)type
{
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        v3 = @"SENT_MESSAGES_SPECIAL_MAILBOX_NAME";
        v4 = @"Sent";
      }

      else
      {
        v3 = @"DRAFTS_SPECIAL_MAILBOX_NAME";
        v4 = @"Drafts";
      }

      return MFLookupLocalizedString(v3, v4, 0);
    }

    if (type == 6)
    {
      v3 = @"OUTBOX_SPECIAL_MAILBOX_NAME";
      v4 = @"Outbox";
      return MFLookupLocalizedString(v3, v4, 0);
    }

    if (type == 7)
    {
      v3 = @"INBOX_SPECIAL_MAILBOX_NAME";
      v4 = @"Inbox";
      return MFLookupLocalizedString(v3, v4, 0);
    }

    return 0;
  }

  if (type == 1)
  {
    v3 = @"JUNK_SPECIAL_MAILBOX_NAME";
    v4 = @"Junk";
    return MFLookupLocalizedString(v3, v4, 0);
  }

  if (type == 2)
  {
    v3 = @"ARCHIVE_SPECIAL_MAILBOX_NAME";
    v4 = @"Archive";
    return MFLookupLocalizedString(v3, v4, 0);
  }

  if (type != 3)
  {
    return 0;
  }

  v3 = @"TRASH_SPECIAL_MAILBOX_NAME";
  v4 = @"Trash";
  return MFLookupLocalizedString(v3, v4, 0);
}

- (id)displayNameUsingSpecialNames
{
  type = [(MFMailboxUid *)self type];
  result = [-[MFMailboxUid account](self "account")];
  if (!result)
  {
    result = [objc_opt_class() specialNameForType:type];
    if (!result)
    {

      return [(MFMailboxUid *)self displayName];
    }
  }

  return result;
}

- (void)setName:(id)name
{
  if (([name isEqual:self->_pathComponent] & 1) == 0)
  {
    [(MFMailboxUid *)self mf_lock];

    self->_pathComponent = name;
    self->_realFullPath = 0;
    if ([(MFMailboxUid *)self URLString])
    {

      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (id)accountDisplayName
{
  representedAccount = [(MFMailboxUid *)self representedAccount];

  return [representedAccount displayName];
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v3 = [-[MFMailboxUid account](self "account")];
  uRLString = [(MFMailboxUid *)self URLString];

  return [v3 serverUnreadOnlyOnServerCountForMailbox:uRLString];
}

- (int64_t)statusCountDelta
{
  v3 = [-[MFMailboxUid account](self "account")];
  uRLString = [(MFMailboxUid *)self URLString];

  return [v3 statusCountDeltaForMailbox:uRLString];
}

- (void)updateMostRecentStatusCount:(unint64_t)count
{
  v5 = [-[MFMailboxUid account](self "account")];
  uRLString = [(MFMailboxUid *)self URLString];
  if ([v5 mostRecentStatusCountForMailbox:uRLString] != count)
  {
    [v5 setMostRecentStatusCount:count forMailbox:uRLString];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"MailboxUserInfoDidChange" object:self];
  }
}

- (id)_mutableChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children copy];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (BOOL)hasChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = (self->_attributes & 0x10) != 0 || [(NSMutableArray *)self->_children count]!= 0;
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)depthFirstEnumerator
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [objc_allocWithZone(_MFMailboxUidEnumerator) initWithMailbox:self];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
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
  v16 = *MEMORY[0x277D85DE8];
  [(MFMailboxUid *)self mf_lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = self->_children;
  v4 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(children);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) numberOfDescendants] + 1;
      }

      v5 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [(MFMailboxUid *)self mf_unlock];
  v9 = *MEMORY[0x277D85DE8];
  return v6;
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
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children indexOfObject:child];
  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (id)childWithExtraAttribute:(id)attribute
{
  result = [attribute length];
  if (result)
  {

    return _MFChildWithPredicate(self, mailboxHasExtraAttribute, attribute);
  }

  return result;
}

- (id)descendantWithExtraAttribute:(id)attribute
{
  if (![attribute length])
  {
    return 0;
  }

  [(MFMailboxUid *)self mf_lock];
  depthFirstEnumerator = [(MFMailboxUid *)self depthFirstEnumerator];
  do
  {
    nextObject = [depthFirstEnumerator nextObject];
    v7 = nextObject;
  }

  while (nextObject && ![objc_msgSend(nextObject "extraAttributes")]);
  [(MFMailboxUid *)self mf_unlock];
  return v7;
}

- (id)mutableCopyOfChildren
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableArray *)self->_children mutableCopy];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)fullPathNonNil
{
  result = [(MFMailboxUid *)self fullPath];
  if (!result)
  {
    return *MEMORY[0x277CBEEE8];
  }

  return result;
}

- (BOOL)setChildren:(id)children
{
  v32 = *MEMORY[0x277D85DE8];
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
  if ([children count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [children countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(children);
          }

          bindParentAndChild(self, *(*(&v27 + 1) + 8 * i));
        }

        v7 = [children countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    if (!mutableCopyOfChildren || ([mutableCopyOfChildren isEqualToArray:children] & 1) == 0)
    {
      v10 = 1;
      goto LABEL_18;
    }
  }

  else if (mutableCopyOfChildren)
  {
    v10 = [mutableCopyOfChildren count] != 0;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_18:
  [(MFMailboxUid *)self mf_unlock];
  if ([mutableCopyOfChildren count])
  {
    v24 = v10;
    v11 = [mutableCopyOfChildren arrayByApplyingSelector:sel_URLStringNonNil];
    v25 = [mutableCopyOfChildren arrayByApplyingSelector:sel_fullPathNonNil];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [mutableCopyOfChildren count];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *MEMORY[0x277CBEEE8];
      do
      {
        v17 = [mutableCopyOfChildren objectAtIndex:v15];
        if (![v17 parent])
        {
          v18 = [v11 objectAtIndex:v15];
          if (v18 != v16)
          {
            v19 = v18;
            v20 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v18 forKey:@"URLString"];
            [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
            if ([v17 isStore])
            {
              v21 = [MailAccount mailboxUidFromActiveAccountsForURL:v19];
              if (!v21 || ([v21 isValid] & 1) == 0)
              {
                [v12 addObject:v19];
                [v26 addObject:{objc_msgSend(v25, "objectAtIndex:", v15)}];
              }
            }
          }
        }

        ++v15;
      }

      while (v14 != v15);
    }

    if ([v12 count])
    {
      [-[MFMailboxUid account](self "account")];
    }

    v10 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)sortChildren
{
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children sortUsingFunction:_MFCompareMailboxUidsNS context:[(MFMailboxUid *)self account]];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)removeChild:(id)child
{
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children removeObject:child];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setParent:(id)parent
{
  if ([(MFMailboxUid *)self parent]!= parent)
  {
    bindParentAndChild(parent, &self->super.isa);
    [(MFMailboxUid *)self mf_lock];
    if ([(MFMailboxUid *)self URLString])
    {

      self->_criterion = 0;
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (void)flushCriteria
{
  [(MFMailboxUid *)self mf_lock];

  self->_criterion = 0;

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setRepresentedAccount:(id)account
{
  [(MFMailboxUid *)self mf_lock];
  representedAccount = self->_representedAccount;
  if (representedAccount != account)
  {

    self->_representedAccount = account;
  }

  [(MFMailboxUid *)self mf_unlock];
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

- (id)topMailbox
{
  do
  {
    selfCopy = self;
    self = [(MFMailboxUid *)self parent];
  }

  while (self);
  return selfCopy;
}

- (id)rootMailbox
{
  result = [(MFMailboxUid *)self topMailbox];
  if ((*(result + 40) & 0x10) == 0)
  {
    return 0;
  }

  return result;
}

- (id)account
{
  result = [(MFMailboxUid *)self rootMailbox];
  if (result)
  {
    v3 = *(result + 3);

    return [v3 reference];
  }

  return result;
}

- (void)invalidate
{
  rootMailbox = [(MFMailboxUid *)self rootMailbox];
  [(MFMailboxUid *)self saveUserInfo];
  if (rootMailbox == self)
  {

    self->_account = 0;
    self->_attributes &= ~0x10u;
  }

  [-[MFMailboxUid parent](self "parent")];
  if (rootMailbox)
  {
    uRLString = [(MFMailboxUid *)self URLString];
    if (uRLString)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:uRLString forKey:@"URLString"];
    }

    else
    {
      v5 = 0;
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

    [defaultCenter postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:self userInfo:v5];
  }
}

- (BOOL)isStandardizedMailboxUid
{
  type = [(MFMailboxUid *)self type];

  return [MFMailboxUid isStandardizedMailboxUidType:type];
}

- (BOOL)isSpecialMailboxUid
{
  account = [(MFMailboxUid *)self account];

  return [account isSpecialMailbox:self];
}

- (BOOL)isSentMailboxUid
{
  v3 = objc_opt_class();
  type = [(MFMailboxUid *)self type];

  return [v3 isSentMailboxType:type];
}

- (BOOL)isOutgoingMailboxUid
{
  type = [(MFMailboxUid *)self type];
  v3 = objc_opt_class();

  return [v3 isOutgoingMailboxType:type];
}

- (BOOL)isNotesMailboxUid
{
  v3 = [-[MFMailboxUid name](self "name")];
  if (v3)
  {
    parent = [(MFMailboxUid *)self parent];
    LOBYTE(v3) = parent == [-[MFMailboxUid account](self "account")];
  }

  return v3;
}

- (id)accountRelativePath
{
  account = [(MFMailboxUid *)self account];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v5 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, 0, &stru_2869ED3E0, _mailboxPathPrefix, 0, 0);
  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (id)fullPath
{
  account = [(MFMailboxUid *)self account];
  path = [account path];
  mailboxPathExtension = [account mailboxPathExtension];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, 0, path, _mailboxPathPrefix, mailboxPathExtension, 0);
  [(MFMailboxUid *)self mf_unlock];
  return v7;
}

- (id)realFullPath
{
  realFullPath = self->_realFullPath;
  if (!realFullPath)
  {
    v4 = [-[MFMailboxUid fullPath](self "fullPath")];
    [(MFMailboxUid *)self mf_lock];
    if (!self->_realFullPath)
    {
      self->_realFullPath = v4;
    }

    [(MFMailboxUid *)self mf_unlock];
    realFullPath = self->_realFullPath;
  }

  v5 = realFullPath;

  return v5;
}

- (id)tildeAbbreviatedPath
{
  account = [(MFMailboxUid *)self account];
  tildeAbbreviatedPath = [account tildeAbbreviatedPath];
  mailboxPathExtension = [account mailboxPathExtension];
  _mailboxPathPrefix = [account _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, 0, tildeAbbreviatedPath, _mailboxPathPrefix, mailboxPathExtension, 0);
  [(MFMailboxUid *)self mf_unlock];
  return v7;
}

- (id)pathRelativeToMailbox:(id)mailbox
{
  if (!mailbox)
  {
    return 0;
  }

  account = [(MFMailboxUid *)self account];

  return _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, mailbox, &stru_2869ED3E0, 0, 0, 0);
}

- (id)pathRelativeToMailboxForDisplay:(id)display
{
  if (!display)
  {
    return 0;
  }

  account = [(MFMailboxUid *)self account];

  return _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, account, display, &stru_2869ED3E0, 0, 0, 1);
}

- (id)URL
{
  account = [(MFMailboxUid *)self account];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{account, @"Account", accountRelativePath, @"RelativePath", 0}];

  return [MailAccount URLForInfo:v5];
}

- (id)URLStringWithAccount:(id)account
{
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{account, @"Account", -[MFMailboxUid accountRelativePath](self, "accountRelativePath"), @"RelativePath", 0}];
  v4 = [MailAccount URLForInfo:v3];

  return [v4 absoluteString];
}

- (id)oldURLString
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  ancestralAccount = [(MFMailboxUid *)self ancestralAccount];
  accountRelativePath = [(MFMailboxUid *)self accountRelativePath];
  v6 = [v3 initWithObjectsAndKeys:{ancestralAccount, @"Account", accountRelativePath, @"RelativePath", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"IncludeDefaultSecurePortNumber", 0}];
  v7 = [MailAccount URLForInfo:v6];

  return [v7 absoluteString];
}

- (id)URLString
{
  criterion = [(MFMailboxUid *)self criterion];
  if ([criterion criterionType] == 22)
  {
    v3 = [objc_msgSend(criterion "expression")];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)mailboxID
{
  result = self->_mailboxID;
  if (result == -1)
  {
    uRLString = [(MFMailboxUid *)self URLString];
    if ([uRLString length])
    {
      result = [objc_msgSend(-[MFMailboxUid account](self "account")];
      self->_mailboxID = result;
    }

    else
    {
      return self->_mailboxID;
    }
  }

  return result;
}

- (id)URLStringNonNil
{
  result = [(MFMailboxUid *)self URLString];
  if (!result)
  {
    return *MEMORY[0x277CBEEE8];
  }

  return result;
}

- (int64_t)indexToInsertChildMailboxUid:(id)uid
{
  if (-[MFMailboxUid childWithName:](self, "childWithName:", [uid displayName]))
  {
    return -1;
  }

  mutableCopyOfChildren = [(MFMailboxUid *)self mutableCopyOfChildren];
  if (!mutableCopyOfChildren)
  {
    return -1;
  }

  v7 = mutableCopyOfChildren;
  [(MFMailboxUid *)self mf_lock];
  v9.length = [v7 count];
  v9.location = 0;
  v8 = CFArrayBSearchValues(v7, v9, uid, _MFCompareMailboxUids, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v8;
}

- (BOOL)isDescendantOfMailbox:(id)mailbox
{
  if (self)
  {
    selfCopy = self;
    do
    {
      parent = [(MFMailboxUid *)selfCopy parent];
      LOBYTE(self) = selfCopy == mailbox;
      if (selfCopy == mailbox)
      {
        break;
      }

      selfCopy = parent;
    }

    while (parent);
  }

  return self;
}

- (id)_privacySafeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p> ID=%u type=%@ attributes=%d", v4, self, self->_mailboxID, NSStringFromMailboxUidType(-[MFMailboxUid type](self, "type")), -[MFMailboxUid attributes](self, "attributes")];
}

- (NSString)ef_publicDescription
{
  if ([objc_msgSend(MEMORY[0x277D07148] "currentDevice")])
  {

    return [(MFMailboxUid *)self description];
  }

  else
  {

    return [(MFMailboxUid *)self _privacySafeDescription];
  }
}

- (id)_loadUserInfo
{
  result = [-[MFMailboxUid fullPath](self "fullPath")];
  if (result)
  {
    result = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:result];
    if (!result)
    {
      v3 = MEMORY[0x277CBEB38];

      return [v3 dictionary];
    }
  }

  return result;
}

- (id)userInfoObjectForKey:(id)key
{
  [(MFMailboxUid *)self mf_lock];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    [(MFMailboxUid *)self mf_unlock];
    _loadUserInfo = [(MFMailboxUid *)self _loadUserInfo];
    if (_loadUserInfo && [(MFMailboxUid *)self mergeWithUserInfo:_loadUserInfo])
    {
      [_loadUserInfo setObject:@"YES" forKey:@"IsDirty"];
    }

    [(MFMailboxUid *)self mf_lock];
    userInfo = self->_userInfo;
    if (!userInfo)
    {
      userInfo = _loadUserInfo;
      self->_userInfo = userInfo;
    }
  }

  v7 = [(NSMutableDictionary *)userInfo objectForKey:key];
  [(MFMailboxUid *)self mf_unlock];
  return v7;
}

- (void)setUserInfoObject:(id)object forKey:(id)key
{
  [(MFMailboxUid *)self mf_lock];
  userInfo = self->_userInfo;
  if (userInfo)
  {
    v8 = 0;
  }

  else
  {
    [(MFMailboxUid *)self mf_unlock];
    _loadUserInfo = [(MFMailboxUid *)self _loadUserInfo];
    v8 = [(MFMailboxUid *)self mergeWithUserInfo:_loadUserInfo];
    [(MFMailboxUid *)self mf_lock];
    userInfo = self->_userInfo;
    if (!userInfo)
    {
      userInfo = _loadUserInfo;
      self->_userInfo = userInfo;
    }
  }

  v10 = [(NSMutableDictionary *)userInfo objectForKey:key];
  if (!v10 || ([v10 isEqual:object] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_userInfo setObject:object forKey:key];
    goto LABEL_10;
  }

  if (v8)
  {
LABEL_10:
    [(NSMutableDictionary *)self->_userInfo setObject:@"YES" forKey:@"IsDirty"];
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (BOOL)userInfoBoolForKey:(id)key
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:key];
  if (v3)
  {

    LOBYTE(v3) = NSBOOLFromString();
  }

  return v3;
}

- (void)setUserInfoBool:(BOOL)bool forKey:(id)key
{
  v6 = NSStringFromBOOL();

  [(MFMailboxUid *)self setUserInfoObject:v6 forKey:key];
}

- (void)saveUserInfo
{
  if ([(MFMailboxUid *)self type]!= 8)
  {
    [(MFMailboxUid *)self mf_lock];
    if ([(NSMutableDictionary *)self->_userInfo objectForKey:@"IsDirty"])
    {
      [(NSMutableDictionary *)self->_userInfo removeObjectForKey:@"IsDirty"];
      fullPath = [(MFMailboxUid *)self fullPath];
      if (fullPath)
      {
        v4 = fullPath;
        if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
        {
          [v4 mf_makeDirectoryWithMode:448];
        }

        v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:self->_userInfo format:100 options:0 error:0];
        if (v5)
        {
          [v5 writeToFile:objc_msgSend(v4 options:"stringByAppendingPathComponent:" error:{@"Info.plist", 1073741825, 0}];
        }
      }
    }

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (id)userInfoDictionary
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableDictionary *)self->_userInfo copy];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (void)setUserInfoWithDictionary:(id)dictionary
{
  keyEnumerator = [dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      -[MFMailboxUid setUserInfoObject:forKey:](self, "setUserInfoObject:forKey:", [dictionary objectForKey:nextObject2], nextObject2);
      nextObject2 = [keyEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (id)userInfoForSerialization
{
  if ([(MFMailboxUid *)self type]== 8)
  {
    return 0;
  }

  [(MFMailboxUid *)self mf_lock];
  v3 = [(NSMutableDictionary *)self->_userInfo mutableCopy];
  [v3 removeObjectForKey:@"IsDirty"];
  [(MFMailboxUid *)self mf_unlock];
  return v3;
}

- (id)ancestralAccount
{
  do
  {
    if (([(MFMailboxUid *)self attributes]& 0x10) != 0)
    {
      break;
    }

    self = [(MFMailboxUid *)self parent];
  }

  while (self);

  return [(MFMailboxUid *)self account];
}

- (id)criterion
{
  [(MFMailboxUid *)self mf_lock];
  criterion = self->_criterion;
  if (criterion)
  {
    v4 = criterion;
    [(MFMailboxUid *)self mf_unlock];
    if (v4)
    {
      return v4;
    }
  }

  else
  {
    [(MFMailboxUid *)self mf_unlock];
  }

  v5 = [(MFMailboxUid *)self URLStringWithAccount:[(MFMailboxUid *)self ancestralAccount]];
  [(MFMailboxUid *)self mf_lock];
  v6 = self->_criterion;
  if (v6 || !v5)
  {
    v4 = v6;
  }

  else
  {
    v4 = [MFMessageCriterion criterionForMailboxURL:v5];
    self->_criterion = v4;
  }

  [(MFMailboxUid *)self mf_unlock];
  return v4;
}

- (void)setCriterion:(id)criterion
{
  if (self->_criterion != criterion)
  {
    [(MFMailboxUid *)self mf_lock];

    self->_criterion = criterion;

    [(MFMailboxUid *)self mf_unlock];
  }
}

- (id)store
{
  result = [-[MFMailboxUid account](self "account")];
  if (!result)
  {

    return [MFLibraryStore storeWithMailbox:self];
  }

  return result;
}

- (BOOL)shouldRestoreMessagesAfterFailedDelete
{
  account = [(MFMailboxUid *)self account];

  return [account shouldRestoreMessagesAfterFailedDelete];
}

- (void)setLastViewedMessageID:(id)d
{
  [(MFMailboxUid *)self setUserInfoObject:d forKey:@"LastViewedMessageInMailbox"];
  date = [MEMORY[0x277CBEAA8] date];

  [(MFMailboxUid *)self setUserInfoObject:date forKey:@"LastViewedMessageInMailboxDate"];
}

- (void)addToPostOrderTraversal:(id)traversal
{
  v16 = *MEMORY[0x277D85DE8];
  [(MFMailboxUid *)self mf_lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = self->_children;
  v6 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v11 + 1) + 8 * i) addToPostOrderTraversal:traversal];
      }

      v7 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MFMailboxUid *)self mf_unlock];
  [traversal addObject:self];
  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)suggestionsLostMessageSearchResultCount
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchResultCount"];

  return [v2 unsignedIntegerValue];
}

- (double)suggestionsLostMessageSearchTimestamp
{
  v2 = [(MFMailboxUid *)self userInfoObjectForKey:@"suggestionsLostMessageSearchTimestamp"];

  [v2 doubleValue];
  return result;
}

- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)count
{
  -[MFMailboxUid setUserInfoObject:forKey:](self, "setUserInfoObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count], @"suggestionsLostMessageSearchResultCount");
  v4 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  -[MFMailboxUid setUserInfoObject:forKey:](self, "setUserInfoObject:forKey:", [v4 numberWithDouble:?], @"suggestionsLostMessageSearchTimestamp");

  [(MFMailboxUid *)self saveUserInfo];
}

- (MFInvocationQueue)attachmentDownloadQueue
{
  AssociatedObject = objc_getAssociatedObject(self, MFMailboxUidAttachmentQueue);
  if (!AssociatedObject)
  {
    AssociatedObject = objc_alloc_init(MFInvocationQueue);
    objc_setAssociatedObject(self, MFMailboxUidAttachmentQueue, AssociatedObject, 0x301);
  }

  return AssociatedObject;
}

@end