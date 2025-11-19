@interface NMSMutableItemEnumerator
- (NMSMutableItemEnumerator)init;
- (id)nextItem;
@end

@implementation NMSMutableItemEnumerator

- (NMSMutableItemEnumerator)init
{
  v6.receiver = self;
  v6.super_class = NMSMutableItemEnumerator;
  v2 = [(NMSMutableItemEnumerator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (id)nextItem
{
  itemIndex = self->_itemIndex;
  v4 = [(NSMutableArray *)self->_items count];
  items = self->_items;
  if (itemIndex >= v4)
  {
    [(NSMutableArray *)items removeAllObjects];
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = [(NSMutableArray *)items objectAtIndex:self->_itemIndex];
    v7 = self->_itemIndex + 1;
  }

  self->_itemIndex = v7;

  return v6;
}

@end