@interface OSADateCounter
- (OSADateCounter)initWithIdentifier:(id)a3;
- (unint64_t)count;
- (void)increment;
- (void)resetCount;
@end

@implementation OSADateCounter

- (OSADateCounter)initWithIdentifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OSADateCounter;
  v5 = [(OSADateCounter *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Day", v4];
    dayKey = v5->_dayKey;
    v5->_dayKey = v6;

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Count", v4];
    countKey = v5->_countKey;
    v5->_countKey = v8;
  }

  return v5;
}

- (unint64_t)count
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 integerForKey:self->_dayKey];

  v5 = time(0);
  if (v5 >= 0)
  {
    v6 = v5 / 0x15180uLL;
  }

  else
  {
    v6 = v5;
  }

  if (v6 != v4)
  {
    [(OSADateCounter *)self resetCount];
    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v9 setInteger:v6 forKey:self->_dayKey];

    return 0;
  }

  v7 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [v7 integerForKey:self->_countKey];

  if ((v8 & 0x8000000000000000) != 0)
  {
    [(OSADateCounter *)self resetCount];
    return 0;
  }

  return v8;
}

- (void)increment
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 setInteger:-[OSADateCounter count](self forKey:{"count") + 1, self->_countKey}];
}

- (void)resetCount
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 setInteger:0 forKey:self->_countKey];
}

@end