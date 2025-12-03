@interface BCSItemCache
- (BCSItemCache)init;
- (id)itemMatching:(id)matching;
- (void)beginBatch;
- (void)deleteExpiredItemsOfType:(int64_t)type;
- (void)deleteItemMatching:(id)matching;
- (void)deleteItemsOfType:(int64_t)type;
- (void)deleteLinkItemsWithBundleID:(id)d;
- (void)endBatch;
- (void)updateItem:(id)item withItemIdentifier:(id)identifier;
@end

@implementation BCSItemCache

- (BCSItemCache)init
{
  v16.receiver = self;
  v16.super_class = BCSItemCache;
  v2 = [(BCSItemCache *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(BCSLinkItemPersistentStore);
    linkItemStore = v2->_linkItemStore;
    v2->_linkItemStore = v3;

    v5 = +[BCSBusinessItemMemoryCache sharedCache];
    chatSuggestItemStore = v2->_chatSuggestItemStore;
    v2->_chatSuggestItemStore = v5;

    v7 = objc_alloc_init(BCSBusinessCallerPersistentStore);
    businessCallerStore = v2->_businessCallerStore;
    v2->_businessCallerStore = v7;

    v9 = objc_alloc_init(BCSBusinessEmailPersistentStore);
    businessEmailStore = v2->_businessEmailStore;
    v2->_businessEmailStore = v9;

    v11 = objc_alloc_init(BCSWebPresentmentPersistentStore);
    webPresentmentStore = v2->_webPresentmentStore;
    v2->_webPresentmentStore = v11;

    v13 = +[BCSUserDefaults sharedDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v13;
  }

  return v2;
}

- (id)itemMatching:(id)matching
{
  matchingCopy = matching;
  type = [matchingCopy type];
  v6 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      if (self)
      {
        v7 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_19;
      }

      if (self)
      {
        v7 = 16;
        goto LABEL_17;
      }
    }

LABEL_22:
    v8 = 0;
    goto LABEL_18;
  }

  if (type == 3)
  {
    if (self)
    {
      v7 = 24;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (type == 4)
  {
    if (self)
    {
      v7 = 32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (type != 5)
  {
    goto LABEL_19;
  }

  if (!self)
  {
    goto LABEL_22;
  }

  v7 = 40;
LABEL_17:
  v8 = *(&self->super.isa + v7);
LABEL_18:
  v6 = [v8 itemMatching:matchingCopy];
LABEL_19:

  return v6;
}

- (void)updateItem:(id)item withItemIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  type = [identifierCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      if (self)
      {
        v8 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_19;
      }

      if (self)
      {
        v8 = 16;
        goto LABEL_17;
      }
    }

LABEL_22:
    v10 = 0;
    v9 = itemCopy;
    goto LABEL_18;
  }

  if (type == 3)
  {
    if (self)
    {
      v8 = 24;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (type == 4)
  {
    if (self)
    {
      v8 = 32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (type != 5)
  {
    goto LABEL_19;
  }

  if (!self)
  {
    goto LABEL_22;
  }

  v8 = 40;
LABEL_17:
  v9 = itemCopy;
  v10 = *(&self->super.isa + v8);
LABEL_18:
  [v10 updateItem:v9 withItemIdentifier:identifierCopy];
LABEL_19:
}

- (void)deleteItemMatching:(id)matching
{
  matchingCopy = matching;
  type = [matchingCopy type];
  if (type <= 2)
  {
    if (type == 1)
    {
      if (self)
      {
        v6 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      v5 = matchingCopy;
      if (type != 2)
      {
        goto LABEL_19;
      }

      if (self)
      {
        v6 = 16;
        goto LABEL_17;
      }
    }

LABEL_22:
    v7 = 0;
    goto LABEL_18;
  }

  if (type == 3)
  {
    if (self)
    {
      v6 = 24;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v5 = matchingCopy;
  if (type == 4)
  {
    if (self)
    {
      v6 = 32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (type != 5)
  {
    goto LABEL_19;
  }

  if (!self)
  {
    goto LABEL_22;
  }

  v6 = 40;
LABEL_17:
  v7 = *(&self->super.isa + v6);
LABEL_18:
  type = [v7 deleteItemMatching:matchingCopy];
  v5 = matchingCopy;
LABEL_19:

  MEMORY[0x2821F96F8](type, v5);
}

- (void)deleteItemsOfType:(int64_t)type
{
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        if (self)
        {
          self = self->_businessCallerStore;
        }

        v3 = 3;
        break;
      case 4:
        if (self)
        {
          self = self->_businessEmailStore;
        }

        v3 = 4;
        break;
      case 5:
        if (self)
        {
          self = self->_webPresentmentStore;
        }

        v3 = 5;
        break;
      default:
        return;
    }

    goto LABEL_8;
  }

  if (type == 1)
  {
    if (self)
    {
      self = self->_chatSuggestItemStore;
    }

    v3 = 1;
    goto LABEL_8;
  }

  if (type == 2)
  {
    if (self)
    {
      self = self->_linkItemStore;
    }

    v3 = 2;
LABEL_8:
    [(BCSItemCache *)self deleteItemsOfType:v3];
  }
}

- (void)deleteExpiredItemsOfType:(int64_t)type
{
  if (type > 2)
  {
    switch(type)
    {
      case 3:
        if (self)
        {
          self = self->_businessCallerStore;
        }

        v3 = 3;
        break;
      case 4:
        if (self)
        {
          self = self->_businessEmailStore;
        }

        v3 = 4;
        break;
      case 5:
        if (self)
        {
          self = self->_webPresentmentStore;
        }

        v3 = 5;
        break;
      default:
        return;
    }

    goto LABEL_8;
  }

  if (type == 1)
  {
    if (self)
    {
      self = self->_chatSuggestItemStore;
    }

    v3 = 1;
    goto LABEL_8;
  }

  if (type == 2)
  {
    if (self)
    {
      self = self->_linkItemStore;
    }

    v3 = 2;
LABEL_8:
    [(BCSItemCache *)self deleteExpiredItemsOfType:v3];
  }
}

- (void)deleteLinkItemsWithBundleID:(id)d
{
  if (self)
  {
    self = self->_linkItemStore;
  }

  [(BCSItemCache *)self deleteLinkItemsWithBundleID:d];
}

- (void)beginBatch
{
  if (self)
  {
    self = self->_linkItemStore;
  }

  [(BCSItemCache *)self beginBatch];
}

- (void)endBatch
{
  if (self)
  {
    self = self->_linkItemStore;
  }

  [(BCSItemCache *)self endBatch];
}

@end