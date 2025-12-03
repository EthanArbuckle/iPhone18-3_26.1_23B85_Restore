@interface CAMTorchPattern
- (CAMTorchPattern)init;
- (CAMTorchPattern)initWithType:(int64_t)type;
- (id)_blinkAnimationGroup;
- (id)_blinkAnimationWithBeginTime:(double)time duration:(double)duration repeatCount:(int64_t)count;
- (id)_doubleBlinkAnimationGroup;
- (id)_longPatternAnimationGroup;
- (id)_patternAnimationWithBeginTime:(double)time duration:(double)duration repeatCount:(int64_t)count;
- (id)_shortPatternAnimationGroup;
- (void)_updateAnimationGroup;
- (void)setStartTime:(double)time;
@end

@implementation CAMTorchPattern

- (CAMTorchPattern)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"CAMTorchPattern must be initialized with -initWithType:"];

  return 0;
}

- (CAMTorchPattern)initWithType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = CAMTorchPattern;
  v4 = [(CAMTorchPattern *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__type = type;
    [(CAMTorchPattern *)v4 _updateAnimationGroup];
    v6 = v5;
  }

  return v5;
}

- (void)setStartTime:(double)time
{
  if (self->_startTime != time)
  {
    self->__lastUpdateTime = time;
    self->_startTime = time;
  }
}

- (id)_patternAnimationWithBeginTime:(double)time duration:(double)duration repeatCount:(int64_t)count
{
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"torchLevel"];
  [v8 setValues:&unk_1F16C9128];
  [v8 setKeyTimes:&unk_1F16C9140];
  [v8 setBeginTime:time];
  [v8 setDuration:duration];
  *&v9 = count;
  [v8 setRepeatCount:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v8 setTimingFunction:v10];

  [v8 setCalculationMode:*MEMORY[0x1E69795A0]];

  return v8;
}

- (id)_shortPatternAnimationGroup
{
  v7[1] = *MEMORY[0x1E69E9840];
  animation = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:8 duration:0.0 repeatCount:0.25];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [animation setAnimations:v5];

  [animation setDuration:3.0];

  return animation;
}

- (id)_longPatternAnimationGroup
{
  v9[3] = *MEMORY[0x1E69E9840];
  animation = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:2 duration:0.0 repeatCount:2.0];
  v5 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:4 duration:4.0 repeatCount:0.75];
  v6 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:8 duration:7.0 repeatCount:0.25];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  [animation setAnimations:v7];

  [animation setDuration:10.0];

  return animation;
}

- (id)_blinkAnimationWithBeginTime:(double)time duration:(double)duration repeatCount:(int64_t)count
{
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"torchLevel"];
  [v8 setValues:&unk_1F16C9158];
  [v8 setKeyTimes:&unk_1F16C9170];
  [v8 setBeginTime:time];
  [v8 setDuration:duration];
  *&v9 = count;
  [v8 setRepeatCount:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v8 setTimingFunction:v10];

  [v8 setCalculationMode:*MEMORY[0x1E69795A0]];

  return v8;
}

- (id)_blinkAnimationGroup
{
  v7[1] = *MEMORY[0x1E69E9840];
  animation = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _blinkAnimationWithBeginTime:1 duration:0.0 repeatCount:1.0];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [animation setAnimations:v5];

  [animation setDuration:1.0];

  return animation;
}

- (id)_doubleBlinkAnimationGroup
{
  v7[1] = *MEMORY[0x1E69E9840];
  animation = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _blinkAnimationWithBeginTime:2 duration:0.0 repeatCount:0.5];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [animation setAnimations:v5];

  [animation setDuration:1.0];

  return animation;
}

- (void)_updateAnimationGroup
{
  type = self->__type;
  if (type > 1)
  {
    if (type == 2)
    {
      _blinkAnimationGroup = [(CAMTorchPattern *)self _blinkAnimationGroup];
    }

    else
    {
      if (type != 3)
      {
        return;
      }

      _blinkAnimationGroup = [(CAMTorchPattern *)self _doubleBlinkAnimationGroup];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      return;
    }

    _blinkAnimationGroup = [(CAMTorchPattern *)self _longPatternAnimationGroup];
  }

  else
  {
    _blinkAnimationGroup = [(CAMTorchPattern *)self _shortPatternAnimationGroup];
  }

  animationGroup = self->__animationGroup;
  self->__animationGroup = _blinkAnimationGroup;

  MEMORY[0x1EEE66BB8](_blinkAnimationGroup, animationGroup);
}

@end