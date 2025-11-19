@interface MPUDataSource
- (BOOL)canEditEntityAtIndexPath:(id)a3;
- (BOOL)isEmpty;
- (MPUDataSource)initWithCoder:(id)a3;
- (MPUDataSource)initWithEntityType:(int64_t)a3;
- (_NSRange)rangeOfSectionAtIndex:(unint64_t)a3;
- (id)_indexPathForGlobalIndex:(unint64_t)a3;
- (id)anyEntity;
- (id)entityAtIndex:(unint64_t)a3;
- (id)entityAtIndexPath:(id)a3;
- (id)sectionEntityAtIndex:(unint64_t)a3;
- (int64_t)editingTypeForEntityAtIndexPath:(id)a3;
- (unint64_t)_globalIndexForIndexPath:(id)a3;
- (unint64_t)count;
- (unint64_t)indexOfEntity:(id)a3;
- (unint64_t)indexOfSectionEntity:(id)a3;
- (unint64_t)numberOfSections;
- (void)_didInvalidateWithContext:(id)a3;
- (void)_willInvalidateWithContext:(id)a3;
- (void)deleteEntityAtIndexPath:(id)a3;
- (void)endIgnoringInvalidation;
- (void)invalidateWithContext:(id)a3;
@end

@implementation MPUDataSource

- (MPUDataSource)initWithEntityType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPUDataSource;
  result = [(MPUDataSource *)&v5 init];
  if (result)
  {
    result->_entityType = a3;
  }

  return result;
}

- (MPUDataSource)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"entityType"];

  return [(MPUDataSource *)self initWithEntityType:v4];
}

- (id)anyEntity
{
  v3 = [(MPUDataSource *)self entities];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(MPUDataSource *)self entities];
    v6 = [v5 firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)canEditEntityAtIndexPath:(id)a3
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:a3];

  return [(MPUDataSource *)self canEditEntityAtIndex:v4];
}

- (unint64_t)count
{
  v2 = [(MPUDataSource *)self entities];
  v3 = [v2 count];

  return v3;
}

- (void)deleteEntityAtIndexPath:(id)a3
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:a3];

  [(MPUDataSource *)self deleteEntityAtIndex:v4];
}

- (int64_t)editingTypeForEntityAtIndexPath:(id)a3
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:a3];

  return [(MPUDataSource *)self editingTypeForEntityAtIndex:v4];
}

- (id)entityAtIndex:(unint64_t)a3
{
  v4 = [(MPUDataSource *)self entities];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)entityAtIndexPath:(id)a3
{
  v4 = [(MPUDataSource *)self _globalIndexForIndexPath:a3];

  return [(MPUDataSource *)self entityAtIndex:v4];
}

- (unint64_t)indexOfEntity:(id)a3
{
  v4 = a3;
  v5 = [(MPUDataSource *)self entities];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (BOOL)isEmpty
{
  v2 = [(MPUDataSource *)self entities];
  v3 = [v2 count] == 0;

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

- (void)invalidateWithContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_invalidationIgnoreCount)
  {
    ++self->_numberOfIgnoredInvalidations;
  }

  else
  {
    if (!v4)
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

    v4 = [(MPUDataSource *)self _didInvalidateWithContext:v7];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (unint64_t)numberOfSections
{
  if (![(MPUDataSource *)self usesSections])
  {
    return [(MPUDataSource *)self count]!= 0;
  }

  v3 = [(MPUDataSource *)self sectionEntities];
  v4 = [v3 count];

  return v4;
}

- (_NSRange)rangeOfSectionAtIndex:(unint64_t)a3
{
  v3 = 0;
  v4 = 0;
  result.length = v4;
  result.location = v3;
  return result;
}

- (id)sectionEntityAtIndex:(unint64_t)a3
{
  v5 = [(MPUDataSource *)self sectionEntities];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(MPUDataSource *)self sectionEntities];
    v8 = [v7 objectAtIndex:a3];
  }

  return v8;
}

- (unint64_t)indexOfSectionEntity:(id)a3
{
  v4 = a3;
  v5 = [(MPUDataSource *)self sectionEntities];
  if ([v5 count])
  {
    v6 = [(MPUDataSource *)self sectionEntities];
    v7 = [v6 indexOfObject:v4];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)_didInvalidateWithContext:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"MPUDataSourceInvalidationContextUserInfoKey";
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"MPUDataSourceDidInvalidateNotification" object:self userInfo:v7];
}

- (unint64_t)_globalIndexForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  if (v5 >= [(MPUDataSource *)self numberOfSections])
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        [(MPUDataSource *)self rangeOfSectionAtIndex:i];
        v6 += v8;
      }
    }

    v9 = [(MPUDataSource *)self rangeOfSectionAtIndex:v5];
    v11 = v10;
    v12 = [v4 row];
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

- (id)_indexPathForGlobalIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(MPUDataSource *)self numberOfSections];
    if (v4)
    {
      v8 = v4;
      v9 = 0;
      while (1)
      {
        v10 = [(MPUDataSource *)self rangeOfSectionAtIndex:v9];
        if (a3 >= v10 && a3 - v10 < v11)
        {
          break;
        }

        if (v8 == ++v9)
        {
          v4 = 0;
          goto LABEL_12;
        }
      }

      v4 = [MEMORY[0x277CCAA70] indexPathForItem:? inSection:?];
    }

LABEL_12:
  }

  return v4;
}

- (void)_willInvalidateWithContext:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8 = @"MPUDataSourceInvalidationContextUserInfoKey";
  v9[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  [v6 postNotificationName:@"MPUDataSourceWillInvalidateNotification" object:self userInfo:v7];
}

@end