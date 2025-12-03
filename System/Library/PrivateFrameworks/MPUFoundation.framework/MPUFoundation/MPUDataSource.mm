@interface MPUDataSource
- (BOOL)canEditEntityAtIndexPath:(id)path;
- (BOOL)isEmpty;
- (MPUDataSource)initWithCoder:(id)coder;
- (MPUDataSource)initWithEntityType:(int64_t)type;
- (_NSRange)rangeOfSectionAtIndex:(unint64_t)index;
- (id)_indexPathForGlobalIndex:(unint64_t)index;
- (id)anyEntity;
- (id)entityAtIndex:(unint64_t)index;
- (id)entityAtIndexPath:(id)path;
- (id)sectionEntityAtIndex:(unint64_t)index;
- (int64_t)editingTypeForEntityAtIndexPath:(id)path;
- (unint64_t)_globalIndexForIndexPath:(id)path;
- (unint64_t)count;
- (unint64_t)indexOfEntity:(id)entity;
- (unint64_t)indexOfSectionEntity:(id)entity;
- (unint64_t)numberOfSections;
- (void)_didInvalidateWithContext:(id)context;
- (void)_willInvalidateWithContext:(id)context;
- (void)deleteEntityAtIndexPath:(id)path;
- (void)endIgnoringInvalidation;
- (void)invalidateWithContext:(id)context;
@end

@implementation MPUDataSource

- (MPUDataSource)initWithEntityType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = MPUDataSource;
  result = [(MPUDataSource *)&v5 init];
  if (result)
  {
    result->_entityType = type;
  }

  return result;
}

- (MPUDataSource)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"entityType"];

  return [(MPUDataSource *)self initWithEntityType:v4];
}

- (id)anyEntity
{
  entities = [(MPUDataSource *)self entities];
  v4 = [entities count];

  if (v4)
  {
    entities2 = [(MPUDataSource *)self entities];
    firstObject = [entities2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (BOOL)canEditEntityAtIndexPath:(id)path
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:path];

  return [(MPUDataSource *)self canEditEntityAtIndex:v4];
}

- (unint64_t)count
{
  entities = [(MPUDataSource *)self entities];
  v3 = [entities count];

  return v3;
}

- (void)deleteEntityAtIndexPath:(id)path
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:path];

  [(MPUDataSource *)self deleteEntityAtIndex:v4];
}

- (int64_t)editingTypeForEntityAtIndexPath:(id)path
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:path];

  return [(MPUDataSource *)self editingTypeForEntityAtIndex:v4];
}

- (id)entityAtIndex:(unint64_t)index
{
  entities = [(MPUDataSource *)self entities];
  v5 = [entities objectAtIndex:index];

  return v5;
}

- (id)entityAtIndexPath:(id)path
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:path];

  return [(MPUDataSource *)self entityAtIndex:v4];
}

- (unint64_t)indexOfEntity:(id)entity
{
  entityCopy = entity;
  entities = [(MPUDataSource *)self entities];
  v6 = [entities indexOfObject:entityCopy];

  return v6;
}

- (BOOL)isEmpty
{
  entities = [(MPUDataSource *)self entities];
  v3 = [entities count] == 0;

  return v3;
}

- (void)endIgnoringInvalidation
{
  invalidationIgnoreCount = self->_invalidationIgnoreCount;
  if (!invalidationIgnoreCount || (v3 = invalidationIgnoreCount - 1, (self->_invalidationIgnoreCount = v3) == 0))
  {
    if (self->_numberOfIgnoredInvalidations)
    {
      self->_numberOfIgnoredInvalidations = 0;
      [(MPUDataSource *)self invalidate];
    }
  }
}

- (void)invalidateWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  if (self->_invalidationIgnoreCount)
  {
    ++self->_numberOfIgnoredInvalidations;
  }

  else
  {
    if (!contextCopy)
    {
      v6 = objc_alloc_init([objc_opt_class() invalidationContextClass]);
      [v6 setInvalidateEverything:1];
      [v6 setInvalidateDataSourceCounts:1];
      v5 = v6;
    }

    v7 = v5;
    [(MPUDataSource *)self _willInvalidateWithContext:v5];
    if (([v7 invalidateDataSourceCounts] & 1) != 0 || objc_msgSend(v7, "invalidateEverything"))
    {
      [(MPUDataSource *)self _invalidateCalculatedEntities];
    }

    contextCopy = [(MPUDataSource *)self _didInvalidateWithContext:v7];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](contextCopy, v5);
}

- (unint64_t)numberOfSections
{
  if (![(MPUDataSource *)self usesSections])
  {
    return [(MPUDataSource *)self count]!= 0;
  }

  sectionEntities = [(MPUDataSource *)self sectionEntities];
  v4 = [sectionEntities count];

  return v4;
}

- (_NSRange)rangeOfSectionAtIndex:(unint64_t)index
{
  v3 = 0;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)sectionEntityAtIndex:(unint64_t)index
{
  sectionEntities = [(MPUDataSource *)self sectionEntities];
  v6 = [sectionEntities count];

  if (v6 <= index)
  {
    v8 = 0;
  }

  else
  {
    sectionEntities2 = [(MPUDataSource *)self sectionEntities];
    v8 = [sectionEntities2 objectAtIndex:index];
  }

  return v8;
}

- (unint64_t)indexOfSectionEntity:(id)entity
{
  entityCopy = entity;
  sectionEntities = [(MPUDataSource *)self sectionEntities];
  if ([sectionEntities count])
  {
    sectionEntities2 = [(MPUDataSource *)self sectionEntities];
    v7 = [sectionEntities2 indexOfObject:entityCopy];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_didInvalidateWithContext:(id)context
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  contextCopy = context;
  defaultCenter = [v4 defaultCenter];
  v8 = @"MPUDataSourceInvalidationContextUserInfoKey";
  v9[0] = contextCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"MPUDataSourceDidInvalidateNotification" object:self userInfo:v7];
}

- (unint64_t)_globalIndexForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(MPUDataSource *)self numberOfSections])
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    if (section)
    {
      for (i = 0; i != section; ++i)
      {
        [(MPUDataSource *)self rangeOfSectionAtIndex:i];
        v6 += v8;
      }
    }

    v9 = [(MPUDataSource *)self rangeOfSectionAtIndex:section];
    v11 = v10;
    v12 = [pathCopy row];
    if (v12 >= v11 || v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12 + v6;
    }
  }

  return v14;
}

- (id)_indexPathForGlobalIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    numberOfSections = 0;
  }

  else
  {
    numberOfSections = [(MPUDataSource *)self numberOfSections];
    if (numberOfSections)
    {
      v8 = numberOfSections;
      v9 = 0;
      while (1)
      {
        v10 = [(MPUDataSource *)self rangeOfSectionAtIndex:v9];
        if (index >= v10 && index - v10 < v11)
        {
          break;
        }

        if (v8 == ++v9)
        {
          numberOfSections = 0;
          goto LABEL_12;
        }
      }

      numberOfSections = [MEMORY[0x277CCAA70] indexPathForItem:? inSection:?];
    }

LABEL_12:
  }

  return numberOfSections;
}

- (void)_willInvalidateWithContext:(id)context
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  contextCopy = context;
  defaultCenter = [v4 defaultCenter];
  v8 = @"MPUDataSourceInvalidationContextUserInfoKey";
  v9[0] = contextCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [defaultCenter postNotificationName:@"MPUDataSourceWillInvalidateNotification" object:self userInfo:v7];
}

@end