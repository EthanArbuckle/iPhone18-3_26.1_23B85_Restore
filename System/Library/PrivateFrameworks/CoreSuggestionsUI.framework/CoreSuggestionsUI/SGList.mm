@interface SGList
- (BOOL)addItem:(id)item;
- (BOOL)removeItem:(id)item;
- (SGList)init;
- (SGListDelegate)delegate;
- (void)removeAllItems;
- (void)setComparator:(id)comparator;
@end

@implementation SGList

- (SGListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setComparator:(id)comparator
{
  comparatorCopy = comparator;
  if (self->_comparator != comparatorCopy)
  {
    v10 = comparatorCopy;
    v5 = _Block_copy(comparatorCopy);
    comparator = self->_comparator;
    self->_comparator = v5;

    comparator = [(SGList *)self comparator];

    comparatorCopy = v10;
    if (comparator)
    {
      array = self->_array;
      comparator2 = [(SGList *)self comparator];
      [(NSMutableArray *)array sortUsingComparator:comparator2];

      comparatorCopy = v10;
    }
  }
}

- (void)removeAllItems
{
  v3 = [(NSMutableArray *)self->_array copy];
  [(NSMutableArray *)self->_array removeAllObjects];
  if ([v3 count])
  {
    delegate = [(SGList *)self delegate];

    if (delegate)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __24__SGList_removeAllItems__block_invoke;
      v5[3] = &unk_1E7CD95E0;
      v5[4] = self;
      [v3 enumerateObjectsWithOptions:2 usingBlock:v5];
    }
  }
}

void __24__SGList_removeAllItems__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 delegate];
  [v7 list:*(a1 + 32) didRemoveItem:v6 atIndex:a3];
}

- (BOOL)removeItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableArray *)self->_array indexOfObjectIdenticalTo:itemCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_array removeObjectAtIndex:v5];
    delegate = [(SGList *)self delegate];
    [delegate list:self didRemoveItem:itemCopy atIndex:v5];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)addItem:(id)item
{
  itemCopy = item;
  v5 = [(NSMutableArray *)self->_array containsObject:itemCopy];
  if ((v5 & 1) == 0)
  {
    [(NSMutableArray *)self->_array addObject:itemCopy];
    comparator = [(SGList *)self comparator];

    if (comparator)
    {
      array = self->_array;
      comparator2 = [(SGList *)self comparator];
      [(NSMutableArray *)array sortUsingComparator:comparator2];
    }

    v9 = [(NSMutableArray *)self->_array indexOfObject:itemCopy];
    delegate = [(SGList *)self delegate];
    [delegate list:self didAddItem:itemCopy atIndex:v9];
  }

  return v5 ^ 1;
}

- (SGList)init
{
  v5.receiver = self;
  v5.super_class = SGList;
  v2 = [(SGList *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGList *)v2 setArray:v3];
  }

  return v2;
}

@end