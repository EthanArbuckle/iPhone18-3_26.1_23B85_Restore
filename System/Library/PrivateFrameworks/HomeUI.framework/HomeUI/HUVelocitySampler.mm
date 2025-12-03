@interface HUVelocitySampler
- (CGVector)velocity;
- (void)addTouchSample:(CGPoint)sample;
- (void)reset;
@end

@implementation HUVelocitySampler

- (void)addTouchSample:(CGPoint)sample
{
  y = sample.y;
  x = sample.x;
  v6 = CACurrentMediaTime();
  currentSample = [(HUVelocitySampler *)self currentSample];
  if (currentSample && (v8 = currentSample, -[HUVelocitySampler currentSample](self, "currentSample"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isSampleDistinctFromPoint:{x, y}], v9, v8, (v10 & 1) == 0))
  {
    currentSample2 = [(HUVelocitySampler *)self currentSample];
    [currentSample2 setEnd:{x, y}];

    currentSample3 = [(HUVelocitySampler *)self currentSample];
    [currentSample3 setEndTime:v6];
  }

  else
  {
    currentSample4 = [(HUVelocitySampler *)self currentSample];

    if (currentSample4)
    {
      currentSample5 = [(HUVelocitySampler *)self currentSample];
      [currentSample5 end];
      v14 = v13;
      v16 = v15;

      currentSample6 = [(HUVelocitySampler *)self currentSample];
      [currentSample6 endTime];
      v19 = v18;
    }

    else
    {
      v14 = x;
      v16 = y;
      v19 = v6;
    }

    currentSample7 = [(HUVelocitySampler *)self currentSample];
    [(HUVelocitySampler *)self setPreviousSample:currentSample7];

    currentSample3 = [HUVelocitySample sampleWithStart:v14 end:v16 startTime:x endTime:y, v19, v6];
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
  currentSample = [(HUVelocitySampler *)self currentSample];

  if (currentSample)
  {
    currentSample2 = [(HUVelocitySampler *)self currentSample];
    [currentSample2 velocity];
    v6 = v5;
    v8 = v7;

    previousSample = [(HUVelocitySampler *)self previousSample];
    if (previousSample)
    {
      v10 = previousSample;
      previousSample2 = [(HUVelocitySampler *)self previousSample];
      [previousSample2 dt];
      v13 = v12;

      if (v13 > 0.00000011920929)
      {
        previousSample3 = [(HUVelocitySampler *)self previousSample];
        [previousSample3 velocity];
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