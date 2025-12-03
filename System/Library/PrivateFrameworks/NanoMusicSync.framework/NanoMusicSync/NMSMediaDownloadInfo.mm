@interface NMSMediaDownloadInfo
- (NMSMediaDownloadInfo)initWithItems:(id)items;
- (id)description;
- (id)externalLibraryItemIdentifiers;
- (id)mediaLibraryItemIdentifiers;
- (unint64_t)totalItemSize;
- (void)enumerateMediaItemsUsingBlock:(id)block;
@end

@implementation NMSMediaDownloadInfo

- (NMSMediaDownloadInfo)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = NMSMediaDownloadInfo;
  v5 = [(NMSMediaDownloadInfo *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy mutableCopy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (unint64_t)totalItemSize
{
  v15 = *MEMORY[0x277D85DE8];
  result = self->_totalItemSize;
  if (!result)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_items;
    v5 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          self->_totalItemSize += [*(*(&v10 + 1) + 8 * v8++) size];
        }

        while (v6 != v8);
        v6 = [(NSMutableOrderedSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    result = self->_totalItemSize;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)enumerateMediaItemsUsingBlock:(id)block
{
  blockCopy = block;
  items = self->_items;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NMSMediaDownloadInfo_enumerateMediaItemsUsingBlock___block_invoke;
  v7[3] = &unk_27993E298;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableOrderedSet *)items enumerateObjectsUsingBlock:v7];
}

- (id)mediaLibraryItemIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableOrderedSet count](self->_items, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__NMSMediaDownloadInfo_mediaLibraryItemIdentifiers__block_invoke;
  v7[3] = &unk_27993E2C0;
  v8 = v3;
  v4 = v3;
  [(NMSMediaDownloadInfo *)self enumerateMediaItemsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __51__NMSMediaDownloadInfo_mediaLibraryItemIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 mediaLibraryIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 mediaLibraryIdentifier];
    [v4 addObject:v5];
  }
}

- (id)externalLibraryItemIdentifiers
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableOrderedSet count](self->_items, "count")}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NMSMediaDownloadInfo_externalLibraryItemIdentifiers__block_invoke;
  v7[3] = &unk_27993E2C0;
  v8 = v3;
  v4 = v3;
  [(NMSMediaDownloadInfo *)self enumerateMediaItemsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __54__NMSMediaDownloadInfo_externalLibraryItemIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 externalLibraryIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 externalLibraryIdentifier];
    [v4 addObject:v5];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = NMSMediaDownloadInfo;
  v4 = [(NMSMediaDownloadInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ - itemCount: %lu - items: %@ - itemSize %llu>", v4, -[NSMutableOrderedSet count](self->_items, "count"), self->_items, self->_totalItemSize];

  return v5;
}

@end