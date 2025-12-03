@interface FavoriteItem_Account
- (BOOL)isEqual:(id)equal;
- (FavoriteItem_Account)initWithAccount:(id)account;
- (FavoriteItem_Account)initWithDictionary:(id)dictionary;
- (id)dictionaryRepresentation;
- (id)itemID;
- (unint64_t)hash;
@end

@implementation FavoriteItem_Account

- (FavoriteItem_Account)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = FavoriteItem_Account;
  v6 = [(FavoriteItem *)&v9 initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    [(FavoriteItem *)v7 setExpanded:1];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = v6[12];
    uniqueID = [(MailAccount *)self->_account uniqueID];
    uniqueID2 = [v7 uniqueID];
    if ([uniqueID isEqualToString:uniqueID2])
    {
      itemID = [(FavoriteItem_Account *)self itemID];
      itemID2 = [v6 itemID];
      v12 = [itemID isEqualToString:itemID2];
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
  uniqueID = [(MailAccount *)self->_account uniqueID];
  v3 = [uniqueID hash];

  return v3;
}

- (FavoriteItem_Account)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FavoriteItem_Account;
  v5 = [(FavoriteItem *)&v12 initWithDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [dictionaryCopy objectForKey:@"uniqueID"];
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
  v7.super_class = FavoriteItem_Account;
  dictionaryRepresentation = [(FavoriteItem *)&v7 dictionaryRepresentation];
  uniqueID = [(MailAccount *)self->_account uniqueID];
  if (uniqueID)
  {
    [dictionaryRepresentation setObject:uniqueID forKey:@"uniqueID"];
  }

  else
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1334(self, v5);
    }

    [dictionaryRepresentation removeAllObjects];
  }

  return dictionaryRepresentation;
}

- (id)itemID
{
  uniqueID = [(MailAccount *)self->_account uniqueID];
  displayName = [(FavoriteItem_Account *)self displayName];
  v5 = [EFPrivacy partiallyRedactedStringForString:displayName];
  v6 = [NSString stringWithFormat:@"%@-%@", uniqueID, v5];

  return v6;
}

@end