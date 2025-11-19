@interface MFMailboxUid
+ (id)fileURLForMailboxURL:(id)a3;
+ (id)specialNameForType:(int)a3;
- (BOOL)hasChildren;
- (BOOL)isDescendantOfMailbox:(id)a3;
- (BOOL)isNotesMailboxUid;
- (BOOL)isOutgoingMailboxUid;
- (BOOL)isSentMailboxUid;
- (BOOL)isSpecialMailboxUid;
- (BOOL)isStandardizedMailboxUid;
- (BOOL)setChildren:(id)a3;
- (BOOL)shouldRestoreMessagesAfterFailedDelete;
- (BOOL)userInfoBoolForKey:(id)a3;
- (MFInvocationQueue)attachmentDownloadQueue;
- (MFMailboxUid)init;
- (MFMailboxUid)initWithAccount:(id)a3;
- (NSString)ef_publicDescription;
- (double)suggestionsLostMessageSearchTimestamp;
- (id)URL;
- (id)URLString;
- (id)URLStringNonNil;
- (id)URLStringWithAccount:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_loadUserInfo;
- (id)_mutableChildren;
- (id)_privacySafeDescription;
- (id)account;
- (id)accountDisplayName;
- (id)accountRelativePath;
- (id)ancestralAccount;
- (id)childAtIndex:(unint64_t)a3;
- (id)childWithExtraAttribute:(id)a3;
- (id)criterion;
- (id)depthFirstEnumerator;
- (id)descendantWithExtraAttribute:(id)a3;
- (id)displayName;
- (id)displayNameUsingSpecialNames;
- (id)fullPath;
- (id)fullPathNonNil;
- (id)mutableCopyOfChildren;
- (id)name;
- (id)oldURLString;
- (id)pathRelativeToMailbox:(id)a3;
- (id)pathRelativeToMailboxForDisplay:(id)a3;
- (id)realFullPath;
- (id)representedAccount;
- (id)rootMailbox;
- (id)store;
- (id)tildeAbbreviatedPath;
- (id)topMailbox;
- (id)userInfoDictionary;
- (id)userInfoForSerialization;
- (id)userInfoObjectForKey:(id)a3;
- (int64_t)indexToInsertChildMailboxUid:(id)a3;
- (int64_t)statusCountDelta;
- (unint64_t)indexOfChild:(id)a3;
- (unint64_t)numberOfChildren;
- (unint64_t)numberOfDescendants;
- (unint64_t)serverUnreadOnlyOnServerCount;
- (unint64_t)suggestionsLostMessageSearchResultCount;
- (unsigned)mailboxID;
- (void)addToPostOrderTraversal:(id)a3;
- (void)dealloc;
- (void)flushCriteria;
- (void)invalidate;
- (void)removeChild:(id)a3;
- (void)saveUserInfo;
- (void)setCriterion:(id)a3;
- (void)setLastViewedMessageID:(id)a3;
- (void)setName:(id)a3;
- (void)setParent:(id)a3;
- (void)setRepresentedAccount:(id)a3;
- (void)setUserInfoBool:(BOOL)a3 forKey:(id)a4;
- (void)setUserInfoObject:(id)a3 forKey:(id)a4;
- (void)setUserInfoWithDictionary:(id)a3;
- (void)sortChildren;
- (void)updateMostRecentStatusCount:(unint64_t)a3;
- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)a3;
@end

@implementation MFMailboxUid

+ (id)fileURLForMailboxURL:(id)a3
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

- (MFMailboxUid)initWithAccount:(id)a3
{
  v4 = [(MFMailboxUid *)self init];
  if (v4)
  {
    v4->_account = [MEMORY[0x277D24FC0] weakReferenceWithObject:a3];
    v4->_attributes = 18;
  }

  return v4;
}

