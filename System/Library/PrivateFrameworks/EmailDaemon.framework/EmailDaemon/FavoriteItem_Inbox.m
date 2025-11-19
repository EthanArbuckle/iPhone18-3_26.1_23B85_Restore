@interface FavoriteItem_Inbox
- (BOOL)_displayNameShouldBeRedacted;
- (BOOL)isEqual:(id)a3;
- (FavoriteItem_Inbox)initWithAccount:(id)a3;
- (FavoriteItem_Inbox)initWithDictionary:(id)a3;
- (id)criterion;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)itemID;
- (id)parentItemID;
- (id)uniqueIDAndDisplayName;
- (unint64_t)hash;
@end

@implementation FavoriteItem_Inbox

- (FavoriteItem_Inbox)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FavoriteItem_Inbox;
  v6 = [(FavoriteItem *)&v9 initWithType:3];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6[12];
    v8 = [(MailAccount *)self->_account uniqueID];
    v9 = [v7 uniqueID];
    if ([v8 isEqualToString:v9])
    {
      v10 = [(FavoriteItem_Inbox *)self uniqueIDAndDisplayName];
      v11 = [v6 uniqueIDAndDisplayName];
      v12 = [v10 isEqualToString:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v2 = [(MailAccount *)self->_account uniqueID];
  v3 = [v2 hash];

  return v3;
}

- (FavoriteItem_Inbox)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FavoriteItem_Inbox;
  v5 = [(FavoriteItem *)&v12 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 objectForKey:@"uniqueID"];
  if (v6)
  {
    v7 = [MailAccount accountWithUniqueId:v6];
    account = v5->_account;
    v5->_account = v7;
  }

  v9 = v5->_account;

  if (!v9)
  {
    v10 = 0;
  }

  else
  {
LABEL_5:
    v10 = v5;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = FavoriteItem_Inbox;
  v3 = [(FavoriteItem *)&v7 dictionaryRepresentation];
  v4 = [(MailAccount *)self->_account uniqueID];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"uniqueID"];
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D13D4(self, v5);
    }

    [v3 removeAllObjects];
  }

  return v3;
}

- (id)uniqueIDAndDisplayName
{
  uniqueIDAndDisplayName = self->_uniqueIDAndDisplayName;
  if (!uniqueIDAndDisplayName)
  {
    if ([(FavoriteItem_Inbox *)self _displayNameShouldBeRedacted])
    {
      v4 = [(FavoriteItem_Inbox *)self displayName];
      v5 = [EFPrivacy partiallyRedactedStringForString:v4];

      v6 = v5;
    }

    else
    {
      v6 = [objc_opt_class() description];
    }

    v7 = [(FavoriteItem_Inbox *)self representingMailbox];
    v8 = [v7 uniqueId];
    v9 = [NSString stringWithFormat:@"%@-%@", v8, v6];
    v10 = self->_uniqueIDAndDisplayName;
    self->_uniqueIDAndDisplayName = v9;

    uniqueIDAndDisplayName = self->_uniqueIDAndDisplayName;
  }

  return uniqueIDAndDisplayName;
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

    v5 = [(FavoriteItem_Inbox *)self uniqueIDAndDisplayName];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, v5];
    v7 = self->super._itemID;
    self->super._itemID = v6;

    itemID = self->super._itemID;
  }

  return itemID;
}

- (id)parentItemID
{
  v2 = [(FavoriteItem_Inbox *)self account];
  v3 = [v2 uniqueID];

  return v3;
}

- (BOOL)_displayNameShouldBeRedacted
{
  v2 = sub_100027C70();
  v3 = [v2 accountsProvider];
  v4 = [v3 isDisplayingMultipleAccounts];

  return v4;
}

- (id)displayName
{
  v3 = sub_100027C70();
  v4 = [v3 accountsProvider];
  v5 = [v4 isDisplayingMultipleAccounts];

  if (v5)
  {
    [(MailAccount *)self->_account displayName];
  }

  else
  {
    [MFMailboxUid specialNameForType:7];
  }
  v6 = ;

  return v6;
}

- (id)criterion
{
  v2 = [(FavoriteItem_Inbox *)self representingMailbox];
  v3 = [MFMessageCriterion criterionForMailbox:v2];

  return v3;
}

@end