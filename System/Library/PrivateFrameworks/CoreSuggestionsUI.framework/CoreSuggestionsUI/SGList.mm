@interface SGList
- (BOOL)addItem:(id)a3;
- (BOOL)removeItem:(id)a3;
- (SGList)init;
- (SGListDelegate)delegate;
- (void)removeAllItems;
- (void)setComparator:(id)a3;
@end

@implementation SGList

- (SGListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setComparator:(id)a3
{
  v4 = a3;
  if (self->_comparator != v4)
  {
    v10 = v4;
    v5 = _Block_copy(v4);
    comparator = self->_comparator;
    self->_comparator = v5;

    v7 = [(SGList *)self comparator];

    v4 = v10;
    if (v7)
    {
      array = self->_array;
      v9 = [(SGList *)self comparator];
      [(NSMutableArray *)array sortUsingComparator:v9];

      v4 = v10;
    }
  }
}

- (void)removeAllItems
{
  v3 = [(NSMutableArray *)self->_array copy];
  [(NSMutableArray *)self->_array removeAllObjects];
  if ([v3 count])
  {
    v4 = [(SGList *)self delegate];

    if (v4)
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

- (BOOL)removeItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_array indexOfObjectIdenticalTo:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_array removeObjectAtIndex:v5];
    v6 = [(SGList *)self delegate];
    [v6 list:self didRemoveItem:v4 atIndex:v5];
  }

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)addItem:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_array containsObject:v4];
  if ((v5 & 1) == 0)
  {
    [(NSMutableArray *)self->_array addObject:v4];
    v6 = [(SGList *)self comparator];

    if (v6)
    {
      array = self->_array;
      v8 = [(SGList *)self comparator];
      [(NSMutableArray *)array sortUsingComparator:v8];
    }

    v9 = [(NSMutableArray *)self->_array indexOfObject:v4];
    v10 = [(SGList *)self delegate];
    [v10 list:self didAddItem:v4 atIndex:v9];
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