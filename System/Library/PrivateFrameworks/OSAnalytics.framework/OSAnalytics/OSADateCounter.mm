@interface OSADateCounter
- (OSADateCounter)initWithIdentifier:(id)identifier;
- (unint64_t)count;
- (void)increment;
- (void)resetCount;
@end

@implementation OSADateCounter

- (OSADateCounter)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = OSADateCounter;
  v5 = [(OSADateCounter *)&v11 init];
  if (v5)
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Day", identifierCopy];
    dayKey = v5->_dayKey;
    v5->_dayKey = identifierCopy;

    identifierCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@Count", identifierCopy];
    countKey = v5->_countKey;
    v5->_countKey = identifierCopy2;
  }

  return v5;
}

- (unint64_t)count
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults integerForKey:self->_dayKey];

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
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setInteger:v6 forKey:self->_dayKey];

    return 0;
  }

  standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = [standardUserDefaults3 integerForKey:self->_countKey];

  if ((v8 & 0x8000000000000000) != 0)
  {
    [(OSADateCounter *)self resetCount];
    return 0;
  }

  return v8;
}

- (void)increment
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:-[OSADateCounter count](self forKey:{"count") + 1, self->_countKey}];
}

- (void)resetCount
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setInteger:0 forKey:self->_countKey];
}

@end