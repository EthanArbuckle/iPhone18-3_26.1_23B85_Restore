@interface QRSelfAllocationArray
- (QRSelfAllocationArray)init;
- (id)getAllocation;
@end

@implementation QRSelfAllocationArray

- (QRSelfAllocationArray)init
{
  v6.receiver = self;
  v6.super_class = QRSelfAllocationArray;
  v2 = [(QRSelfAllocationArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    allocations = v2->_allocations;
    v2->_allocations = v3;

    v2->_nextIndex = 0;
  }

  return v2;
}

- (id)getAllocation
{
  nextIndex = self->_nextIndex;
  if (nextIndex >= [(NSMutableArray *)self->_allocations count])
  {
    v5 = 0;
  }

  else
  {
    allocations = self->_allocations;
    ++self->_nextIndex;
    v5 = [(NSMutableArray *)allocations objectAtIndex:?];
  }

  return v5;
}

@end