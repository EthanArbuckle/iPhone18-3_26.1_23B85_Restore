@interface BCSItemCache
- (BCSItemCache)init;
- (id)itemMatching:(id)a3;
- (void)beginBatch;
- (void)deleteExpiredItemsOfType:(int64_t)a3;
- (void)deleteItemMatching:(id)a3;
- (void)deleteItemsOfType:(int64_t)a3;
- (void)deleteLinkItemsWithBundleID:(id)a3;
- (void)endBatch;
- (void)updateItem:(id)a3 withItemIdentifier:(id)a4;
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

- (id)itemMatching:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = 0;
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (self)
      {
        v7 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      if (v5 != 2)
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

  if (v5 == 3)
  {
    if (self)
    {
      v7 = 24;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v5 == 4)
  {
    if (self)
    {
      v7 = 32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v5 != 5)
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
  v6 = [v8 itemMatching:v4];
LABEL_19:

  return v6;
}

- (void)updateItem:(id)a3 withItemIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 type];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      if (self)
      {
        v8 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      if (v7 != 2)
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
    v9 = v11;
    goto LABEL_18;
  }

  if (v7 == 3)
  {
    if (self)
    {
      v8 = 24;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v7 == 4)
  {
    if (self)
    {
      v8 = 32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v7 != 5)
  {
    goto LABEL_19;
  }

  if (!self)
  {
    goto LABEL_22;
  }

  v8 = 40;
LABEL_17:
  v9 = v11;
  v10 = *(&self->super.isa + v8);
LABEL_18:
  [v10 updateItem:v9 withItemIdentifier:v6];
LABEL_19:
}

- (void)deleteItemMatching:(id)a3
{
  v8 = a3;
  v4 = [v8 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      if (self)
      {
        v6 = 8;
        goto LABEL_17;
      }
    }

    else
    {
      v5 = v8;
      if (v4 != 2)
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

  if (v4 == 3)
  {
    if (self)
    {
      v6 = 24;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  v5 = v8;
  if (v4 == 4)
  {
    if (self)
    {
      v6 = 32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v4 != 5)
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
  v4 = [v7 deleteItemMatching:v8];
  v5 = v8;
LABEL_19:

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)deleteItemsOfType:(int64_t)a3
{
  if (a3 > 2)
  {
    switch(a3)
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

  if (a3 == 1)
  {
    if (self)
    {
      self = self->_chatSuggestItemStore;
    }

    v3 = 1;
    goto LABEL_8;
  }

  if (a3 == 2)
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

- (void)deleteExpiredItemsOfType:(int64_t)a3
{
  if (a3 > 2)
  {
    switch(a3)
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

  if (a3 == 1)
  {
    if (self)
    {
      self = self->_chatSuggestItemStore;
    }

    v3 = 1;
    goto LABEL_8;
  }

  if (a3 == 2)
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

- (void)deleteLinkItemsWithBundleID:(id)a3
{
  if (self)
  {
    self = self->_linkItemStore;
  }

  [(BCSItemCache *)self deleteLinkItemsWithBundleID:a3];
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