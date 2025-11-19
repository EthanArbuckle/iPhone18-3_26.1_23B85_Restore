@interface NMSItemGroupEnumerator
- (NMSItemGroupEnumerator)initWithItemGroup:(id)a3;
- (id)nextItem;
@end

@implementation NMSItemGroupEnumerator

- (NMSItemGroupEnumerator)initWithItemGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NMSItemGroupEnumerator;
  v6 = [(NMSItemGroupEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_itemGroup, a3);
  }

  return v7;
}

- (id)nextItem
{
  itemList = self->_itemList;
  if (!itemList)
  {
    if (self->_itemIndex)
    {
      itemList = 0;
      return [(NSArray *)itemList objectAtIndex:self->_itemIndex++];
    }

    v7 = [(NMSMediaItemGroup *)self->_itemGroup itemList];
    v8 = self->_itemList;
    self->_itemList = v7;

    itemList = self->_itemList;
    if (!itemList)
    {
      return [(NSArray *)itemList objectAtIndex:self->_itemIndex++];
    }
  }

  itemIndex = self->_itemIndex;
  v5 = [(NSArray *)itemList count];
  itemList = self->_itemList;
  if (itemIndex >= v5)
  {
    self->_itemList = 0;

    itemList = self->_itemList;
  }

  return [(NSArray *)itemList objectAtIndex:self->_itemIndex++];
}

@end