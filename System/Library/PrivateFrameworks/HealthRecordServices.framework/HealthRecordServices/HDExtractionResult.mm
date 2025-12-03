@interface HDExtractionResult
- (BOOL)isEqual:(id)equal;
- (HDExtractionResult)initWithCoder:(id)coder;
- (HDExtractionResult)initWithItems:(id)items;
- (NSArray)allUnits;
- (id)debugDescription;
- (id)description;
@end

@implementation HDExtractionResult

- (HDExtractionResult)initWithItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = HDExtractionResult;
  v5 = [(HDExtractionResult *)&v9 init];
  if (v5)
  {
    v6 = [itemsCopy copy];
    items = v5->_items;
    v5->_items = v6;
  }

  return v5;
}

- (NSArray)allUnits
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_items;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        units = [*(*(&v14 + 1) + 8 * v8) units];
        [(NSArray *)v3 addObjectsFromArray:units];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([(NSArray *)v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      items = self->_items;
      items = [(HDExtractionResult *)v5 items];
      if (items == items)
      {
        v11 = 1;
      }

      else
      {
        items2 = [(HDExtractionResult *)v5 items];
        if (items2)
        {
          v9 = self->_items;
          items3 = [(HDExtractionResult *)v5 items];
          v11 = [(NSArray *)v9 isEqualToArray:items3];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p, %lu items>", v5, self, -[NSArray count](self->_items, "count")];

  return v6;
}

- (id)debugDescription
{
  v3 = [(NSArray *)self->_items hk_map:&__block_literal_global_3];
  v4 = [v3 componentsJoinedByString:@"\n\t"];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(HDExtractionResult *)self description];
  v7 = [v5 stringWithFormat:@"<%@\n\t%@>", v6, v4];

  return v7;
}

- (HDExtractionResult)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = [v4 hk_typesForArrayOf:objc_opt_class()];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"Items"];

  v8 = [(HDExtractionResult *)self initWithItems:v7];
  return v8;
}

@end