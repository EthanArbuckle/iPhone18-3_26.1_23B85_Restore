@interface GKAggregateCollectionViewWrapper
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)wrapperForView:(id)view mapping:(id)mapping;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKAggregateCollectionViewWrapper)initWithView:(id)view mapping:(id)mapping;
- (id)_gkDequeueCellForClass:(Class)class forIndexPath:(id)path;
- (id)_gkDequeueSupplementaryViewForClass:(Class)class ofKind:(id)kind forIndexPath:(id)path;
- (id)cellForItemAtIndexPath:(id)path;
- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path;
- (id)indexPathForCell:(id)cell;
- (id)indexPathForItemAtPoint:(CGPoint)point;
- (id)indexPathsForSelectedItems;
- (id)indexPathsForVisibleItems;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)methodSignatureForSelector:(SEL)selector;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (void)_gkRegisterCellClass:(Class)class;
- (void)_gkRegisterClass:(Class)class forSupplementaryViewOfKind:(id)kind;
- (void)deleteItemsAtIndexPaths:(id)paths;
- (void)deleteSections:(id)sections;
- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)insertItemsAtIndexPaths:(id)paths;
- (void)insertSections:(id)sections;
- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)moveSection:(int64_t)section toSection:(int64_t)toSection;
- (void)reloadItemsAtIndexPaths:(id)paths;
- (void)reloadSections:(id)sections;
- (void)scrollToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position animated:(BOOL)animated;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
@end

@implementation GKAggregateCollectionViewWrapper

+ (id)wrapperForView:(id)view mapping:(id)mapping
{
  mappingCopy = mapping;
  viewCopy = view;
  v7 = [[GKAggregateCollectionViewWrapper alloc] initWithView:viewCopy mapping:mappingCopy];

  return v7;
}

- (GKAggregateCollectionViewWrapper)initWithView:(id)view mapping:(id)mapping
{
  viewCopy = view;
  mappingCopy = mapping;
  v12.receiver = self;
  v12.super_class = GKAggregateCollectionViewWrapper;
  v9 = [(GKAggregateCollectionViewWrapper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wrappedView, view);
    objc_storeStrong(&v10->_mapping, mapping);
  }

  return v10;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKAggregateCollectionViewWrapper;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = GKAggregateCollectionViewWrapper;
  v5 = [(GKAggregateCollectionViewWrapper *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKAggregateCollectionViewWrapper *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKAggregateCollectionViewWrapper;
  if ([(GKAggregateCollectionViewWrapper *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKAggregateCollectionViewWrapper *)self forwardingTargetForSelector:selector];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (!selector)
  {
    return 0;
  }

  if (class_respondsToSelector(self, selector))
  {
    return 1;
  }

  v5 = MEMORY[0x277D752A0];

  return [v5 instancesRespondToSelector:selector];
}

- (id)dequeueReusableCellWithReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  wrappedView = self->_wrappedView;
  mapping = self->_mapping;
  identifierCopy = identifier;
  v8 = [(GKAggregateMapping *)mapping globalIndexPathForLocalIndexPath:path];
  v9 = [(UICollectionView *)wrappedView dequeueReusableCellWithReuseIdentifier:identifierCopy forIndexPath:v8];

  return v9;
}

- (id)dequeueReusableSupplementaryViewOfKind:(id)kind withReuseIdentifier:(id)identifier forIndexPath:(id)path
{
  wrappedView = self->_wrappedView;
  mapping = self->_mapping;
  identifierCopy = identifier;
  kindCopy = kind;
  v11 = [(GKAggregateMapping *)mapping globalIndexPathForLocalIndexPath:path];
  v12 = [(UICollectionView *)wrappedView dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:identifierCopy forIndexPath:v11];

  return v12;
}

- (id)indexPathsForSelectedItems
{
  v17 = *MEMORY[0x277D85DE8];
  indexPathsForSelectedItems = [(UICollectionView *)self->_wrappedView indexPathsForSelectedItems];
  if ([indexPathsForSelectedItems count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(indexPathsForSelectedItems, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = indexPathsForSelectedItems;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(GKAggregateMapping *)self->_mapping localIndexPathForGlobalIndexPath:*(*(&v12 + 1) + 8 * i), v12];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  wrappedView = self->_wrappedView;
  v8 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:path];
  [(UICollectionView *)wrappedView selectItemAtIndexPath:v8 animated:animatedCopy scrollPosition:position];
}

- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  wrappedView = self->_wrappedView;
  v6 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:path];
  [(UICollectionView *)wrappedView deselectItemAtIndexPath:v6 animated:animatedCopy];
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v4 = [(GKAggregateMapping *)self->_mapping globalSectionForLocalSection:section];
  wrappedView = self->_wrappedView;

  return [(UICollectionView *)wrappedView numberOfItemsInSection:v4];
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  wrappedView = self->_wrappedView;
  v4 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:path];
  v5 = [(UICollectionView *)wrappedView layoutAttributesForItemAtIndexPath:v4];

  return v5;
}

