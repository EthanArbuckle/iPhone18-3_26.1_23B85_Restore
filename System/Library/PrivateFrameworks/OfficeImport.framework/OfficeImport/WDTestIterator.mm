@interface WDTestIterator
- (WDTestIterator)initWithIterator:(id)iterator;
- (id)next;
@end

@implementation WDTestIterator

- (WDTestIterator)initWithIterator:(id)iterator
{
  iteratorCopy = iterator;
  v10.receiver = self;
  v10.super_class = WDTestIterator;
  v6 = [(WDTestIterator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mIterator, iterator);
    next = [(WDTestIterator *)v7 next];
  }

  return v7;
}

- (id)next
{
  v3 = self->mNext;
  mNext = self->mNext;
  self->mNext = 0;

  while ([(WDIterator *)self->mIterator hasNext])
  {
    next = [(WDIterator *)self->mIterator next];
    if ([(WDTestIterator *)self test:next])
    {
      v6 = self->mNext;
      self->mNext = next;

      break;
    }
  }

  return v3;
}

@end