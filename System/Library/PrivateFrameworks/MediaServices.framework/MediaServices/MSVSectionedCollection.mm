@interface MSVSectionedCollection
- (MSVSectionedCollection)init;
- (MSVSectionedCollection)initWithCoder:(id)coder;
- (NSString)debugDescription;
- (NSString)description;
- (id)_stateDumpObject;
- (id)allElementsEnumerator;
- (id)allItems;
- (id)allSections;
- (id)firstItem;
- (id)indexPathForGlobalIndex:(int64_t)index;
- (id)itemAtIndexPath:(id)path;
- (id)lastItem;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)globalIndexForIndexPath:(id)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)totalItemCount;
- (void)_initializeAsEmptySectionedCollection;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateItemsInSectionAtIndex:(int64_t)index usingBlock:(id)block;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)enumerateSectionsUsingBlock:(id)block;
- (void)reverseEnumerateSectionsUsingBlock:(id)block;
@end

@implementation MSVSectionedCollection

- (void)_initializeAsEmptySectionedCollection
{
  sectionedItems = self->_sectionedItems;
  v4 = MEMORY[0x1E695E0F0];
  self->_sectionedItems = MEMORY[0x1E695E0F0];

  sections = self->_sections;
  self->_sections = v4;
}

- (id)_stateDumpObject
{
  v17[2] = *MEMORY[0x1E69E9840];
  numberOfSections = [(MSVSectionedCollection *)self numberOfSections];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[MSVSectionedCollection numberOfSections](self, "numberOfSections")}];
  if (numberOfSections >= 1)
  {
    for (i = 0; i != numberOfSections; ++i)
    {
      v6 = [(MSVSectionedCollection *)self numberOfItemsInSection:i];
      v7 = [(MSVSectionedCollection *)self sectionAtIndex:i];
      v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __42__MSVSectionedCollection__stateDumpObject__block_invoke;
      v14[3] = &unk_1E7981F70;
      v15 = v8;
      v9 = v8;
      [(MSVSectionedCollection *)self enumerateItemsInSectionAtIndex:i usingBlock:v14];
      v16[0] = @"section";
      v16[1] = @"items";
      v17[0] = v7;
      v17[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", i];
      [v4 setObject:v10 forKey:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)allElementsEnumerator
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF28];
  v9[0] = self->_sections;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v4 arrayByAddingObjectsFromArray:self->_sectionedItems];
  v6 = [v3 msv_concatArrays:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (int64_t)totalItemCount
{
  numberOfSections = [(MSVSectionedCollection *)self numberOfSections];
  if (numberOfSections < 1)
  {
    return 0;
  }

  v4 = numberOfSections;
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += [(MSVSectionedCollection *)self numberOfItemsInSection:v5++];
  }

  while (v4 != v5);
  return v6;
}

- (id)indexPathForGlobalIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v22 = v6;
    v23 = v5;
    v24 = v4;
    v25 = v3;
    if (index < 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSectionedCollection.m" lineNumber:253 description:@"globalIndex must be greater than or equal to 0"];
    }

    v15 = [(MSVSectionedCollection *)self numberOfSections:v8];
    if (v15 < 1)
    {
LABEL_11:
      v11 = 0;
    }

    else
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = [(MSVSectionedCollection *)self numberOfItemsInSection:v17];
        if (v19 + v18 > index)
        {
          break;
        }

        ++v17;
        v18 += v19;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      v11 = [MEMORY[0x1E696AC88] msv_indexPathForItem:index - v18 inSection:v17];
    }
  }

  return v11;
}

- (int64_t)globalIndexForIndexPath:(id)path
{
  pathCopy = path;
  msv_section = [pathCopy msv_section];
  msv_item = [pathCopy msv_item];
  if (msv_section < 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = msv_item;
    v8 = 0;
    v9 = 0;
    while (msv_section != v8)
    {
      v9 += [(MSVSectionedCollection *)self numberOfItemsInSection:v8++];
    }

    if (v7 >= [(MSVSectionedCollection *)self numberOfItemsInSection:msv_section])
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7 + v9;
    }
  }

  return v10;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  sectionedItems = self->_sectionedItems;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MSVSectionedCollection_enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_1E7981F48;
  v6 = blockCopy;
  v8 = v6;
  v9 = v10;
  [(NSArray *)sectionedItems enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __51__MSVSectionedCollection_enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__MSVSectionedCollection_enumerateItemsUsingBlock___block_invoke_2;
  v10[3] = &unk_1E7981F20;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  v13 = a3;
  [a2 enumerateObjectsUsingBlock:v10];
  if (a4 && (*(*(*(a1 + 40) + 8) + 24) & 1) != 0)
  {
    *a4 = 1;
  }
}

