@interface FavoriteItem_Mailbox
- (BOOL)acceptsMessageTransfers;
- (BOOL)isEqual:(id)equal;
- (FavoriteItem_Mailbox)initWithDictionary:(id)dictionary;
- (FavoriteItem_Mailbox)initWithMailbox:(id)mailbox;
- (id)criterion;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)displayNameUsingSpecialNames;
- (id)itemID;
- (id)itemUUID;
- (id)parentItemID;
- (id)representingMailbox;
- (id)syncKey;
- (id)syncValue;
- (void)_postNotification;
- (void)wasAddedToCollection:(id)collection;
- (void)wasChangedExternally;
- (void)wasRemovedFromCollecion:(id)collecion;
@end

@implementation FavoriteItem_Mailbox

- (FavoriteItem_Mailbox)initWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v16.receiver = self;
  v16.super_class = FavoriteItem_Mailbox;
  v6 = [(FavoriteItem *)&v16 initWithType:2];
  if (v6)
  {
    representedAccount = [mailboxCopy representedAccount];
    account = v6->_account;
    v6->_account = representedAccount;

    objc_storeStrong(&v6->_mailbox, mailbox);
    v6->_mailboxType = [(MFMailboxUid *)v6->_mailbox mailboxType];
    accountRelativePath = [mailboxCopy accountRelativePath];
    v10 = [accountRelativePath copy];
    accountRelativePath = v6->_accountRelativePath;
    v6->_accountRelativePath = v10;

    displayName = [(MFMailboxUid *)v6->_mailbox displayName];
    v13 = [displayName copy];
    displayName = v6->_displayName;
    v6->_displayName = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = sub_100015F24(self->_account);
    account = [v6 account];
    v9 = sub_100015F24(account);

    if ([v7 isEqualToString:v9])
    {
      v10 = [v6[15] isEqualToString:self->_accountRelativePath];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (FavoriteItem_Mailbox)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = FavoriteItem_Mailbox;
  v5 = [(FavoriteItem *)&v19 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"primaryEmail"];
    if (!v6 || ([MailAccount accountContainingEmailAddress:v6 includingInactive:1], v7 = objc_claimAutoreleasedReturnValue(), account = v5->_account, v5->_account = v7, account, !v5->_account))
    {

      v17 = 0;
      goto LABEL_9;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"mailboxPath"];
    accountRelativePath = v5->_accountRelativePath;
    v5->_accountRelativePath = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    displayName = v5->_displayName;
    v5->_displayName = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"mailboxType"];
    v5->_mailboxType = [v13 integerValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"syncKey"];
    syncKey = v5->super._syncKey;
    v5->super._syncKey = v14;

    v16 = [dictionaryCopy objectForKey:@"originalPushState"];

    if (v16)
    {
      v5->_originalPushState = 1;
    }
  }

  v17 = v5;
LABEL_9:

  return v17;
}

- (id)dictionaryRepresentation
{
  v17.receiver = self;
  v17.super_class = FavoriteItem_Mailbox;
  dictionaryRepresentation = [(FavoriteItem *)&v17 dictionaryRepresentation];
  firstEmailAddress = [(MailAccount *)self->_account firstEmailAddress];
  if (firstEmailAddress)
  {
    [dictionaryRepresentation setObject:firstEmailAddress forKey:@"primaryEmail"];
    [dictionaryRepresentation setObject:self->_accountRelativePath forKey:@"mailboxPath"];
    displayName = [(FavoriteItem_Mailbox *)self displayName];
    [dictionaryRepresentation setObject:displayName forKey:@"name"];

    mailbox = self->_mailbox;
    if (mailbox)
    {
      mailboxType = [(MFMailboxUid *)mailbox mailboxType];
    }

    else
    {
      mailboxType = self->_mailboxType;
    }

    v9 = [NSNumber numberWithInteger:mailboxType];
    [dictionaryRepresentation setObject:v9 forKey:@"mailboxType"];

    syncKey = [(FavoriteItem_Mailbox *)self syncKey];
    [dictionaryRepresentation setObject:syncKey forKey:@"syncKey"];

    if ([(FavoriteItem_Mailbox *)self originalPushState])
    {
      [(FavoriteItem_Mailbox *)self originalPushState];
      v11 = NSStringFromBOOL();
      [dictionaryRepresentation setObject:v11 forKey:@"originalPushState"];
    }
  }

  else
  {
    v8 = +[FavoriteItem log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      accountRelativePath = self->_accountRelativePath;
      displayName2 = [(FavoriteItem_Mailbox *)self displayName];
      v15 = self->_mailbox;
      syncKey2 = [(FavoriteItem_Mailbox *)self syncKey];
      *buf = 138413058;
      v19 = accountRelativePath;
      v20 = 2112;
      v21 = displayName2;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = syncKey2;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "(NOT A CRASH) FavoriteItem_Mailbox dictionaryRepresentation primary==nil accountRelativePath:%@ displayName:%@ mailbox:%@ sync:%@", buf, 0x2Au);
    }

    [dictionaryRepresentation removeAllObjects];
  }

  return dictionaryRepresentation;
}

