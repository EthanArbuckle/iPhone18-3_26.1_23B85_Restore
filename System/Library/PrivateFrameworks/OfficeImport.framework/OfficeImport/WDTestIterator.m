@interface WDTestIterator
- (WDTestIterator)initWithIterator:(id)a3;
- (id)next;
@end

@implementation WDTestIterator

- (WDTestIterator)initWithIterator:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WDTestIterator;
  v6 = [(WDTestIterator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mIterator, a3);
    v8 = [(WDTestIterator *)v7 next];
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
    v5 = [(WDIterator *)self->mIterator next];
    if ([(WDTestIterator *)self test:v5])
    {
      v6 = self->mNext;
      self->mNext = v5;

      break;
    }
  }

  return v3;
}

@end