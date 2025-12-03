@interface FavoriteItem
+ (OS_os_log)log;
+ (id)itemForAccount:(id)account;
+ (id)itemForOutbox;
+ (id)itemFromDictionary:(id)dictionary;
- (BOOL)isExpandable;
- (BOOL)isExpanded;
- (FavoriteItem)initWithDictionary:(id)dictionary;
- (FavoriteItem)initWithType:(int64_t)type;
- (NSString)ef_publicDescription;
- (NSString)itemID;
- (NSString)itemURLString;
- (NSString)itemUUID;
- (id)_descriptionFullyRedacted:(BOOL)redacted;
- (id)badgeCountString;
- (id)countQueryPredicate;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationRemovingSyncKeys;
- (id)representingMailboxes;
- (id)serverCountMailboxScope;
- (void)setExpanded:(BOOL)expanded;
- (void)wasAddedToCollection:(id)collection;
- (void)wasRemovedFromCollecion:(id)collecion;
@end

@implementation FavoriteItem

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000142FC;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185528 != -1)
  {
    dispatch_once(&qword_100185528, block);
  }

  v2 = qword_100185520;

  return v2;
}

+ (id)itemForAccount:(id)account
{
  accountCopy = account;
  v4 = [[FavoriteItem_Account alloc] initWithAccount:accountCopy];

  return v4;
}

+ (id)itemForOutbox
{
  v2 = objc_alloc_init(SharedItem_Outbox);

  return v2;
}

