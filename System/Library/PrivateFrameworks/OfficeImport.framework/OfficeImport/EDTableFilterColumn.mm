@interface EDTableFilterColumn
- (EDTableFilterColumn)init;
- (id)description;
- (id)filterAtIndex:(unint64_t)index;
- (void)addFilter:(id)filter;
@end

@implementation EDTableFilterColumn

- (EDTableFilterColumn)init
{
  v6.receiver = self;
  v6.super_class = EDTableFilterColumn;
  v2 = [(EDTableFilterColumn *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFilters = v2->mFilters;
    v2->mFilters = v3;

    v2->mColumnIndex = -1;
  }

  return v2;
}

- (id)filterAtIndex:(unint64_t)index
{
  if ([(EDTableFilterColumn *)self filterCount]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->mFilters objectAtIndex:index];
  }

  return v5;
}

- (void)addFilter:(id)filter
{
  filterCopy = filter;
  if (filterCopy)
  {
    [(NSMutableArray *)self->mFilters addObject:filterCopy];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTableFilterColumn;
  v2 = [(EDTableFilterColumn *)&v4 description];

  return v2;
}

@end