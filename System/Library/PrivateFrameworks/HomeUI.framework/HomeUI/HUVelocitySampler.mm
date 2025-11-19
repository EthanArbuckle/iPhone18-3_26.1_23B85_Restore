@interface HUVelocitySampler
- (CGVector)velocity;
- (void)addTouchSample:(CGPoint)a3;
- (void)reset;
@end

@implementation HUVelocitySampler

- (void)addTouchSample:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = CACurrentMediaTime();
  v7 = [(HUVelocitySampler *)self currentSample];
  if (v7 && (v8 = v7, -[HUVelocitySampler currentSample](self, "currentSample"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSampleDistinctFromPoint:{x, y}], v9, v8, (v10 & 1) == 0))
  {
    v20 = [(HUVelocitySampler *)self currentSample];
    [v20 setEnd:{x, y}];

    v22 = [(HUVelocitySampler *)self currentSample];
    [v22 setEndTime:v6];
  }

  else
  {
    v11 = [(HUVelocitySampler *)self currentSample];

    if (v11)
    {
      v12 = [(HUVelocitySampler *)self currentSample];
      [v12 end];
      v14 = v13;
      v16 = v15;

      v17 = [(HUVelocitySampler *)self currentSample];
      [v17 endTime];
      v19 = v18;
    }

    else
    {
      v14 = x;
      v16 = y;
      v19 = v6;
    }

    v21 = [(HUVelocitySampler *)self currentSample];
    [(HUVelocitySampler *)self setPreviousSample:v21];

    v22 = [HUVelocitySample sampleWithStart:v14 end:v16 startTime:x endTime:y, v19, v6];
    [(HUVelocitySampler *)self setCurrentSample:?];
  }
}

- (void)reset
{
  [(HUVelocitySampler *)self setPreviousSample:0];

  [(HUVelocitySampler *)self setCurrentSample:0];
}

- (CGVector)velocity
{
  v3 = [(HUVelocitySampler *)self currentSample];

  if (v3)
  {
    v4 = [(HUVelocitySampler *)self currentSample];
    [v4 velocity];
    v6 = v5;
    v8 = v7;

    v9 = [(HUVelocitySampler *)self previousSample];
    if (v9)
    {
      v10 = v9;
      v11 = [(HUVelocitySampler *)self previousSample];
      [v11 dt];
      v13 = v12;

      if (v13 > 0.00000011920929)
      {
        v14 = [(HUVelocitySampler *)self previousSample];
        [v14 velocity];
        v16 = v15;
        v18 = v17;

        v6 = v16 * 0.75 + v6 * 0.25;
        v8 = v18 * 0.75 + v8 * 0.25;
      }
    }
  }

  else
  {
    v6 = 0.0;
    v8 = 0.0;
  }

  v19 = v6;
  v20 = v8;
  result.dy = v20;
  result.dx = v19;
  return result;
}

@end