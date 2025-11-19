@interface FavoriteItem_SharedMailbox
- (BOOL)isEqual:(id)a3;
- (BOOL)isSelectable;
- (FavoriteItem_SharedMailbox)initWithDictionary:(id)a3;
- (FavoriteItem_SharedMailbox)initWithSourceType:(unint64_t)a3;
- (id)analyticsKey;
- (id)badgeCountString;
- (id)countQueryPredicate;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)mailboxScope;
- (id)serverCountMailboxScope;
- (void)dealloc;
- (void)setUnreadCountToken:(id)a3;
@end

@implementation FavoriteItem_SharedMailbox

- (FavoriteItem_SharedMailbox)initWithSourceType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = FavoriteItem_SharedMailbox;
  result = [(FavoriteItem *)&v5 initWithType:5];
  if (result)
  {
    result->_sourceType = a3;
  }

  return result;
}

- (void)dealloc
{
  [(FavoriteItem_SharedMailbox *)self setUnreadCountToken:0];
  v3.receiver = self;
  v3.super_class = FavoriteItem_SharedMailbox;
  [(FavoriteItem_SharedMailbox *)&v3 dealloc];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_sourceType == v5->_sourceType;
  }

  return v6;
}

- (BOOL)isSelectable
{
  if ([(FavoriteItem_SharedMailbox *)self sourceType]!= 1)
  {
    return 1;
  }

  v2 = +[VIPManager defaultInstance];
  v3 = [v2 hasVIPs];

  return v3;
}

- (FavoriteItem_SharedMailbox)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FavoriteItem_SharedMailbox;
  v5 = [(FavoriteItem *)&v9 initWithDictionary:v4];
  if (v5 && ([v4 objectForKey:@"sourceType"], v6 = objc_claimAutoreleasedReturnValue(), v5->_sourceType = objc_msgSend(v6, "integerValue"), v6, v5->_sourceType > 0x1A))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v6.receiver = self;
  v6.super_class = FavoriteItem_SharedMailbox;
  v3 = [(FavoriteItem *)&v6 dictionaryRepresentation];
  v4 = [NSNumber numberWithInteger:self->_sourceType];
  [v3 setObject:v4 forKey:@"sourceType"];

  return v3;
}

- (void)setUnreadCountToken:(id)a3
{
  v5 = a3;
  unreadCountToken = self->_unreadCountToken;
  if (unreadCountToken != v5)
  {
    [(EFCancelable *)unreadCountToken cancel];
    if (self->_unreadCountToken)
    {
      v7 = +[FavoriteItem log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        v9 = [(FavoriteItem_SharedMailbox *)self displayName];
        v10 = self->_unreadCountToken;
        v12 = 138543874;
        v13 = v8;
        v14 = 2114;
        v15 = v9;
        v16 = 2114;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@:%{public}@ - Cancel token:%{public}@", &v12, 0x20u);
      }

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 removeObserver:self];

      [(FavoriteItem_SharedMailbox *)self setIsObserving:0];
    }

    objc_storeStrong(&self->_unreadCountToken, a3);
  }
}

- (id)displayName
{
  v2 = [(FavoriteItem_SharedMailbox *)self sourceType];
  v3 = &stru_10015BEC8;
  switch(v2)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
      v3 = MFLookupLocalizedString();
      break;
    default:
      break;
  }

  return v3;
}

- (id)badgeCountString
{
  v4 = [(FavoriteItem_SharedMailbox *)self sourceType];
  if (v4 <= 0x1A)
  {
    if (((1 << v4) & 0x2FF800C) != 0)
    {
      v5 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
      v6 = [v5 localizedStringForKey:@"MESSAGE_COUNT_FORMAT%1$lu" value:&stru_10015BEC8 table:@"Main"];
      v7 = [(FavoriteItem *)self badgeCount];
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 integerValue]);
    }

    else
    {
      if (((1 << v4) & 0x40001F3) == 0)
      {
        goto LABEL_7;
      }

      v5 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
      v6 = [v5 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_10015BEC8 table:@"Main"];
      v7 = [(FavoriteItem *)self badgeCount];
      v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 integerValue]);
    }

    v2 = v8;
  }

