@interface NMSSequentialItemEnumerator
- (NMSSequentialItemEnumerator)initWithItemEnumerators:(id)enumerators;
- (id)nextItem;
@end

@implementation NMSSequentialItemEnumerator

- (NMSSequentialItemEnumerator)initWithItemEnumerators:(id)enumerators
{
  enumeratorsCopy = enumerators;
  v9.receiver = self;
  v9.super_class = NMSSequentialItemEnumerator;
  v5 = [(NMSSequentialItemEnumerator *)&v9 init];
  if (v5)
  {
    v6 = [enumeratorsCopy mutableCopy];
    itemEnumerators = v5->_itemEnumerators;
    v5->_itemEnumerators = v6;
  }

  return v5;
}

- (id)nextItem
{
  for (i = self->_itemEnumerators; [(NSMutableArray *)i count]; i = self->_itemEnumerators)
  {
    firstObject = [(NSMutableArray *)self->_itemEnumerators firstObject];
    nextItem = [firstObject nextItem];

    if (nextItem)
    {
      goto LABEL_6;
    }

    [(NSMutableArray *)self->_itemEnumerators removeObjectAtIndex:0];
  }

  nextItem = 0;
LABEL_6:

  return nextItem;
}

@end