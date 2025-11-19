@interface FavoriteItem_Account
- (BOOL)isEqual:(id)a3;
- (FavoriteItem_Account)initWithAccount:(id)a3;
- (FavoriteItem_Account)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
- (id)itemID;
- (unint64_t)hash;
@end

@implementation FavoriteItem_Account

- (FavoriteItem_Account)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FavoriteItem_Account;
  v6 = [(FavoriteItem *)&v9 initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
    [(FavoriteItem *)v7 setExpanded:1];
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
      v10 = [(FavoriteItem_Account *)self itemID];
      v11 = [v6 itemID];
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

- (FavoriteItem_Account)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FavoriteItem_Account;
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
  v7.super_class = FavoriteItem_Account;
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
      sub_1000D1334(self, v5);
    }

    [v3 removeAllObjects];
  }

  return v3;
}

- (id)itemID
{
  v3 = [(MailAccount *)self->_account uniqueID];
  v4 = [(FavoriteItem_Account *)self displayName];
  v5 = [EFPrivacy partiallyRedactedStringForString:v4];
  v6 = [NSString stringWithFormat:@"%@-%@", v3, v5];

  return v6;
}

@end