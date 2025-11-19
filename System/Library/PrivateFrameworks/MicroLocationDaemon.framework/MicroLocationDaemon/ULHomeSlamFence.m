@interface ULHomeSlamFence
- (BOOL)_checkFenceCrossAndResetIfNeeded;
- (BOOL)didFenceCrossWithOdometryEntry:(const void *)a3;
- (ULHomeSlamFence)initWithFenceRadius:(float)a3;
- (void)_resetState;
- (void)_updateStateWithEntry:(const void *)a3;
@end

@implementation ULHomeSlamFence

- (ULHomeSlamFence)initWithFenceRadius:(float)a3
{
  v8.receiver = self;
  v8.super_class = ULHomeSlamFence;
  v4 = [(ULHomeSlamFence *)&v8 init];
  v6 = v4;
  if (v4)
  {
    *&v5 = a3 * a3;
    [(ULHomeSlamFence *)v4 setRadiusSquare:v5];
  }

  return v6;
}

- (BOOL)didFenceCrossWithOdometryEntry:(const void *)a3
{
  v5 = *(a3 + 6);
  v6 = [MEMORY[0x277CCAD78] nilUUID];
  v7 = [v5 compare:v6];

  if (v7)
  {
    v8 = [(ULHomeSlamFence *)self trajectoryUUID];

    if (v8)
    {
      v9 = [(ULHomeSlamFence *)self trajectoryUUID];
      v10 = [v9 compare:*(a3 + 6)];

      if (v10)
      {
        [(ULHomeSlamFence *)self _resetState];
        [(ULHomeSlamFence *)self _updateStateWithEntry:a3];
        v11 = [*(a3 + 6) copy];
        [(ULHomeSlamFence *)self setTrajectoryUUID:v11];

        return 1;
      }
    }

    else
    {
      [(ULHomeSlamFence *)self _resetState];
      v13 = [*(a3 + 6) copy];
      [(ULHomeSlamFence *)self setTrajectoryUUID:v13];
    }

    [(ULHomeSlamFence *)self _updateStateWithEntry:a3];

    return [(ULHomeSlamFence *)self _checkFenceCrossAndResetIfNeeded];
  }

  else
  {
    [(ULHomeSlamFence *)self _resetState];
    return 0;
  }
}

- (void)_resetState
{
  [(ULHomeSlamFence *)self setDeltaPositionX:0.0];
  [(ULHomeSlamFence *)self setDeltaPositionY:0.0];

  [(ULHomeSlamFence *)self setTrajectoryUUID:0];
}

- (void)_updateStateWithEntry:(const void *)a3
{
  [(ULHomeSlamFence *)self deltaPositionX];
  *&v6 = v5 + *(a3 + 6);
  [(ULHomeSlamFence *)self setDeltaPositionX:v6];
  [(ULHomeSlamFence *)self deltaPositionY];
  *&v7 = *&v7 + *(a3 + 7);

  [(ULHomeSlamFence *)self setDeltaPositionY:v7];
}

- (BOOL)_checkFenceCrossAndResetIfNeeded
{
  [(ULHomeSlamFence *)self deltaPositionX];
  v4 = v3;
  [(ULHomeSlamFence *)self deltaPositionX];
  v6 = v5;
  [(ULHomeSlamFence *)self deltaPositionY];
  v8 = v7;
  [(ULHomeSlamFence *)self deltaPositionY];
  v10 = (v8 * v9) + (v4 * v6);
  [(ULHomeSlamFence *)self radiusSquare];
  v12 = v11;
  if (v10 > v11)
  {
    [(ULHomeSlamFence *)self _resetState];
  }

  return v10 > v12;
}

@end