void __51__MSVSectionedCollection_enumerateItemsUsingBlock___block_invoke_2(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AC88] msv_indexPathForItem:a3 inSection:a1[6]];
  (*(v8 + 16))(v8, v10, v9, *(a1[5] + 8) + 24);

  if (a4 && (*(*(a1[5] + 8) + 24) & 1) != 0)
  {
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)enumerateItemsInSectionAtIndex:(int64_t)index usingBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  [(NSArray *)self->_sectionedItems objectAtIndex:index];
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v7);
      }

      blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * v12), v10, &v18);
      if (v18)
      {
        break;
      }

      ++v10;
      if (v9 == ++v12)
      {
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)reverseEnumerateSectionsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSArray *)self->_sections count]- 1;
  v8 = v5 < 0;
  do
  {
    if (v8)
    {
      break;
    }

    if (v5 < 0)
    {
      break;
    }

    v6 = [(MSVSectionedCollection *)self sectionAtIndex:v5];
    blockCopy[2](blockCopy, v6, v5, &v8);
    v7 = v8;
    --v5;
  }

  while (!v7);
}

- (void)enumerateSectionsUsingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_sections;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v5);
      }

      blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * v10), v8, &v16);
      if (v16)
      {
        break;
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  msv_section = [pathCopy msv_section];
  msv_item = [pathCopy msv_item];

  v7 = [(NSArray *)self->_sectionedItems objectAtIndex:msv_section];
  v8 = [v7 objectAtIndex:msv_item];

  return v8;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  v3 = [(NSArray *)self->_sectionedItems objectAtIndex:section];
  v4 = [v3 count];

  return v4;
}

- (id)allSections
{
  v2 = [(NSArray *)self->_sections copy];

  return v2;
}

- (id)allItems
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[MSVSectionedCollection totalItemCount](self, "totalItemCount")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_sectionedItems;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObjectsFromArray:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)lastItem
{
  lastObject = [(NSArray *)self->_sectionedItems lastObject];
  v2LastObject = [lastObject lastObject];

  return v2LastObject;
}

- (id)firstItem
{
  firstObject = [(NSArray *)self->_sectionedItems firstObject];
  v2FirstObject = [firstObject firstObject];

  return v2FirstObject;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MSVMutableSectionedCollection);
  if (v4)
  {
    v5 = [(NSArray *)self->_sections mutableCopy];
    sections = v4->super._sections;
    v4->super._sections = v5;

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_sectionedItems, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_sectionedItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) mutableCopy];
          [(NSArray *)v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    sectionedItems = v4->super._sectionedItems;
    v4->super._sectionedItems = v7;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  numberOfSections = [(MSVSectionedCollection *)self numberOfSections];
  v8 = numberOfSections;
  v9 = @"sections";
  if (numberOfSections == 1)
  {
    v9 = @"section";
  }

  [v6 appendFormat:@"; %lu %@", numberOfSections, v9];
  [v6 appendString:@"; ["];
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [(MSVSectionedCollection *)self numberOfItemsInSection:i];
      v12 = [(MSVSectionedCollection *)self sectionAtIndex:i];
      v13 = [v12 description];
      v14 = v13;
      if (v11 == 1)
      {
        v15 = @"item";
      }

      else
      {
        v15 = @"items";
      }

      [v6 appendFormat:@"\n    %@ (%lu %@), ", v13, v11, v15];
    }

    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"]"];
  [v6 appendString:@">"];

  return v6;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  numberOfSections = [(MSVSectionedCollection *)self numberOfSections];
  v8 = numberOfSections;
  v9 = @"sections";
  if (numberOfSections == 1)
  {
    v9 = @"section";
  }

  [v6 appendFormat:@"; %lu %@", numberOfSections, v9];
  [v6 appendString:@": ["];
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v11 = [(MSVSectionedCollection *)self numberOfItemsInSection:i];
      v12 = [(MSVSectionedCollection *)self sectionAtIndex:i];
      v13 = [v12 debugDescription];
      v14 = v13;
      v15 = @"items";
      if (v11 == 1)
      {
        v15 = @"item";
      }

      [v6 appendFormat:@"\n    %@ (%lu %@): [", v13, v11, v15];

      if (v11 >= 1)
      {
        for (j = 0; j != v11; ++j)
        {
          v17 = [MEMORY[0x1E696AC88] msv_indexPathForItem:j inSection:i];
          v18 = [(MSVSectionedCollection *)self itemAtIndexPath:v17];
          v19 = [v18 debugDescription];
          [v6 appendFormat:@"\n        %@, ", v19];
        }

        [v6 appendString:@"\n    "];
      }

      [v6 appendString:{@"], "}];
    }

    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"]"];
  [v6 appendString:@">"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  sectionedItems = self->_sectionedItems;
  coderCopy = coder;
  [coderCopy encodeObject:sectionedItems forKey:@"sectionedItems"];
  [coderCopy encodeObject:self->_sections forKey:@"sections"];
}

- (MSVSectionedCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MSVSectionedCollection;
  v5 = [(MSVSectionedCollection *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionedItems"];
    sectionedItems = v5->_sectionedItems;
    v5->_sectionedItems = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sections"];
    sections = v5->_sections;
    v5->_sections = v8;
  }

  return v5;
}

- (MSVSectionedCollection)init
{
  v5.receiver = self;
  v5.super_class = MSVSectionedCollection;
  v2 = [(MSVSectionedCollection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSVSectionedCollection *)v2 _initializeAsEmptySectionedCollection];
  }

  return v3;
}

@end