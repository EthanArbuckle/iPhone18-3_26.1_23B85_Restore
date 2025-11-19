@interface FCPBFeedItemInventory
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFeedItems:(id)a3;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation FCPBFeedItemInventory

- (void)dealloc
{
  [(FCPBFeedItemInventory *)self setLastRefreshed:0];
  [(FCPBFeedItemInventory *)self setFeedItems:0];
  v3.receiver = self;
  v3.super_class = FCPBFeedItemInventory;
  [(FCPBFeedItemInventory *)&v3 dealloc];
}

- (void)addFeedItems:(id)a3
{
  feedItems = self->_feedItems;
  if (!feedItems)
  {
    feedItems = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_feedItems = feedItems;
  }

  [(NSMutableArray *)feedItems addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = FCPBFeedItemInventory;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[FCPBFeedItemInventory description](&v3, sel_description), -[FCPBFeedItemInventory dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_inventoryVersion), @"inventory_version"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_feedItemVersion), @"feed_item_version"}];
  }

  lastRefreshed = self->_lastRefreshed;
  if (lastRefreshed)
  {
    [v3 setObject:-[NTPBDate dictionaryRepresentation](lastRefreshed forKey:{"dictionaryRepresentation"), @"last_refreshed"}];
  }

  if ([(NSMutableArray *)self->_feedItems count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_feedItems, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    feedItems = self->_feedItems;
    v8 = [(NSMutableArray *)feedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(feedItems);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)feedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"feed_items"];
  }

  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  has = self->_has;
  if ((has & 2) != 0)
  {
    inventoryVersion = self->_inventoryVersion;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    feedItemVersion = self->_feedItemVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_lastRefreshed)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  feedItems = self->_feedItems;
  v8 = [(NSMutableArray *)feedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(feedItems);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)feedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_inventoryVersion;
    *(v5 + 40) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_feedItemVersion;
    *(v5 + 40) |= 1u;
  }

  v6[4] = [(NTPBDate *)self->_lastRefreshed copyWithZone:a3];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  feedItems = self->_feedItems;
  v9 = [(NSMutableArray *)feedItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(feedItems);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addFeedItems:v13];
      }

      v10 = [(NSMutableArray *)feedItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 40);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_inventoryVersion != *(a3 + 6))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_feedItemVersion != *(a3 + 2))
      {
        goto LABEL_16;
      }
    }

    else if (*(a3 + 40))
    {
      goto LABEL_16;
    }

    lastRefreshed = self->_lastRefreshed;
    if (!(lastRefreshed | *(a3 + 4)) || (v5 = [(NTPBDate *)lastRefreshed isEqual:?]) != 0)
    {
      feedItems = self->_feedItems;
      if (feedItems | *(a3 + 2))
      {

        LOBYTE(v5) = [(NSMutableArray *)feedItems isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_inventoryVersion;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_feedItemVersion;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NTPBDate *)self->_lastRefreshed hash];
  return v5 ^ [(NSMutableArray *)self->_feedItems hash];
}

@end