- (FavoriteItem)initWithType:(int64_t)type
{
  v7.receiver = self;
  v7.super_class = FavoriteItem;
  v4 = [(FavoriteItem *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_shouldSync = [objc_opt_class() _defaultShouldSync];
    v5->_showUnreadCount = 1;
  }

  return v5;
}

- (FavoriteItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = FavoriteItem;
  v5 = [(FavoriteItem *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"type"];
    v5->_type = [v6 integerValue];

    v5->_lock._os_unfair_lock_opaque = 0;
    v5->_showUnreadCount = 1;
    v7 = [dictionaryCopy valueForKey:@"selected"];
    if (v7)
    {
      [(FavoriteItem *)v5 setSelected:NSBOOLFromString()];
    }

    else
    {
      [(FavoriteItem *)v5 setSelected:1];
    }

    v8 = [dictionaryCopy valueForKey:@"shouldSync"];

    if (v8)
    {
      _defaultShouldSync = NSBOOLFromString();
    }

    else
    {
      _defaultShouldSync = [objc_opt_class() _defaultShouldSync];
    }

    v5->_shouldSync = _defaultShouldSync;
    v10 = [dictionaryCopy valueForKey:@"expanded"];

    if (v10)
    {
      _defaultShouldExpand = NSBOOLFromString();
    }

    else
    {
      _defaultShouldExpand = [objc_opt_class() _defaultShouldExpand];
    }

    v5->_expanded = _defaultShouldExpand;
  }

  return v5;
}

+ (id)itemFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    if ((integerValue - 7) <= 0xFFFFFFFFFFFFFFF9)
    {
      __assert_rtn("+[FavoriteItem itemFromDictionary:]", "FavoriteItem.m", 169, "type > 0 && type < FavoriteItemTypeMaxValue");
    }

    v7 = [objc_alloc(*off_100156BA8[integerValue - 1]) initWithDictionary:dictionaryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  [(FavoriteItem *)self sourceType];
  if (_MSSourceTypeIsValid())
  {
    if ((self->_type - 7) <= 0xFFFFFFFFFFFFFFF9)
    {
      sub_1000D12C0();
    }

    v3 = +[NSMutableDictionary dictionary];
    v4 = [NSNumber numberWithInteger:self->_type];
    [v3 setObject:v4 forKey:@"type"];

    [(FavoriteItem *)self isSelected];
    v5 = NSStringFromBOOL();
    [v3 setValue:v5 forKey:@"selected"];

    [(FavoriteItem *)self isExpanded];
    v6 = NSStringFromBOOL();
    [v3 setValue:v6 forKey:@"expanded"];

    if (![(FavoriteItem *)self shouldSync])
    {
      [(FavoriteItem *)self shouldSync];
      v7 = NSStringFromBOOL();
      [v3 setObject:v7 forKey:@"shouldSync"];
    }

    displayName2 = +[EFDevice currentDevice];
    if ([displayName2 isInternal])
    {
      displayName = [(FavoriteItem *)self displayName];

      if (!displayName)
      {
        goto LABEL_10;
      }

      displayName2 = [(FavoriteItem *)self displayName];
      [v3 setObject:displayName2 forKey:@"displayName"];
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_10:

  return v3;
}

- (id)dictionaryRepresentationRemovingSyncKeys
{
  dictionaryRepresentation = [(FavoriteItem *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation mutableCopy];

  v4 = NSStringFromBOOL();
  [v3 setObject:v4 forKeyedSubscript:@"shouldSync"];

  [v3 setObject:0 forKeyedSubscript:@"syncKey"];

  return v3;
}

- (NSString)itemID
{
  itemID = self->_itemID;
  if (!itemID)
  {
    if (self->_collectionID)
    {
      collectionID = self->_collectionID;
    }

    else
    {
      collectionID = &stru_10015BEC8;
    }

    itemUUID = [(FavoriteItem *)self itemUUID];
    v6 = [NSString stringWithFormat:@"%@-%@", collectionID, itemUUID];
    v7 = self->_itemID;
    self->_itemID = v6;

    itemID = self->_itemID;
  }

  return itemID;
}

- (NSString)itemUUID
{
  itemUUID = self->_itemUUID;
  if (!itemUUID)
  {
    v4 = +[NSString ef_UUID];
    v5 = self->_itemUUID;
    self->_itemUUID = v4;

    itemUUID = self->_itemUUID;
  }

  return itemUUID;
}

- (NSString)itemURLString
{
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  uRLString = [representingMailbox URLString];

  return uRLString;
}

- (id)badgeCountString
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.Message"];
  v4 = [v3 localizedStringForKey:@"UNREAD_COUNT_FORMAT%1$lu" value:&stru_10015BEC8 table:@"Main"];
  badgeCount = [(FavoriteItem *)self badgeCount];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [badgeCount integerValue]);

  return v6;
}

- (id)countQueryPredicate
{
  representingMailboxes = [(FavoriteItem *)self representingMailboxes];
  v3 = [representingMailboxes ef_mapSelector:"objectID"];

  v4 = [EMMessageListItemPredicates predicateForMessagesInMailboxesWithObjectIDs:v3];
  v5 = +[EMMessageListItemPredicates predicateForUnreadMessages];
  v9[0] = v4;
  v9[1] = v5;
  v6 = [NSArray arrayWithObjects:v9 count:2];
  v7 = [NSCompoundPredicate andPredicateWithSubpredicates:v6];

  return v7;
}

- (id)serverCountMailboxScope
{
  representingMailboxes = [(FavoriteItem *)self representingMailboxes];
  v3 = [representingMailboxes ef_mapSelector:"objectID"];
  v4 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v3 forExclusion:0];

  return v4;
}

- (id)representingMailboxes
{
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  v3 = representingMailbox;
  if (representingMailbox)
  {
    v6 = representingMailbox;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)wasAddedToCollection:(id)collection
{
  collectionCopy = collection;
  uniqueId = [collectionCopy uniqueId];
  collectionID = self->_collectionID;
  self->_collectionID = uniqueId;
}

- (void)wasRemovedFromCollecion:(id)collecion
{
  collectionID = self->_collectionID;
  self->_collectionID = 0;
}

- (BOOL)isExpandable
{
  representingMailbox = [(FavoriteItem *)self representingMailbox];
  hasChildren = [representingMailbox hasChildren];

  return hasChildren;
}

- (BOOL)isExpanded
{
  os_unfair_lock_lock(&self->_lock);
  expanded = self->_expanded;
  os_unfair_lock_unlock(&self->_lock);
  return expanded;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if (![(FavoriteItem *)self isExpandable]&& expandedCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000D12EC();
    }

    LOBYTE(expandedCopy) = 0;
  }

  os_unfair_lock_lock(&self->_lock);
  self->_expanded = expandedCopy;
  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)ef_publicDescription
{
  v3 = +[EFDevice currentDevice];
  isInternal = [v3 isInternal];

  if (isInternal)
  {
    [(FavoriteItem *)self debugDescription];
  }

  else
  {
    [(FavoriteItem *)self _descriptionFullyRedacted:1];
  }
  v5 = ;

  return v5;
}

- (id)_descriptionFullyRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  _displayNameShouldBeRedacted = [(FavoriteItem *)self _displayNameShouldBeRedacted];
  v6 = [(FavoriteItem *)self type]- 1;
  if (v6 <= 6)
  {
    v7 = off_100156BD8[v6];
    if (_displayNameShouldBeRedacted)
    {
      goto LABEL_6;
    }

LABEL_5:
    displayName = [(FavoriteItem *)self displayName];
    if (displayName)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v7 = 0;
  if ((_displayNameShouldBeRedacted & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  displayName2 = [(FavoriteItem *)self displayName];
  if (redactedCopy)
  {
    [EFPrivacy fullyRedactedStringForString:displayName2];
  }

  else
  {
    [EFPrivacy partiallyRedactedStringForString:displayName2];
  }
  v10 = ;

  displayName = v10;
LABEL_10:
  v11 = &stru_10015BEC8;
  if (objc_opt_respondsToSelector())
  {
    unreadCountToken = [(FavoriteItem *)self unreadCountToken];
    v11 = [NSString stringWithFormat:@"unreadCountToken:%@", unreadCountToken];
  }

  v13 = [NSString stringWithFormat:@"<%@: %p type = %@; visible:%d selected:%d expanded:%d displayName:%@ %@>", objc_opt_class(), self, v7, [(FavoriteItem *)self isVisible], [(FavoriteItem *)self isSelected], [(FavoriteItem *)self isExpanded], displayName, v11];;

  return v13;
}

@end