@interface CAMTorchPattern
- (CAMTorchPattern)init;
- (CAMTorchPattern)initWithType:(int64_t)a3;
- (id)_blinkAnimationGroup;
- (id)_blinkAnimationWithBeginTime:(double)a3 duration:(double)a4 repeatCount:(int64_t)a5;
- (id)_doubleBlinkAnimationGroup;
- (id)_longPatternAnimationGroup;
- (id)_patternAnimationWithBeginTime:(double)a3 duration:(double)a4 repeatCount:(int64_t)a5;
- (id)_shortPatternAnimationGroup;
- (void)_updateAnimationGroup;
- (void)setStartTime:(double)a3;
@end

@implementation CAMTorchPattern

- (CAMTorchPattern)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"CAMTorchPattern must be initialized with -initWithType:"];

  return 0;
}

- (CAMTorchPattern)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMTorchPattern;
  v4 = [(CAMTorchPattern *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->__type = a3;
    [(CAMTorchPattern *)v4 _updateAnimationGroup];
    v6 = v5;
  }

  return v5;
}

- (void)setStartTime:(double)a3
{
  if (self->_startTime != a3)
  {
    self->__lastUpdateTime = a3;
    self->_startTime = a3;
  }
}

- (id)_patternAnimationWithBeginTime:(double)a3 duration:(double)a4 repeatCount:(int64_t)a5
{
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"torchLevel"];
  [v8 setValues:&unk_1F16C9128];
  [v8 setKeyTimes:&unk_1F16C9140];
  [v8 setBeginTime:a3];
  [v8 setDuration:a4];
  *&v9 = a5;
  [v8 setRepeatCount:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v8 setTimingFunction:v10];

  [v8 setCalculationMode:*MEMORY[0x1E69795A0]];

  return v8;
}

- (id)_shortPatternAnimationGroup
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:8 duration:0.0 repeatCount:0.25];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setAnimations:v5];

  [v3 setDuration:3.0];

  return v3;
}

- (id)_longPatternAnimationGroup
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:2 duration:0.0 repeatCount:2.0];
  v5 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:4 duration:4.0 repeatCount:0.75];
  v6 = [(CAMTorchPattern *)self _patternAnimationWithBeginTime:8 duration:7.0 repeatCount:0.25];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  [v3 setAnimations:v7];

  [v3 setDuration:10.0];

  return v3;
}

- (id)_blinkAnimationWithBeginTime:(double)a3 duration:(double)a4 repeatCount:(int64_t)a5
{
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"torchLevel"];
  [v8 setValues:&unk_1F16C9158];
  [v8 setKeyTimes:&unk_1F16C9170];
  [v8 setBeginTime:a3];
  [v8 setDuration:a4];
  *&v9 = a5;
  [v8 setRepeatCount:v9];
  v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v8 setTimingFunction:v10];

  [v8 setCalculationMode:*MEMORY[0x1E69795A0]];

  return v8;
}

- (id)_blinkAnimationGroup
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _blinkAnimationWithBeginTime:1 duration:0.0 repeatCount:1.0];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setAnimations:v5];

  [v3 setDuration:1.0];

  return v3;
}

- (id)_doubleBlinkAnimationGroup
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979308] animation];
  v4 = [(CAMTorchPattern *)self _blinkAnimationWithBeginTime:2 duration:0.0 repeatCount:0.5];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setAnimations:v5];

  [v3 setDuration:1.0];

  return v3;
}

- (void)_updateAnimationGroup
{
  type = self->__type;
  if (type > 1)
  {
    if (type == 2)
    {
      v4 = [(CAMTorchPattern *)self _blinkAnimationGroup];
    }

    else
    {
      if (type != 3)
      {
        return;
      }

      v4 = [(CAMTorchPattern *)self _doubleBlinkAnimationGroup];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      return;
    }

    v4 = [(CAMTorchPattern *)self _longPatternAnimationGroup];
  }

  else
  {
    v4 = [(CAMTorchPattern *)self _shortPatternAnimationGroup];
  }

  animationGroup = self->__animationGroup;
  self->__animationGroup = v4;

  MEMORY[0x1EEE66BB8](v4, animationGroup);
}

@end