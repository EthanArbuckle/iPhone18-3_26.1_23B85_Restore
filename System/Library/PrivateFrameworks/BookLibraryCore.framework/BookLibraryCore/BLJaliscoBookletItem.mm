@interface BLJaliscoBookletItem
+ (id)arrayWithServerBookletItems:(id)a3;
+ (id)itemWithServerBookletItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BLJaliscoBookletItem

+ (id)itemWithServerBookletItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 title];
  [v4 setTitle:v5];

  v6 = [v3 storeDownloadParameters];
  [v4 setStoreDownloadParameters:v6];

  v7 = [v3 storeID];
  [v4 setStoreID:v7];

  v8 = [v3 size];

  [v4 setSize:v8];

  return v4;
}

+ (id)arrayWithServerBookletItems:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(BLJaliscoBookletItem *)self title];
  v6 = [v4 title];
  if ([v5 isEqual:v6])
  {
    v7 = [(BLJaliscoBookletItem *)self storeDownloadParameters];
    v8 = [v4 storeDownloadParameters];
    if ([v7 isEqual:v8])
    {
      v9 = [(BLJaliscoBookletItem *)self storeID];
      v10 = [v4 storeID];
      if ([v9 isEqual:v10])
      {
        v11 = [(BLJaliscoBookletItem *)self size];
        v12 = [v4 size];
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
  v3 = [(BLJaliscoBookletItem *)self title];
  v4 = [v3 hash];
  v5 = [(BLJaliscoBookletItem *)self storeDownloadParameters];
  v6 = [v5 hash] ^ v4;
  v7 = [(BLJaliscoBookletItem *)self storeID];
  v8 = [v7 hash];
  v9 = [(BLJaliscoBookletItem *)self size];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BLJaliscoBookletItem *)self title];
  v7 = [(BLJaliscoBookletItem *)self storeDownloadParameters];
  v8 = [(BLJaliscoBookletItem *)self storeID];
  v9 = [(BLJaliscoBookletItem *)self size];
  v10 = [v3 stringWithFormat:@"<%@:%p name=%@ redownloadParameters=%@ storeID=%@ size=%@>", v5, self, v6, v7, v8, v9];

  return v10;
}

@end