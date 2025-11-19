@interface WDCombinedIterator
- (WDCombinedIterator)initWithParentIterator:(id)a3;
- (id)next;
- (void)incrementChildIterator;
@end

@implementation WDCombinedIterator

- (WDCombinedIterator)initWithParentIterator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WDCombinedIterator;
  v6 = [(WDCombinedIterator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mParentIterator, a3);
    [(WDCombinedIterator *)v7 incrementChildIterator];
  }

  return v7;
}

- (id)next
{
  mChildIterator = self->mChildIterator;
  if (mChildIterator)
  {
    v4 = [(WDIterator *)mChildIterator next];
    if (![(WDIterator *)self->mChildIterator hasNext])
    {
      [(WDCombinedIterator *)self incrementChildIterator];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)incrementChildIterator
{
  do
  {
    v3 = [(WDIterator *)self->mParentIterator next];
    if (v3)
    {
      v4 = [(WDCombinedIterator *)self newChildIteratorFrom:v3];
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