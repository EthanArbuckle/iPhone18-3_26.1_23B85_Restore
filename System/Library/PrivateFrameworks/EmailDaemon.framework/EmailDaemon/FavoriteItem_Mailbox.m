@interface FavoriteItem_Mailbox
- (BOOL)acceptsMessageTransfers;
- (BOOL)isEqual:(id)a3;
- (FavoriteItem_Mailbox)initWithDictionary:(id)a3;
- (FavoriteItem_Mailbox)initWithMailbox:(id)a3;
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
- (void)wasAddedToCollection:(id)a3;
- (void)wasChangedExternally;
- (void)wasRemovedFromCollecion:(id)a3;
@end

@implementation FavoriteItem_Mailbox

- (FavoriteItem_Mailbox)initWithMailbox:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = FavoriteItem_Mailbox;
  v6 = [(FavoriteItem *)&v16 initWithType:2];
  if (v6)
  {
    v7 = [v5 representedAccount];
    account = v6->_account;
    v6->_account = v7;

    objc_storeStrong(&v6->_mailbox, a3);
    v6->_mailboxType = [(MFMailboxUid *)v6->_mailbox mailboxType];
    v9 = [v5 accountRelativePath];
    v10 = [v9 copy];
    accountRelativePath = v6->_accountRelativePath;
    v6->_accountRelativePath = v10;

    v12 = [(MFMailboxUid *)v6->_mailbox displayName];
    v13 = [v12 copy];
    displayName = v6->_displayName;
    v6->_displayName = v13;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = sub_100015F24(self->_account);
    v8 = [v6 account];
    v9 = sub_100015F24(v8);

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

- (FavoriteItem_Mailbox)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FavoriteItem_Mailbox;
  v5 = [(FavoriteItem *)&v19 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"primaryEmail"];
    if (!v6 || ([MailAccount accountContainingEmailAddress:v6 includingInactive:1], v7 = objc_claimAutoreleasedReturnValue(), account = v5->_account, v5->_account = v7, account, !v5->_account))
    {

      v17 = 0;
      goto LABEL_9;
    }

    v9 = [v4 objectForKeyedSubscript:@"mailboxPath"];
    accountRelativePath = v5->_accountRelativePath;
    v5->_accountRelativePath = v9;

    v11 = [v4 objectForKeyedSubscript:@"name"];
    displayName = v5->_displayName;
    v5->_displayName = v11;

    v13 = [v4 objectForKeyedSubscript:@"mailboxType"];
    v5->_mailboxType = [v13 integerValue];

    v14 = [v4 objectForKeyedSubscript:@"syncKey"];
    syncKey = v5->super._syncKey;
    v5->super._syncKey = v14;

    v16 = [v4 objectForKey:@"originalPushState"];

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
  v3 = [(FavoriteItem *)&v17 dictionaryRepresentation];
  v4 = [(MailAccount *)self->_account firstEmailAddress];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"primaryEmail"];
    [v3 setObject:self->_accountRelativePath forKey:@"mailboxPath"];
    v5 = [(FavoriteItem_Mailbox *)self displayName];
    [v3 setObject:v5 forKey:@"name"];

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
    [v3 setObject:v9 forKey:@"mailboxType"];

    v10 = [(FavoriteItem_Mailbox *)self syncKey];
    [v3 setObject:v10 forKey:@"syncKey"];

    if ([(FavoriteItem_Mailbox *)self originalPushState])
    {
      [(FavoriteItem_Mailbox *)self originalPushState];
      v11 = NSStringFromBOOL();
      [v3 setObject:v11 forKey:@"originalPushState"];
    }
  }

  else
  {
    v8 = +[FavoriteItem log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      accountRelativePath = self->_accountRelativePath;
      v14 = [(FavoriteItem_Mailbox *)self displayName];
      v15 = self->_mailbox;
      v16 = [(FavoriteItem_Mailbox *)self syncKey];
      *buf = 138413058;
      v19 = accountRelativePath;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "(NOT A CRASH) FavoriteItem_Mailbox dictionaryRepresentation primary==nil accountRelativePath:%@ displayName:%@ mailbox:%@ sync:%@", buf, 0x2Au);
    }

    [v3 removeAllObjects];
  }

  return v3;
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

    v5 = [(FavoriteItem_Mailbox *)self itemUUID];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, v5];
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
    v4 = [(FavoriteItem_Mailbox *)self representingMailbox];
    v5 = [v4 uniqueId];
    v6 = self->super._itemUUID;
    self->super._itemUUID = v5;

    itemUUID = self->super._itemUUID;
  }

  return itemUUID;
}

