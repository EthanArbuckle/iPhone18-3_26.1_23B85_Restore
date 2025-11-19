@interface ODIList1
- (void)map;
@end

@implementation ODIList1

- (void)map
{
  v3 = [(ODIState *)self->super.mState diagram];
  v4 = [v3 documentPoint];
  v10 = [v4 children];

  v5 = [v10 count];
  mMaxPointCount = self->super.mMaxPointCount;
  if (mMaxPointCount >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = mMaxPointCount;
  }

  [(ODIState *)self->super.mState setPointCount:v7];
  [(ODIState *)self->super.mState setLogicalBounds:0 maintainAspectRatio:0.0, 0.0, 1.0, (v7 + ((v7 - 1) * 0.080292))];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [v10 objectAtIndex:i];
      [(ODIState *)self->super.mState setPointIndex:i];
      [(ODILinear *)self mapPoint:v9 bounds:0.0527383367, i * 1.08029197, 0.693711968, 0.729927007];
    }
  }
}

@end