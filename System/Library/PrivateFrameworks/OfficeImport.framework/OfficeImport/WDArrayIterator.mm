@interface WDArrayIterator
- (WDArrayIterator)initWithArray:(id)array;
- (id)next;
@end

@implementation WDArrayIterator

- (WDArrayIterator)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = WDArrayIterator;
  v6 = [(WDArrayIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mArray, array);
    v7->mNextIndex = 0;
  }

  return v7;
}

- (id)next
{
  mNextIndex = self->mNextIndex;
  if ([(NSArray *)self->mArray count]<= mNextIndex)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->mArray objectAtIndex:self->mNextIndex];
    ++self->mNextIndex;
  }

  return v4;
}

@end