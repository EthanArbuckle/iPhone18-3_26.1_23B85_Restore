@interface CAMBufferObservance
- (CAMBufferObservance)initWithPredicate:(id)a3 removedOnceEnabled:(BOOL)a4;
- (void)fulfillWithChange:(id)a3;
@end

@implementation CAMBufferObservance

- (CAMBufferObservance)initWithPredicate:(id)a3 removedOnceEnabled:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CAMBufferObservance;
  v7 = [(CAMBufferObservance *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    v7[8] = a4;
    *(v7 + 9) = 0;
    v10 = v7;
  }

  return v7;
}

- (void)fulfillWithChange:(id)a3
{
  if ([(CAMBufferObservance *)self shouldBeFulfilledByChange:a3])
  {
    if (![(CAMBufferObservance *)self isFulfilled])
    {
      [(CAMBufferObservance *)self setFulfilled:1];
    }

    v4 = [(CAMBufferObservance *)self predicate];
    v6 = v4;
    if (v4)
    {
      v5 = (*(v4 + 16))();
    }

    else
    {
      v5 = 0;
    }

    [(CAMBufferObservance *)self setEnabled:v5];
  }
}

@end