- (id)itemID
{
  itemID = self->super._itemID;
  if (!itemID)
  {
    if (self->super._collectionID)
    {
      collectionID = self->super._collectionID;
    }

    else
    {
      collectionID = &stru_10015BEC8;
    }

    itemUUID = [(FavoriteItem_Mailbox *)self itemUUID];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, itemUUID];
    v7 = self->super._itemID;
    self->super._itemID = v6;

    itemID = self->super._itemID;
  }

  return itemID;
}

- (id)itemUUID
{
  itemUUID = self->super._itemUUID;
  if (!itemUUID)
  {
    representingMailbox = [(FavoriteItem_Mailbox *)self representingMailbox];
    uniqueId = [representingMailbox uniqueId];
    v6 = self->super._itemUUID;
    self->super._itemUUID = uniqueId;

    itemUUID = self->super._itemUUID;
  }

  return itemUUID;
}

- (id)parentItemID
{
  account = [(FavoriteItem_Mailbox *)self account];
  uniqueID = [account uniqueID];

  return uniqueID;
}

- (id)displayName
{
  if (self->_mailbox)
  {
    displayName = [(MFMailboxUid *)self->_mailbox displayName];
  }

  else
  {
    displayName = self->_displayName;
  }

  return displayName;
}

- (id)displayNameUsingSpecialNames
{
  displayNameUsingSpecialNames = [(MFMailboxUid *)self->_mailbox displayNameUsingSpecialNames];
  v4 = displayNameUsingSpecialNames;
  if (displayNameUsingSpecialNames)
  {
    displayName = displayNameUsingSpecialNames;
  }

  else
  {
    displayName = [(FavoriteItem_Mailbox *)self displayName];
  }

  v6 = displayName;

  return v6;
}

- (id)criterion
{
  representingMailbox = [(FavoriteItem_Mailbox *)self representingMailbox];
  v3 = [MFMessageCriterion criterionForMailbox:representingMailbox];

  return v3;
}

- (id)representingMailbox
{
  mailbox = self->_mailbox;
  if (!mailbox)
  {
    v4 = [(MailAccount *)self->_account isEnabledForDataclass:kAccountDataclassMail];
    if (v4)
    {
      v5 = [MFMailboxUid isStandardizedMailboxUidType:self->_mailboxType];
      account = self->_account;
      if (v5)
      {
        [(MailAccount *)account mailboxUidOfType:self->_mailboxType createIfNeeded:0];
      }

      else
      {
        [(MailAccount *)account mailboxUidForRelativePath:self->_accountRelativePath create:0];
      }
      v7 = ;
      v8 = self->_mailbox;
      self->_mailbox = v7;
    }

    mailbox = self->_mailbox;
    if (!mailbox)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        mailboxType = self->_mailboxType;
        ef_publicDescription = [(MailAccount *)self->_account ef_publicDescription];
        v13 = 138413058;
        selfCopy = self;
        v15 = 2048;
        v16 = mailboxType;
        v17 = 2048;
        v18 = v4;
        v19 = 2112;
        v20 = ef_publicDescription;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Favorites %@ Could not find representingMailbox mailboxType:%ld accountIsEnabled:%ld account:%@", &v13, 0x2Au);
      }

      mailbox = self->_mailbox;
    }
  }

  return mailbox;
}

