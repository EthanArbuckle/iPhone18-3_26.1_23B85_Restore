@interface CAMBufferObservance
- (CAMBufferObservance)initWithPredicate:(id)predicate removedOnceEnabled:(BOOL)enabled;
- (void)fulfillWithChange:(id)change;
@end

@implementation CAMBufferObservance

- (CAMBufferObservance)initWithPredicate:(id)predicate removedOnceEnabled:(BOOL)enabled
{
  predicateCopy = predicate;
  v12.receiver = self;
  v12.super_class = CAMBufferObservance;
  v7 = [(CAMBufferObservance *)&v12 init];
  if (v7)
  {
    v8 = [predicateCopy copy];
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v7[8] = enabled;
    *(v7 + 9) = 0;
    v10 = v7;
  }

  return v7;
}

- (void)fulfillWithChange:(id)change
{
  if ([(CAMBufferObservance *)self shouldBeFulfilledByChange:change])
  {
    if (![(CAMBufferObservance *)self isFulfilled])
    {
      [(CAMBufferObservance *)self setFulfilled:1];
    }

    predicate = [(CAMBufferObservance *)self predicate];
    v6 = predicate;
    if (predicate)
    {
      v5 = (*(predicate + 16))();
    }

    else
    {
      v5 = 0;
    }

    [(CAMBufferObservance *)self setEnabled:v5];
  }
}

@end