- (id)_dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(MFMailboxUid *)self attributes];
  v4 = MEMORY[0x277CBEB38];
  v5 = [(MFMailboxUid *)self name];
  v6 = [v4 dictionaryWithObjectsAndKeys:{v5, @"MailboxName", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v3), @"MailboxAttributes", 0}];
  if ((v3 & 1) == 0)
  {
    v7 = [(MFMailboxUid *)self children];
    v8 = [v7 count];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
              objc_enumerationMutation(v7);
            }

            [v9 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * v13++), "dictionaryRepresentation")}];
          }

          while (v11 != v13);
          v11 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v11);
      }

      [v6 setObject:v9 forKeyedSubscript:@"MailboxChildren"];
    }
  }

  v14 = [(MFMailboxUid *)self extraAttributes];
  if (v14)
  {
    [v6 setObject:v14 forKeyedSubscript:@"MailboxExtraAttributes"];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)displayName
{
  [(MFMailboxUid *)self mf_lock];
  v3 = [(MailAccount *)self->_representedAccount displayName];
  [(MFMailboxUid *)self mf_unlock];
  if (v3 && ![v3 isEqualToString:&stru_2869ED3E0])
  {
    return v3;
  }

  v4 = [(MFMailboxUid *)self account];
  if ((self->_attributes & 0x10) != 0)
  {

    return [v4 displayName];
  }

  else if (v4)
  {
    pathComponent = self->_pathComponent;

    return [v4 _pathComponentForUidName:pathComponent];
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
    v6 = [(MFMailboxUid *)self account];

    return [v6 displayName];
  }

  else
  {
    v3 = [(MFWeakReferenceHolder *)self->_parent retainedReference];
    if (v3)
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

+ (id)specialNameForType:(int)a3
{
  if (a3 > 3)
  {
    if (a3 <= 5)
    {
      if (a3 == 4)
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

    if (a3 == 6)
    {
      v3 = @"OUTBOX_SPECIAL_MAILBOX_NAME";
      v4 = @"Outbox";
      return MFLookupLocalizedString(v3, v4, 0);
    }

    if (a3 == 7)
    {
      v3 = @"INBOX_SPECIAL_MAILBOX_NAME";
      v4 = @"Inbox";
      return MFLookupLocalizedString(v3, v4, 0);
    }

    return 0;
  }

  if (a3 == 1)
  {
    v3 = @"JUNK_SPECIAL_MAILBOX_NAME";
    v4 = @"Junk";
    return MFLookupLocalizedString(v3, v4, 0);
  }

  if (a3 == 2)
  {
    v3 = @"ARCHIVE_SPECIAL_MAILBOX_NAME";
    v4 = @"Archive";
    return MFLookupLocalizedString(v3, v4, 0);
  }

  if (a3 != 3)
  {
    return 0;
  }

  v3 = @"TRASH_SPECIAL_MAILBOX_NAME";
  v4 = @"Trash";
  return MFLookupLocalizedString(v3, v4, 0);
}

- (id)displayNameUsingSpecialNames
{
  v3 = [(MFMailboxUid *)self type];
  result = [-[MFMailboxUid account](self "account")];
  if (!result)
  {
    result = [objc_opt_class() specialNameForType:v3];
    if (!result)
    {

      return [(MFMailboxUid *)self displayName];
    }
  }

  return result;
}

- (void)setName:(id)a3
{
  if (([a3 isEqual:self->_pathComponent] & 1) == 0)
  {
    [(MFMailboxUid *)self mf_lock];

    self->_pathComponent = a3;
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
  v2 = [(MFMailboxUid *)self representedAccount];

  return [v2 displayName];
}

- (unint64_t)serverUnreadOnlyOnServerCount
{
  v3 = [-[MFMailboxUid account](self "account")];
  v4 = [(MFMailboxUid *)self URLString];

  return [v3 serverUnreadOnlyOnServerCountForMailbox:v4];
}

- (int64_t)statusCountDelta
{
  v3 = [-[MFMailboxUid account](self "account")];
  v4 = [(MFMailboxUid *)self URLString];

  return [v3 statusCountDeltaForMailbox:v4];
}

- (void)updateMostRecentStatusCount:(unint64_t)a3
{
  v5 = [-[MFMailboxUid account](self "account")];
  v6 = [(MFMailboxUid *)self URLString];
  if ([v5 mostRecentStatusCountForMailbox:v6] != a3)
  {
    [v5 setMostRecentStatusCount:a3 forMailbox:v6];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];

    [v7 postNotificationName:@"MailboxUserInfoDidChange" object:self];
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

- (id)childAtIndex:(unint64_t)a3
{
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children objectAtIndex:a3];
  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (unint64_t)indexOfChild:(id)a3
{
  [(MFMailboxUid *)self mf_lock];
  v5 = [(NSMutableArray *)self->_children indexOfObject:a3];
  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (id)childWithExtraAttribute:(id)a3
{
  result = [a3 length];
  if (result)
  {

    return _MFChildWithPredicate(self, mailboxHasExtraAttribute, a3);
  }

  return result;
}

- (id)descendantWithExtraAttribute:(id)a3
{
  if (![a3 length])
  {
    return 0;
  }

  [(MFMailboxUid *)self mf_lock];
  v5 = [(MFMailboxUid *)self depthFirstEnumerator];
  do
  {
    v6 = [v5 nextObject];
    v7 = v6;
  }

  while (v6 && ![objc_msgSend(v6 "extraAttributes")]);
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

- (BOOL)setChildren:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  [(MFMailboxUid *)self mf_lock];
  if ([(MFMailboxUid *)self isValid])
  {
    v5 = [(MFMailboxUid *)self mutableCopyOfChildren];
  }

  else
  {
    v5 = 0;
  }

  [(NSMutableArray *)self->_children removeAllObjects];
  if ([a3 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(a3);
          }

          bindParentAndChild(self, *(*(&v27 + 1) + 8 * i));
        }

        v7 = [a3 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    if (!v5 || ([v5 isEqualToArray:a3] & 1) == 0)
    {
      v10 = 1;
      goto LABEL_18;
    }
  }

  else if (v5)
  {
    v10 = [v5 count] != 0;
    goto LABEL_18;
  }

  v10 = 0;
LABEL_18:
  [(MFMailboxUid *)self mf_unlock];
  if ([v5 count])
  {
    v24 = v10;
    v11 = [v5 arrayByApplyingSelector:sel_URLStringNonNil];
    v25 = [v5 arrayByApplyingSelector:sel_fullPathNonNil];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [v5 count];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *MEMORY[0x277CBEEE8];
      do
      {
        v17 = [v5 objectAtIndex:v15];
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

- (void)removeChild:(id)a3
{
  [(MFMailboxUid *)self mf_lock];
  [(NSMutableArray *)self->_children removeObject:a3];

  [(MFMailboxUid *)self mf_unlock];
}

- (void)setParent:(id)a3
{
  if ([(MFMailboxUid *)self parent]!= a3)
  {
    bindParentAndChild(a3, &self->super.isa);
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

- (void)setRepresentedAccount:(id)a3
{
  [(MFMailboxUid *)self mf_lock];
  representedAccount = self->_representedAccount;
  if (representedAccount != a3)
  {

    self->_representedAccount = a3;
  }

  [(MFMailboxUid *)self mf_unlock];
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

- (id)topMailbox
{
  do
  {
    v2 = self;
    self = [(MFMailboxUid *)self parent];
  }

  while (self);
  return v2;
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
  v3 = [(MFMailboxUid *)self rootMailbox];
  [(MFMailboxUid *)self saveUserInfo];
  if (v3 == self)
  {

    self->_account = 0;
    self->_attributes &= ~0x10u;
  }

  [-[MFMailboxUid parent](self "parent")];
  if (v3)
  {
    v4 = [(MFMailboxUid *)self URLString];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"URLString"];
    }

    else
    {
      v5 = 0;
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];

    [v6 postNotificationName:@"MailboxUidDidBecomeInvalidNotification" object:self userInfo:v5];
  }
}

- (BOOL)isStandardizedMailboxUid
{
  v2 = [(MFMailboxUid *)self type];

  return [MFMailboxUid isStandardizedMailboxUidType:v2];
}

- (BOOL)isSpecialMailboxUid
{
  v3 = [(MFMailboxUid *)self account];

  return [v3 isSpecialMailbox:self];
}

- (BOOL)isSentMailboxUid
{
  v3 = objc_opt_class();
  v4 = [(MFMailboxUid *)self type];

  return [v3 isSentMailboxType:v4];
}

- (BOOL)isOutgoingMailboxUid
{
  v2 = [(MFMailboxUid *)self type];
  v3 = objc_opt_class();

  return [v3 isOutgoingMailboxType:v2];
}

- (BOOL)isNotesMailboxUid
{
  v3 = [-[MFMailboxUid name](self "name")];
  if (v3)
  {
    v4 = [(MFMailboxUid *)self parent];
    LOBYTE(v3) = v4 == [-[MFMailboxUid account](self "account")];
  }

  return v3;
}

- (id)accountRelativePath
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v5 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v3, 0, &stru_2869ED3E0, v4, 0, 0);
  [(MFMailboxUid *)self mf_unlock];
  return v5;
}

- (id)fullPath
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 path];
  v5 = [v3 mailboxPathExtension];
  v6 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v3, 0, v4, v6, v5, 0);
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
  v3 = [(MFMailboxUid *)self account];
  v4 = [v3 tildeAbbreviatedPath];
  v5 = [v3 mailboxPathExtension];
  v6 = [v3 _mailboxPathPrefix];
  [(MFMailboxUid *)self mf_lock];
  v7 = _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v3, 0, v4, v6, v5, 0);
  [(MFMailboxUid *)self mf_unlock];
  return v7;
}

- (id)pathRelativeToMailbox:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [(MFMailboxUid *)self account];

  return _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v5, a3, &stru_2869ED3E0, 0, 0, 0);
}

- (id)pathRelativeToMailboxForDisplay:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [(MFMailboxUid *)self account];

  return _stringByAppendingPathComponentsUsingSpecialDisplayNames(self, v5, a3, &stru_2869ED3E0, 0, 0, 1);
}

- (id)URL
{
  v3 = [(MFMailboxUid *)self account];
  v4 = [(MFMailboxUid *)self accountRelativePath];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v3, @"Account", v4, @"RelativePath", 0}];

  return [MailAccount URLForInfo:v5];
}

