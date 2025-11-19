@interface FavoriteItem_VIPMailbox
- (BOOL)isEqual:(id)a3;
- (FavoriteItem_VIPMailbox)initWithDictionary:(id)a3;
- (FavoriteItem_VIPMailbox)initWithVIP:(id)a3;
- (id)additionalPredicate;
- (id)countQueryPredicate;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)persistentIDForMigration;
- (unint64_t)hash;
@end

@implementation FavoriteItem_VIPMailbox

- (FavoriteItem_VIPMailbox)initWithVIP:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FavoriteItem_VIPMailbox;
  v6 = [(FavoriteItem *)&v9 initWithType:5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_VIP, a3);
  }

  return v7;
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
    v6 = [(FavoriteItem_VIPMailbox *)self VIP];
    v7 = [v6 identifier];
    v8 = [(FavoriteItem_VIPMailbox *)v5 VIP];
    v9 = [v8 identifier];
    v10 = [v7 isEqualToString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(FavoriteItem_VIPMailbox *)self VIP];
  v3 = [v2 identifier];
  v4 = [v3 hash];

  return v4;
}

- (FavoriteItem_VIPMailbox)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FavoriteItem_VIPMailbox;
  v5 = [(FavoriteItem *)&v16 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = +[MFMailMessageLibrary defaultInstance];
  v7 = [v6 persistence];
  v8 = [v7 vipManager];

  v9 = [v4 objectForKey:@"VIPIdentifier"];
  v10 = [v9 stringValue];

  v11 = [v8 vipWithIdentifier:v10];
  VIP = v5->_VIP;
  v5->_VIP = v11;

  v13 = v5->_VIP;
  if (!v13)
  {
    v14 = 0;
  }

  else
  {
LABEL_3:
    v14 = v5;
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v7.receiver = self;
  v7.super_class = FavoriteItem_VIPMailbox;
  v3 = [(FavoriteItem *)&v7 dictionaryRepresentation];
  v4 = [(FavoriteItem_VIPMailbox *)self VIP];
  v5 = [v4 identifier];
  [v3 setObject:v5 forKey:@"VIPIdentifier"];

  return v3;
}

- (id)persistentIDForMigration
{
  v2 = [(FavoriteItem_VIPMailbox *)self VIP];
  v3 = [v2 identifier];
  v4 = [NSString stringWithFormat:@"VIPMailbox-%@", v3];

  return v4;
}

- (id)displayName
{
  v2 = [(FavoriteItem_VIPMailbox *)self VIP];
  v3 = [v2 displayName];

  return v3;
}

- (id)countQueryPredicate
{
  v3 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v4 = [(FavoriteItem_VIPMailbox *)self mailboxScope];
  v5 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v4];

  v6 = [(FavoriteItem_VIPMailbox *)self additionalPredicate];
  v10[0] = v6;
  v10[1] = v3;
  v10[2] = v5;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v7];

  return v8;
}

- (id)additionalPredicate
{
  os_unfair_lock_lock(&self->super._lock);
  additionalPredicate = self->_additionalPredicate;
  if (!additionalPredicate)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(FavoriteItem_VIPMailbox *)self VIP];
    v6 = [v5 emailAddresses];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [EMMessageListItemPredicates predicateForMessagesWithSender:*(*(&v15 + 1) + 8 * i)];
          [v4 addObject:v10];
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v11 = [NSCompoundPredicate orPredicateWithSubpredicates:v4];
    v12 = self->_additionalPredicate;
    self->_additionalPredicate = v11;

    additionalPredicate = self->_additionalPredicate;
  }

  v13 = additionalPredicate;
  os_unfair_lock_unlock(&self->super._lock);

  return v13;
}

@end