- (id)layoutAttributesForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  wrappedView = self->_wrappedView;
  mapping = self->_mapping;
  kindCopy = kind;
  v8 = [(GKAggregateMapping *)mapping globalIndexPathForLocalIndexPath:path];
  v9 = [(UICollectionView *)wrappedView layoutAttributesForSupplementaryElementOfKind:kindCopy atIndexPath:v8];

  return v9;
}

- (id)indexPathForItemAtPoint:(CGPoint)point
{
  v4 = [(UICollectionView *)self->_wrappedView indexPathForItemAtPoint:point.x, point.y];
  v5 = [(GKAggregateMapping *)self->_mapping localIndexPathForGlobalIndexPath:v4];

  return v5;
}

- (id)indexPathForCell:(id)cell
{
  v4 = [(UICollectionView *)self->_wrappedView indexPathForCell:cell];
  v5 = [(GKAggregateMapping *)self->_mapping localIndexPathForGlobalIndexPath:v4];

  return v5;
}

- (id)cellForItemAtIndexPath:(id)path
{
  wrappedView = self->_wrappedView;
  v4 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:path];
  v5 = [(UICollectionView *)wrappedView cellForItemAtIndexPath:v4];

  return v5;
}

- (id)indexPathsForVisibleItems
{
  v17 = *MEMORY[0x277D85DE8];
  indexPathsForVisibleItems = [(UICollectionView *)self->_wrappedView indexPathsForVisibleItems];
  if ([indexPathsForVisibleItems count])
  {
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(indexPathsForVisibleItems, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = indexPathsForVisibleItems;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [(GKAggregateMapping *)self->_mapping localIndexPathForGlobalIndexPath:*(*(&v12 + 1) + 8 * i), v12];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)scrollToItemAtIndexPath:(id)path atScrollPosition:(unint64_t)position animated:(BOOL)animated
{
  animatedCopy = animated;
  wrappedView = self->_wrappedView;
  v8 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:path];
  [(UICollectionView *)wrappedView scrollToItemAtIndexPath:v8 atScrollPosition:position animated:animatedCopy];
}

- (void)insertSections:(id)sections
{
  v4 = MEMORY[0x277CCAB58];
  sectionsCopy = sections;
  v6 = objc_alloc_init(v4);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__GKAggregateCollectionViewWrapper_insertSections___block_invoke;
  v11 = &unk_279669F60;
  selfCopy = self;
  v13 = v6;
  v7 = v6;
  [sectionsCopy enumerateIndexesUsingBlock:&v8];
  [(UICollectionView *)self->_wrappedView insertSections:sectionsCopy, v8, v9, v10, v11, selfCopy];
}

uint64_t __51__GKAggregateCollectionViewWrapper_insertSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 16) globalSectionForLocalSection:a2];
  v4 = *(a1 + 40);

  return [v4 addIndex:v3];
}

- (void)deleteSections:(id)sections
{
  v4 = MEMORY[0x277CCAB58];
  sectionsCopy = sections;
  v6 = objc_alloc_init(v4);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__GKAggregateCollectionViewWrapper_deleteSections___block_invoke;
  v11 = &unk_279669F60;
  selfCopy = self;
  v13 = v6;
  v7 = v6;
  [sectionsCopy enumerateIndexesUsingBlock:&v8];
  [(UICollectionView *)self->_wrappedView deleteSections:sectionsCopy, v8, v9, v10, v11, selfCopy];
}