- (id)URLStringWithAccount:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{a3, @"Account", -[MFMailboxUid accountRelativePath](self, "accountRelativePath"), @"RelativePath", 0}];
  v4 = [MailAccount URLForInfo:v3];

  return [v4 absoluteString];
}

- (id)oldURLString
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [(MFMailboxUid *)self ancestralAccount];
  v5 = [(MFMailboxUid *)self accountRelativePath];
  v6 = [v3 initWithObjectsAndKeys:{v4, @"Account", v5, @"RelativePath", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", 1), @"IncludeDefaultSecurePortNumber", 0}];
  v7 = [MailAccount URLForInfo:v6];

  return [v7 absoluteString];
}

- (id)URLString
{
  v2 = [(MFMailboxUid *)self criterion];
  if ([v2 criterionType] == 22)
  {
    v3 = [objc_msgSend(v2 "expression")];
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
    v4 = [(MFMailboxUid *)self URLString];
    if ([v4 length])
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

- (int64_t)indexToInsertChildMailboxUid:(id)a3
{
  if (-[MFMailboxUid childWithName:](self, "childWithName:", [a3 displayName]))
  {
    return -1;
  }

  v6 = [(MFMailboxUid *)self mutableCopyOfChildren];
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  [(MFMailboxUid *)self mf_lock];
  v9.length = [v7 count];
  v9.location = 0;
  v8 = CFArrayBSearchValues(v7, v9, a3, _MFCompareMailboxUids, 0);
  [(MFMailboxUid *)self mf_unlock];

  return v8;
}

- (BOOL)isDescendantOfMailbox:(id)a3
{
  if (self)
  {
    v4 = self;
    do
    {
      v5 = [(MFMailboxUid *)v4 parent];
      LOBYTE(self) = v4 == a3;
      if (v4 == a3)
      {
        break;
      }

      v4 = v5;
    }

    while (v5);
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

- (id)userInfoObjectForKey:(id)a3
{
  [(MFMailboxUid *)self mf_lock];
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    [(MFMailboxUid *)self mf_unlock];
    v6 = [(MFMailboxUid *)self _loadUserInfo];
    if (v6 && [(MFMailboxUid *)self mergeWithUserInfo:v6])
    {
      [v6 setObject:@"YES" forKey:@"IsDirty"];
    }

    [(MFMailboxUid *)self mf_lock];
    userInfo = self->_userInfo;
    if (!userInfo)
    {
      userInfo = v6;
      self->_userInfo = userInfo;
    }
  }

  v7 = [(NSMutableDictionary *)userInfo objectForKey:a3];
  [(MFMailboxUid *)self mf_unlock];
  return v7;
}

- (void)setUserInfoObject:(id)a3 forKey:(id)a4
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
    v9 = [(MFMailboxUid *)self _loadUserInfo];
    v8 = [(MFMailboxUid *)self mergeWithUserInfo:v9];
    [(MFMailboxUid *)self mf_lock];
    userInfo = self->_userInfo;
    if (!userInfo)
    {
      userInfo = v9;
      self->_userInfo = userInfo;
    }
  }

  v10 = [(NSMutableDictionary *)userInfo objectForKey:a4];
  if (!v10 || ([v10 isEqual:a3] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_userInfo setObject:a3 forKey:a4];
    goto LABEL_10;
  }

  if (v8)
  {
LABEL_10:
    [(NSMutableDictionary *)self->_userInfo setObject:@"YES" forKey:@"IsDirty"];
  }

  [(MFMailboxUid *)self mf_unlock];
}

- (BOOL)userInfoBoolForKey:(id)a3
{
  v3 = [(MFMailboxUid *)self userInfoObjectForKey:a3];
  if (v3)
  {

    LOBYTE(v3) = NSBOOLFromString();
  }

  return v3;
}

- (void)setUserInfoBool:(BOOL)a3 forKey:(id)a4
{
  v6 = NSStringFromBOOL();

  [(MFMailboxUid *)self setUserInfoObject:v6 forKey:a4];
}

- (void)saveUserInfo
{
  if ([(MFMailboxUid *)self type]!= 8)
  {
    [(MFMailboxUid *)self mf_lock];
    if ([(NSMutableDictionary *)self->_userInfo objectForKey:@"IsDirty"])
    {
      [(NSMutableDictionary *)self->_userInfo removeObjectForKey:@"IsDirty"];
      v3 = [(MFMailboxUid *)self fullPath];
      if (v3)
      {
        v4 = v3;
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

- (void)setUserInfoWithDictionary:(id)a3
{
  v5 = [a3 keyEnumerator];
  v6 = [v5 nextObject];
  if (v6)
  {
    v7 = v6;
    do
    {
      -[MFMailboxUid setUserInfoObject:forKey:](self, "setUserInfoObject:forKey:", [a3 objectForKey:v7], v7);
      v7 = [v5 nextObject];
    }

    while (v7);
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

- (void)setCriterion:(id)a3
{
  if (self->_criterion != a3)
  {
    [(MFMailboxUid *)self mf_lock];

    self->_criterion = a3;

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
  v2 = [(MFMailboxUid *)self account];

  return [v2 shouldRestoreMessagesAfterFailedDelete];
}

- (void)setLastViewedMessageID:(id)a3
{
  [(MFMailboxUid *)self setUserInfoObject:a3 forKey:@"LastViewedMessageInMailbox"];
  v4 = [MEMORY[0x277CBEAA8] date];

  [(MFMailboxUid *)self setUserInfoObject:v4 forKey:@"LastViewedMessageInMailboxDate"];
}

- (void)addToPostOrderTraversal:(id)a3
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

        [*(*(&v11 + 1) + 8 * i) addToPostOrderTraversal:a3];
      }

      v7 = [(NSMutableArray *)children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(MFMailboxUid *)self mf_unlock];
  [a3 addObject:self];
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

- (void)updateSuggestionsLostMessageSearchResultCount:(unint64_t)a3
{
  -[MFMailboxUid setUserInfoObject:forKey:](self, "setUserInfoObject:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3], @"suggestionsLostMessageSearchResultCount");
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