LABEL_7:

  return v2;
}

- (id)countQueryPredicate
{
  v3 = [(FavoriteItem_SharedMailbox *)self sourceType];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = 0;
  v6 = 1;
  switch(v3)
  {
    case 1uLL:
      v7 = 1;
      v8 = [EMMessageListItemPredicates predicateForIsVIP:1];
      goto LABEL_19;
    case 2uLL:
      v8 = +[EMMessageListItemPredicates predicateForFlaggedMessages];
      goto LABEL_18;
    case 3uLL:
      v8 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      goto LABEL_18;
    case 4uLL:
      v8 = +[EMMessageListItemPredicates predicateForIncludesMeMessages];
      goto LABEL_15;
    case 5uLL:
      v8 = +[EMMessageListItemPredicates predicateForMessagesWithAttachments];
      goto LABEL_15;
    case 6uLL:
      v8 = +[EMMessageListItemPredicates predicateForNotifyMessages];
      goto LABEL_15;
    case 7uLL:
      v8 = +[EMMessageListItemPredicates predicateForTodayMessages];
      goto LABEL_15;
    case 8uLL:
      v8 = +[EMMessageListItemPredicates predicateForMuteMessages];
LABEL_15:
      v7 = 1;
      goto LABEL_19;
    case 0x10uLL:
      goto LABEL_17;
    case 0x11uLL:
      v6 = 0;
      goto LABEL_17;
    case 0x12uLL:
      v6 = 5;
      goto LABEL_17;
    case 0x13uLL:
      v6 = 4;
      goto LABEL_17;
    case 0x14uLL:
      v6 = 2;
      goto LABEL_17;
    case 0x15uLL:
      v6 = 3;
      goto LABEL_17;
    case 0x16uLL:
      v6 = 6;
LABEL_17:
      v8 = [EMMessageListItemPredicates predicateForFlagColor:v6];
LABEL_18:
      v7 = 0;
LABEL_19:
      v9 = v8;
      [v4 addObject:v8];
      if (v7)
      {
        v10 = +[EMMessageListItemPredicates predicateForUnreadMessages];
        [v4 addObject:v10];
      }

      v11 = [(FavoriteItem_SharedMailbox *)self mailboxScope];
      v12 = [EMMessageListItemPredicates predicateForMessagesWithMailboxScope:v11];
      [v4 addObject:v12];

      v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

      break;
    default:
      break;
  }

  return v5;
}

- (id)mailboxScope
{
  v2 = [(FavoriteItem_SharedMailbox *)self sourceType];
  v3 = [EMMailboxScope mailboxScopeForMailboxTypes:&off_100163720 forExclusion:1];
  v4 = [EMMailboxScope mailboxScopeForMailboxType:7 forExclusion:0];
  v5 = v4;
  v6 = 0;
  if (v2 <= 0x16)
  {
    if (((1 << v2) & 0x7F0144) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
      if (((1 << v2) & 0xBA) == 0)
      {
        goto LABEL_6;
      }
    }

    v6 = v7;
  }

LABEL_6:

  return v6;
}

- (id)serverCountMailboxScope
{
  if ([(FavoriteItem_SharedMailbox *)self sourceType]== 3)
  {
    v3 = [(FavoriteItem_SharedMailbox *)self mailboxScope];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)analyticsKey
{
  v2 = [(FavoriteItem_SharedMailbox *)self sourceType]- 1;
  if (v2 <= 0x15 && ((0x3F80FFu >> v2) & 1) != 0)
  {
    v3 = [NSString stringWithFormat:@"Smart_%@", off_100156C10[v2]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end