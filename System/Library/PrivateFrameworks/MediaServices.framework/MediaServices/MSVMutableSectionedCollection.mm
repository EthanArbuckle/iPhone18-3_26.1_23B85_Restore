@interface MSVMutableSectionedCollection
- (id)copyWithZone:(_NSZone *)zone;
- (void)_initializeAsEmptySectionedCollection;
- (void)appendItem:(id)item;
- (void)appendItems:(id)items;
- (void)appendSection:(id)section;
- (void)insertItem:(id)item atIndexPath:(id)path;
- (void)insertSection:(id)section atIndex:(int64_t)index;
- (void)moveItemFromIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)moveSectionFromIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)removeAllObjects;
- (void)removeItemAtIndexPath:(id)path;
- (void)removeSectionAtIndex:(int64_t)index;
- (void)replaceItemsUsingBlock:(id)block;
- (void)replaceObjectAtIndexPath:(id)path withObject:(id)object;
- (void)replaceSectionsUsingBlock:(id)block;
@end

@implementation MSVMutableSectionedCollection

- (void)replaceItemsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(NSArray *)self->super._sections count])
  {
    v5 = 0;
    while (1)
    {
      v13 = 0;
      v6 = [(NSArray *)self->super._sectionedItems objectAtIndexedSubscript:v5];
      if ([v6 count])
      {
        break;
      }

LABEL_9:

      if (++v5 >= [(NSArray *)self->super._sections count])
      {
        goto LABEL_12;
      }
    }

    v7 = 0;
    while (1)
    {
      v8 = [v6 objectAtIndexedSubscript:v7];
      v9 = [MEMORY[0x1E696AC88] msv_indexPathForItem:v7 inSection:v5];
      v10 = blockCopy[2](blockCopy, v8, v9, &v13);

      if (v8 != v10)
      {
        v11 = [(NSArray *)self->super._sectionedItems objectAtIndexedSubscript:v5];
        [v11 replaceObjectAtIndex:v7 withObject:v10];
      }

      v12 = v13;

      if (v12 == 1)
      {
        break;
      }

      if (++v7 >= [v6 count])
      {
        goto LABEL_9;
      }
    }
  }

LABEL_12:
}

- (void)replaceSectionsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  if ([(NSArray *)self->super._sections count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->super._sections objectAtIndexedSubscript:v5];
      v7 = blockCopy[2](blockCopy, v6, v5, &v9);
      if (v6 != v7)
      {
        [(NSArray *)self->super._sections replaceObjectAtIndex:v5 withObject:v7];
      }

      v8 = v9;

      if (v8 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 < [(NSArray *)self->super._sections count]);
  }
}

- (void)removeAllObjects
{
  [(NSArray *)self->super._sections removeAllObjects];
  sectionedItems = self->super._sectionedItems;

  [(NSArray *)sectionedItems removeAllObjects];
}

- (void)appendItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        [(MSVMutableSectionedCollection *)self appendItem:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)appendItem:(id)item
{
  itemCopy = item;
  v5 = [(MSVSectionedCollection *)self numberOfSections]- 1;
  v6 = [(MSVSectionedCollection *)self numberOfItemsInSection:v5];
  v7 = [MEMORY[0x1E696AC88] msv_indexPathForItem:v6 inSection:v5];
  [(MSVMutableSectionedCollection *)self insertItem:itemCopy atIndexPath:v7];
}

- (void)moveItemFromIndexPath:(id)path toIndexPath:(id)indexPath
{
  v16 = self->super._sectionedItems;
  indexPathCopy = indexPath;
  pathCopy = path;
  msv_section = [pathCopy msv_section];
  msv_item = [pathCopy msv_item];

  msv_section2 = [indexPathCopy msv_section];
  msv_item2 = [indexPathCopy msv_item];

  v12 = [(NSArray *)v16 objectAtIndex:msv_section];
  v13 = v12;
  if (msv_section == msv_section2)
  {
    [v12 exchangeObjectAtIndex:msv_item withObjectAtIndex:msv_item2];
  }

  else
  {
    v14 = [(NSArray *)v16 objectAtIndex:msv_section2];
    v15 = [v13 objectAtIndex:msv_item];
    [v13 removeObjectAtIndex:msv_item];
    [v14 insertObject:v15 atIndex:msv_item2];
  }
}

- (void)replaceObjectAtIndexPath:(id)path withObject:(id)object
{
  v6 = self->super._sectionedItems;
  objectCopy = object;
  pathCopy = path;
  msv_section = [pathCopy msv_section];
  msv_item = [pathCopy msv_item];

  v11 = [(NSArray *)v6 objectAtIndex:msv_section];

  [v11 replaceObjectAtIndex:msv_item withObject:objectCopy];
}

- (void)removeItemAtIndexPath:(id)path
{
  v4 = self->super._sectionedItems;
  pathCopy = path;
  msv_section = [pathCopy msv_section];
  msv_item = [pathCopy msv_item];

  v8 = [(NSArray *)v4 objectAtIndex:msv_section];

  [v8 removeObjectAtIndex:msv_item];
}

- (void)insertItem:(id)item atIndexPath:(id)path
{
  v6 = self->super._sectionedItems;
  pathCopy = path;
  itemCopy = item;
  msv_section = [pathCopy msv_section];
  msv_item = [pathCopy msv_item];

  v11 = [(NSArray *)v6 objectAtIndex:msv_section];

  [v11 insertObject:itemCopy atIndex:msv_item];
}

- (void)appendSection:(id)section
{
  sectionCopy = section;
  [(MSVMutableSectionedCollection *)self insertSection:sectionCopy atIndex:[(MSVSectionedCollection *)self numberOfSections]];
}

- (void)moveSectionFromIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  sections = self->super._sections;
  v7 = self->super._sectionedItems;
  v8 = sections;
  [(NSArray *)v8 exchangeObjectAtIndex:index withObjectAtIndex:toIndex];
  [(NSArray *)v7 exchangeObjectAtIndex:index withObjectAtIndex:toIndex];
}

- (void)removeSectionAtIndex:(int64_t)index
{
  sections = self->super._sections;
  v5 = self->super._sectionedItems;
  v6 = sections;
  [(NSArray *)v6 removeObjectAtIndex:index];
  [(NSArray *)v5 removeObjectAtIndex:index];
}

- (void)insertSection:(id)section atIndex:(int64_t)index
{
  sections = self->super._sections;
  v7 = self->super._sectionedItems;
  v9 = sections;
  [(NSArray *)v9 insertObject:section atIndex:index];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(NSArray *)v7 insertObject:v8 atIndex:index];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init([objc_opt_class() msv_immutableClass]);
  if (v4)
  {
    v5 = [(NSArray *)self->super._sections copy];
    v6 = v4[2];
    v4[2] = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->super._sectionedItems, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->super._sectionedItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) copy];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v14 = [v7 copy];
    v15 = v4[1];
    v4[1] = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_initializeAsEmptySectionedCollection
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionedItems = self->super._sectionedItems;
  self->super._sectionedItems = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sections = self->super._sections;
  self->super._sections = v5;

  MEMORY[0x1EEE66BB8]();
}

@end