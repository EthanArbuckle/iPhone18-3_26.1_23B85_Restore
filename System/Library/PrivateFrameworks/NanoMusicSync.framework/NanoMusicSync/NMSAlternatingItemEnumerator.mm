@interface NMSAlternatingItemEnumerator
- (NMSAlternatingItemEnumerator)initWithItemEnumerators:(id)a3;
- (id)nextItem;
@end

@implementation NMSAlternatingItemEnumerator

- (NMSAlternatingItemEnumerator)initWithItemEnumerators:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NMSAlternatingItemEnumerator;
  v5 = [(NMSAlternatingItemEnumerator *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    itemEnumerators = v5->_itemEnumerators;
    v5->_itemEnumerators = v6;
  }

  return v5;
}

- (id)nextItem
{
  for (i = self->_itemEnumerators; [(NSMutableArray *)i count]; i = self->_itemEnumerators)
  {
    v4 = [(NSMutableArray *)self->_itemEnumerators objectAtIndex:self->_itemEnumeratorIndex];
    v5 = [v4 nextItem];

    if (v5)
    {
      goto LABEL_6;
    }

    [(NSMutableArray *)self->_itemEnumerators removeObjectAtIndex:self->_itemEnumeratorIndex];
    itemEnumeratorIndex = self->_itemEnumeratorIndex;
    self->_itemEnumeratorIndex = itemEnumeratorIndex % [(NSMutableArray *)self->_itemEnumerators count];
  }

  v5 = 0;
LABEL_6:
  v7 = self->_itemEnumeratorIndex + 1;
  self->_itemEnumeratorIndex = v7 % [(NSMutableArray *)self->_itemEnumerators count];

  return v5;
}

@end