- (BOOL)acceptsMessageTransfers
{
  representingMailbox = [(FavoriteItem_Mailbox *)self representingMailbox];
  v3 = +[MFMailboxUid typeIsValidTransferDestination:](MFMailboxUid, "typeIsValidTransferDestination:", [representingMailbox mailboxType]);

  return v3;
}

- (id)syncKey
{
  syncKey = self->super._syncKey;
  if (!syncKey)
  {
    v4 = +[NSString ef_UUID];
    v5 = self->super._syncKey;
    self->super._syncKey = v4;

    syncKey = self->super._syncKey;
  }

  return syncKey;
}

- (id)syncValue
{
  dictionaryRepresentation = [(FavoriteItem_Mailbox *)self dictionaryRepresentation];
  v4 = [NSMutableDictionary dictionaryWithDictionary:dictionaryRepresentation];

  username = [(MailAccount *)self->_account username];
  hostname = [(MailAccount *)self->_account hostname];
  v7 = [NSString stringWithFormat:@"%@@%@", username, hostname];

  lowercaseString = [v7 lowercaseString];
  [v4 setObject:lowercaseString forKey:@"usernameHostInfo"];

  [v4 removeObjectForKey:@"selected"];
  [v4 removeObjectForKey:@"originalPushState"];

  return v4;
}

- (void)wasAddedToCollection:(id)collection
{
  collectionCopy = collection;
  v16.receiver = self;
  v16.super_class = FavoriteItem_Mailbox;
  [(FavoriteItem *)&v16 wasAddedToCollection:collectionCopy];
  if ([collectionCopy isMailboxesCollection])
  {
    representingMailbox = [(FavoriteItem_Mailbox *)self representingMailbox];
    if (representingMailbox)
    {
      account = [(FavoriteItem_Mailbox *)self account];
      pushedMailboxUids = [account pushedMailboxUids];
      v8 = [pushedMailboxUids containsObject:representingMailbox];

      [(FavoriteItem_Mailbox *)self setOriginalPushState:v8];
      if ((v8 & 1) == 0)
      {
        v9 = sub_100016CFC();
        v10 = _NSConcreteStackBlock;
        v11 = 3221225472;
        v12 = sub_100016D40;
        v13 = &unk_1001563D8;
        selfCopy = self;
        v15 = representingMailbox;
        dispatch_async(v9, &v10);
      }
    }

    [(FavoriteItem_Mailbox *)self _postNotification:v10];
  }
}

- (void)wasRemovedFromCollecion:(id)collecion
{
  collecionCopy = collecion;
  v16.receiver = self;
  v16.super_class = FavoriteItem_Mailbox;
  [(FavoriteItem *)&v16 wasRemovedFromCollecion:collecionCopy];
  if ([collecionCopy isMailboxesCollection])
  {
    representingMailbox = [(FavoriteItem_Mailbox *)self representingMailbox];
    if (representingMailbox)
    {
      account = [(FavoriteItem_Mailbox *)self account];
      pushedMailboxUids = [account pushedMailboxUids];
      v8 = [pushedMailboxUids containsObject:representingMailbox];

      if (v8)
      {
        if (![(FavoriteItem_Mailbox *)self originalPushState])
        {
          v9 = sub_100016CFC();
          v10 = _NSConcreteStackBlock;
          v11 = 3221225472;
          v12 = sub_100016F58;
          v13 = &unk_1001563D8;
          selfCopy = self;
          v15 = representingMailbox;
          dispatch_async(v9, &v10);
        }
      }
    }

    [(FavoriteItem_Mailbox *)self _postNotification:v10];
  }
}

- (void)wasChangedExternally
{
  accountRelativePath = [(MFMailboxUid *)self->_mailbox accountRelativePath];
  accountRelativePath = self->_accountRelativePath;
  self->_accountRelativePath = accountRelativePath;

  [(FavoriteItem_Mailbox *)self _postNotification];
}

- (void)_postNotification
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000170DC;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(v3, block);
}

@end