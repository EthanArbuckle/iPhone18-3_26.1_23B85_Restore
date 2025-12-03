@interface CRKFilteredEnumerator
- (BOOL)shouldRejectItem:(id)item;
- (CRKFilteredEnumerator)initWithEnumerator:(id)enumerator filterBlock:(id)block;
- (id)nextObject;
@end

@implementation CRKFilteredEnumerator

- (CRKFilteredEnumerator)initWithEnumerator:(id)enumerator filterBlock:(id)block
{
  enumeratorCopy = enumerator;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = CRKFilteredEnumerator;
  v9 = [(CRKFilteredEnumerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, enumerator);
    v11 = MEMORY[0x245D3AAD0](blockCopy);
    filterBlock = v10->_filterBlock;
    v10->_filterBlock = v11;
  }

  return v10;
}

- (id)nextObject
{
  nextObject = 0;
  do
  {
    v4 = nextObject;
    enumerator = [(CRKFilteredEnumerator *)self enumerator];
    nextObject = [enumerator nextObject];
  }

  while ([(CRKFilteredEnumerator *)self shouldRejectItem:nextObject]);

  return nextObject;
}

- (BOOL)shouldRejectItem:(id)item
{
  if (!item)
  {
    return 0;
  }

  itemCopy = item;
  filterBlock = [(CRKFilteredEnumerator *)self filterBlock];
  LOBYTE(self) = (filterBlock)[2](filterBlock, itemCopy);

  v6 = self ^ 1;
  return v6;
}

@end