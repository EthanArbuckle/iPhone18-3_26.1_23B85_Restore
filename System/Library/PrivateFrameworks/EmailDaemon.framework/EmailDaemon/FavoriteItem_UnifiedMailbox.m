@interface FavoriteItem_UnifiedMailbox
- (BOOL)acceptsMessageTransfers;
- (BOOL)isEqual:(id)a3;
- (BOOL)isVisible;
- (FavoriteItem_UnifiedMailbox)initWithDictionary:(id)a3;
- (FavoriteItem_UnifiedMailbox)initWithMailboxType:(int64_t)a3;
- (id)analyticsKey;
- (id)description;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)itemID;
- (id)itemURLString;
- (id)persistentIDForMigration;
- (id)representingMailboxes;
@end

@implementation FavoriteItem_UnifiedMailbox

- (FavoriteItem_UnifiedMailbox)initWithMailboxType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = FavoriteItem_UnifiedMailbox;
  result = [(FavoriteItem *)&v5 initWithType:4];
  if (result)
  {
    result->_mailboxType = a3;
  }

  return result;
}

- (FavoriteItem_UnifiedMailbox)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FavoriteItem_UnifiedMailbox;
  v5 = [(FavoriteItem *)&v8 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"mailboxType"];
    v5->_mailboxType = [v6 integerValue];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_mailboxType == v5->_mailboxType;
  }

  return v6;
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

    v5 = [NSString stringWithFormat:@"%@-%ld", collectionID, [(FavoriteItem_UnifiedMailbox *)self mailboxType]];
    v6 = self->super._itemID;
    self->super._itemID = v5;

    itemID = self->super._itemID;
  }

  return itemID;
}

- (id)itemURLString
{
  v2 = [(FavoriteItem_UnifiedMailbox *)self itemID];
  v3 = [NSString stringWithFormat:@"favoriteitem://unifiedmailbox/%@", v2];

  return v3;
}

- (id)representingMailboxes
{
  if ([(FavoriteItem_UnifiedMailbox *)self isVisible])
  {
    v3 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = +[MailAccount activeAccounts];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) mailboxUidOfType:self->_mailboxType createIfNeeded:0];
          if (v8)
          {
            [v3 addObject:v8];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isVisible
{
  v2 = sub_100027C70();
  v3 = [v2 accountsProvider];
  v4 = [v3 isDisplayingMultipleAccounts];

  return v4;
}

- (BOOL)acceptsMessageTransfers
{
  v2 = [(FavoriteItem_UnifiedMailbox *)self mailboxType];

  return [MFMailboxUid typeIsValidTransferDestination:v2];
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = FavoriteItem_UnifiedMailbox;
  v3 = [(FavoriteItem *)&v6 dictionaryRepresentation];
  v4 = [NSNumber numberWithInteger:self->_mailboxType];
  [v3 setObject:v4 forKey:@"mailboxType"];

  return v3;
}

- (id)displayName
{
  mailboxType = self->_mailboxType;
  if (mailboxType > 3)
  {
    if (mailboxType == 4 || mailboxType == 5 || mailboxType == 7)
    {
      goto LABEL_13;
    }

LABEL_12:
    v3 = [MFMailboxUid specialNameForType:?];
    goto LABEL_14;
  }

  if (mailboxType != 1 && mailboxType != 2 && mailboxType != 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v3 = MFLookupLocalizedString();
LABEL_14:

  return v3;
}

- (id)persistentIDForMigration
{
  if (self->_mailboxType == 7)
  {
    return @"AllInboxes";
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  mailboxType = self->_mailboxType;
  if (mailboxType > 6)
  {
    v4 = @"SentMessagesSpecialMailboxUid";
    v14 = @"DraftsSpecialMailboxUid";
    v15 = @"OutboxSpecialMailboxUid";
    if (mailboxType != 106)
    {
      v15 = 0;
    }

    if (mailboxType != 105)
    {
      v14 = v15;
    }

    if (mailboxType != 104)
    {
      v4 = v14;
    }

    v16 = @"ArchiveSpecialMailboxUid";
    v17 = @"TrashSpecialMailboxUid";
    if (mailboxType != 103)
    {
      v17 = 0;
    }

    if (mailboxType != 102)
    {
      v16 = v17;
    }

    if (mailboxType <= 103)
    {
      v4 = v16;
    }

    v9 = @"INBOXSpecialMailboxUid";
    v18 = @"JunkSpecialMailboxUid";
    if (mailboxType != 101)
    {
      v18 = 0;
    }

    if (mailboxType != 100)
    {
      v9 = v18;
    }

    v19 = @"InboxUid";
    v20 = @"RootMailboxUid";
    if (mailboxType != 8)
    {
      v20 = 0;
    }

    if (mailboxType != 7)
    {
      v19 = v20;
    }

    if (mailboxType <= 99)
    {
      v9 = v19;
    }

    v13 = mailboxType <= 101;
  }

  else
  {
    v4 = @"SentMessagesUid";
    v5 = @"DraftsMailboxUid";
    v6 = @"OutboxUid";
    if (mailboxType != 6)
    {
      v6 = 0;
    }

    if (mailboxType != 5)
    {
      v5 = v6;
    }

    if (mailboxType != 4)
    {
      v4 = v5;
    }

    v7 = @"ArchiveMailboxUid";
    v8 = @"TrashMailboxUid";
    if (mailboxType != 3)
    {
      v8 = 0;
    }

    if (mailboxType != 2)
    {
      v7 = v8;
    }

    if (mailboxType <= 3)
    {
      v4 = v7;
    }

    v9 = @"GenericMailboxUid";
    v10 = @"JunkMailboxUid";
    if (mailboxType != 1)
    {
      v10 = 0;
    }

    if (mailboxType)
    {
      v9 = v10;
    }

    v11 = @"InvalidMailboxUidType";
    v12 = @"RootlessMailboxUid";
    if (mailboxType != -100)
    {
      v12 = 0;
    }

    if (mailboxType != -500)
    {
      v11 = v12;
    }

    if (mailboxType < 0)
    {
      v9 = v11;
    }

    v13 = mailboxType <= 1;
  }

  if (v13)
  {
    v21 = v9;
  }

  else
  {
    v21 = v4;
  }

  v22 = objc_opt_class();
  v23 = [(FavoriteItem_UnifiedMailbox *)self displayName];
  v24 = [NSString stringWithFormat:@"<%@: %p mailboxType = %@; displayName = %@>", v22, self, v21, v23];;

  return v24;
}

- (id)analyticsKey
{
  mailboxType = self->_mailboxType;
  v3 = NSStringFromMailboxUidType();
  v4 = [NSString stringWithFormat:@"Unified_%@", v3];

  return v4;
}

@end