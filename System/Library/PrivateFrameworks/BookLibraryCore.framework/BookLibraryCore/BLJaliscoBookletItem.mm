@interface BLJaliscoBookletItem
+ (id)arrayWithServerBookletItems:(id)items;
+ (id)itemWithServerBookletItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLJaliscoBookletItem

+ (id)itemWithServerBookletItem:(id)item
{
  itemCopy = item;
  v4 = objc_opt_new();
  title = [itemCopy title];
  [v4 setTitle:title];

  storeDownloadParameters = [itemCopy storeDownloadParameters];
  [v4 setStoreDownloadParameters:storeDownloadParameters];

  storeID = [itemCopy storeID];
  [v4 setStoreID:storeID];

  v8 = [itemCopy size];

  [v4 setSize:v8];

  return v4;
}

+ (id)arrayWithServerBookletItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [BLJaliscoBookletItem itemWithServerBookletItem:*(*(&v13 + 1) + 8 * i), v13];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  title = [(BLJaliscoBookletItem *)self title];
  title2 = [equalCopy title];
  if ([title isEqual:title2])
  {
    storeDownloadParameters = [(BLJaliscoBookletItem *)self storeDownloadParameters];
    storeDownloadParameters2 = [equalCopy storeDownloadParameters];
    if ([storeDownloadParameters isEqual:storeDownloadParameters2])
    {
      storeID = [(BLJaliscoBookletItem *)self storeID];
      storeID2 = [equalCopy storeID];
      if ([storeID isEqual:storeID2])
      {
        v11 = [(BLJaliscoBookletItem *)self size];
        v12 = [equalCopy size];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  title = [(BLJaliscoBookletItem *)self title];
  v4 = [title hash];
  storeDownloadParameters = [(BLJaliscoBookletItem *)self storeDownloadParameters];
  v6 = [storeDownloadParameters hash] ^ v4;
  storeID = [(BLJaliscoBookletItem *)self storeID];
  v8 = [storeID hash];
  v9 = [(BLJaliscoBookletItem *)self size];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  title = [(BLJaliscoBookletItem *)self title];
  storeDownloadParameters = [(BLJaliscoBookletItem *)self storeDownloadParameters];
  storeID = [(BLJaliscoBookletItem *)self storeID];
  v9 = [(BLJaliscoBookletItem *)self size];
  v10 = [v3 stringWithFormat:@"<%@:%p name=%@ redownloadParameters=%@ storeID=%@ size=%@>", v5, self, title, storeDownloadParameters, storeID, v9];

  return v10;
}

@end