uint64_t __51__GKAggregateCollectionViewWrapper_deleteSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 16) globalSectionForLocalSection:a2];
  v4 = *(a1 + 40);

  return [v4 addIndex:v3];
}

- (void)reloadSections:(id)sections
{
  v4 = MEMORY[0x277CCAB58];
  sectionsCopy = sections;
  v6 = objc_alloc_init(v4);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__GKAggregateCollectionViewWrapper_reloadSections___block_invoke;
  v11 = &unk_279669F60;
  selfCopy = self;
  v13 = v6;
  v7 = v6;
  [sectionsCopy enumerateIndexesUsingBlock:&v8];
  [(UICollectionView *)self->_wrappedView reloadSections:sectionsCopy, v8, v9, v10, v11, selfCopy];
}

uint64_t __51__GKAggregateCollectionViewWrapper_reloadSections___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 16) globalSectionForLocalSection:a2];
  v4 = *(a1 + 40);

  return [v4 addIndex:v3];
}

- (void)moveSection:(int64_t)section toSection:(int64_t)toSection
{
  v6 = [(GKAggregateMapping *)self->_mapping globalSectionForLocalSection:section];
  v7 = [(GKAggregateMapping *)self->_mapping globalSectionForLocalSection:toSection];
  wrappedView = self->_wrappedView;

  [(UICollectionView *)wrappedView moveSection:v6 toSection:v7];
}

- (void)insertItemsAtIndexPaths:(id)paths
{
  v17 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UICollectionView *)self->_wrappedView insertItemsAtIndexPaths:v5];
}

- (void)deleteItemsAtIndexPaths:(id)paths
{
  v17 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UICollectionView *)self->_wrappedView deleteItemsAtIndexPaths:v5];
}

- (void)reloadItemsAtIndexPaths:(id)paths
{
  v17 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(pathsCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(UICollectionView *)self->_wrappedView reloadItemsAtIndexPaths:v5];
}

- (void)moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  wrappedView = self->_wrappedView;
  mapping = self->_mapping;
  indexPathCopy = indexPath;
  v10 = [(GKAggregateMapping *)mapping globalIndexPathForLocalIndexPath:path];
  v9 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:indexPathCopy];

  [(UICollectionView *)wrappedView moveItemAtIndexPath:v10 toIndexPath:v9];
}

- (void)_gkRegisterCellClass:(Class)class
{
  wrappedView = self->_wrappedView;
  v5 = [(UICollectionView *)wrappedView _gkReuseIdentifierForClass:?];
  [(UICollectionView *)wrappedView registerClass:class forCellWithReuseIdentifier:v5];
}

- (id)_gkDequeueCellForClass:(Class)class forIndexPath:(id)path
{
  v6 = [(GKAggregateMapping *)self->_mapping globalIndexPathForLocalIndexPath:path];
  wrappedView = self->_wrappedView;
  v8 = [(UICollectionView *)wrappedView _gkReuseIdentifierForClass:class];
  v9 = [(UICollectionView *)wrappedView dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:v6];

  return v9;
}

- (void)_gkRegisterClass:(Class)class forSupplementaryViewOfKind:(id)kind
{
  wrappedView = self->_wrappedView;
  kindCopy = kind;
  v7 = [(UICollectionView *)wrappedView _gkReuseIdentifierForClass:class];
  [(UICollectionView *)wrappedView registerClass:class forSupplementaryViewOfKind:kindCopy withReuseIdentifier:v7];
}

- (id)_gkDequeueSupplementaryViewForClass:(Class)class ofKind:(id)kind forIndexPath:(id)path
{
  mapping = self->_mapping;
  kindCopy = kind;
  v10 = [(GKAggregateMapping *)mapping globalIndexPathForLocalIndexPath:path];
  v11 = [(UICollectionView *)self->_wrappedView _gkDequeueSupplementaryViewForClass:class ofKind:kindCopy forIndexPath:v10];

  return v11;
}

@end