- (id)parentItemID
{
  v2 = [(FavoriteItem_Mailbox *)self account];
  v3 = [v2 uniqueID];

  return v3;
}

- (id)displayName
{
  if (self->_mailbox)
  {
    v2 = [(MFMailboxUid *)self->_mailbox displayName];
  }

  else
  {
    v2 = self->_displayName;
  }

  return v2;
}

- (id)displayNameUsingSpecialNames
{
  v3 = [(MFMailboxUid *)self->_mailbox displayNameUsingSpecialNames];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FavoriteItem_Mailbox *)self displayName];
  }

  v6 = v5;

  return v6;
}

- (id)criterion
{
  v2 = [(FavoriteItem_Mailbox *)self representingMailbox];
  v3 = [MFMessageCriterion criterionForMailbox:v2];

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
        v11 = [(MailAccount *)self->_account ef_publicDescription];
        v13 = 138413058;
        v14 = self;
        v15 = 2048;
        v16 = mailboxType;
        v17 = 2048;
        v18 = v4;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Favorites %@ Could not find representingMailbox mailboxType:%ld accountIsEnabled:%ld account:%@", &v13, 0x2Au);
      }

      mailbox = self->_mailbox;
    }
  }

  return mailbox;
}

- (BOOL)acceptsMessageTransfers
{
  v2 = [(FavoriteItem_Mailbox *)self representingMailbox];
  v3 = +[MFMailboxUid typeIsValidTransferDestination:](MFMailboxUid, "typeIsValidTransferDestination:", [v2 mailboxType]);

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
  v3 = [(FavoriteItem_Mailbox *)self dictionaryRepresentation];
  v4 = [NSMutableDictionary dictionaryWithDictionary:v3];

  v5 = [(MailAccount *)self->_account username];
  v6 = [(MailAccount *)self->_account hostname];
  v7 = [NSString stringWithFormat:@"%@@%@", v5, v6];

  v8 = [v7 lowercaseString];
  [v4 setObject:v8 forKey:@"usernameHostInfo"];

  [v4 removeObjectForKey:@"selected"];
  [v4 removeObjectForKey:@"originalPushState"];

  return v4;
}

- (void)wasAddedToCollection:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FavoriteItem_Mailbox;
  [(FavoriteItem *)&v16 wasAddedToCollection:v4];
  if ([v4 isMailboxesCollection])
  {
    v5 = [(FavoriteItem_Mailbox *)self representingMailbox];
    if (v5)
    {
      v6 = [(FavoriteItem_Mailbox *)self account];
      v7 = [v6 pushedMailboxUids];
      v8 = [v7 containsObject:v5];

      [(FavoriteItem_Mailbox *)self setOriginalPushState:v8];
      if ((v8 & 1) == 0)
      {
        v9 = sub_100016CFC();
        v10 = _NSConcreteStackBlock;
        v11 = 3221225472;
        v12 = sub_100016D40;
        v13 = &unk_1001563D8;
        v14 = self;
        v15 = v5;
        dispatch_async(v9, &v10);
      }
    }

    [(FavoriteItem_Mailbox *)self _postNotification:v10];
  }
}

- (void)wasRemovedFromCollecion:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FavoriteItem_Mailbox;
  [(FavoriteItem *)&v16 wasRemovedFromCollecion:v4];
  if ([v4 isMailboxesCollection])
  {
    v5 = [(FavoriteItem_Mailbox *)self representingMailbox];
    if (v5)
    {
      v6 = [(FavoriteItem_Mailbox *)self account];
      v7 = [v6 pushedMailboxUids];
      v8 = [v7 containsObject:v5];

      if (v8)
      {
        if (![(FavoriteItem_Mailbox *)self originalPushState])
        {
          v9 = sub_100016CFC();
          v10 = _NSConcreteStackBlock;
          v11 = 3221225472;
          v12 = sub_100016F58;
          v13 = &unk_1001563D8;
          v14 = self;
          v15 = v5;
          dispatch_async(v9, &v10);
        }
      }
    }

    [(FavoriteItem_Mailbox *)self _postNotification:v10];
  }
}

- (void)wasChangedExternally
{
  v3 = [(MFMailboxUid *)self->_mailbox accountRelativePath];
  accountRelativePath = self->_accountRelativePath;
  self->_accountRelativePath = v3;

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