@interface ULHomeSlamFence
- (BOOL)_checkFenceCrossAndResetIfNeeded;
- (BOOL)didFenceCrossWithOdometryEntry:(const void *)entry;
- (ULHomeSlamFence)initWithFenceRadius:(float)radius;
- (void)_resetState;
- (void)_updateStateWithEntry:(const void *)entry;
@end

@implementation ULHomeSlamFence

- (ULHomeSlamFence)initWithFenceRadius:(float)radius
{
  v8.receiver = self;
  v8.super_class = ULHomeSlamFence;
  v4 = [(ULHomeSlamFence *)&v8 init];
  v6 = v4;
  if (v4)
  {
    *&v5 = radius * radius;
    [(ULHomeSlamFence *)v4 setRadiusSquare:v5];
  }

  return v6;
}

- (BOOL)didFenceCrossWithOdometryEntry:(const void *)entry
{
  v5 = *(entry + 6);
  nilUUID = [MEMORY[0x277CCAD78] nilUUID];
  v7 = [v5 compare:nilUUID];

  if (v7)
  {
    trajectoryUUID = [(ULHomeSlamFence *)self trajectoryUUID];

    if (trajectoryUUID)
    {
      trajectoryUUID2 = [(ULHomeSlamFence *)self trajectoryUUID];
      v10 = [trajectoryUUID2 compare:*(entry + 6)];

      if (v10)
      {
        [(ULHomeSlamFence *)self _resetState];
        [(ULHomeSlamFence *)self _updateStateWithEntry:entry];
        v11 = [*(entry + 6) copy];
        [(ULHomeSlamFence *)self setTrajectoryUUID:v11];

        return 1;
      }
    }

    else
    {
      [(ULHomeSlamFence *)self _resetState];
      v13 = [*(entry + 6) copy];
      [(ULHomeSlamFence *)self setTrajectoryUUID:v13];
    }

    [(ULHomeSlamFence *)self _updateStateWithEntry:entry];

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

- (void)_updateStateWithEntry:(const void *)entry
{
  [(ULHomeSlamFence *)self deltaPositionX];
  *&v6 = v5 + *(entry + 6);
  [(ULHomeSlamFence *)self setDeltaPositionX:v6];
  [(ULHomeSlamFence *)self deltaPositionY];
  *&v7 = *&v7 + *(entry + 7);

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