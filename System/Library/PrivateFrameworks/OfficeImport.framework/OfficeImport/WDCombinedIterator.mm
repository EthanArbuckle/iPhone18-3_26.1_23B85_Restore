@interface WDCombinedIterator
- (WDCombinedIterator)initWithParentIterator:(id)iterator;
- (id)next;
- (void)incrementChildIterator;
@end

@implementation WDCombinedIterator

- (WDCombinedIterator)initWithParentIterator:(id)iterator
{
  iteratorCopy = iterator;
  v9.receiver = self;
  v9.super_class = WDCombinedIterator;
  v6 = [(WDCombinedIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mParentIterator, iterator);
    [(WDCombinedIterator *)v7 incrementChildIterator];
  }

  return v7;
}

- (id)next
{
  mChildIterator = self->mChildIterator;
  if (mChildIterator)
  {
    next = [(WDIterator *)mChildIterator next];
    if (![(WDIterator *)self->mChildIterator hasNext])
    {
      [(WDCombinedIterator *)self incrementChildIterator];
    }
  }

  else
  {
    next = 0;
  }

  return next;
}

- (void)incrementChildIterator
{
  do
  {
    next = [(WDIterator *)self->mParentIterator next];
    if (next)
    {
      v4 = [(WDCombinedIterator *)self newChildIteratorFrom:next];
      [(WDCombinedIterator *)self setChildIterator:v4];
    }

    else
    {
      [(WDCombinedIterator *)self setChildIterator:0];
    }

    mChildIterator = self->mChildIterator;
  }

  while (mChildIterator && ![(WDIterator *)mChildIterator hasNext]);
}

@end