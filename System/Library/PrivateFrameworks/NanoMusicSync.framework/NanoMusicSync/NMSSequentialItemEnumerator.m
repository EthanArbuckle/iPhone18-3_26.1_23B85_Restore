@interface NMSSequentialItemEnumerator
- (NMSSequentialItemEnumerator)initWithItemEnumerators:(id)a3;
- (id)nextItem;
@end

@implementation NMSSequentialItemEnumerator

- (NMSSequentialItemEnumerator)initWithItemEnumerators:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NMSSequentialItemEnumerator;
  v5 = [(NMSSequentialItemEnumerator *)&v9 init];
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
    v4 = [(NSMutableArray *)self->_itemEnumerators firstObject];
    v5 = [v4 nextItem];

    if (v5)
    {
      goto LABEL_6;
    }

    [(NSMutableArray *)self->_itemEnumerators removeObjectAtIndex:0];
  }

  v5 = 0;
LABEL_6:

  return v5;
}

@end