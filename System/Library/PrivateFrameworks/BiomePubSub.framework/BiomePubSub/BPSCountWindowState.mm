@interface BPSCountWindowState
- (BPSCountWindowState)initWithCoder:(id)coder;
- (id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BPSCountWindowState

- (id)metadata
{
  v2 = [[BPSCountWindowMetadata alloc] initWithCurrentCount:[(BPSCountWindowState *)self currentCount]];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = BPSCountWindowState;
  coderCopy = coder;
  [(BPSWindowState *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BPSCountWindowState capacity](self, "capacity", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"capacity"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BPSCountWindowState currentCount](self, "currentCount")}];
  [coderCopy encodeObject:v6 forKey:@"currentCount"];
}

- (BPSCountWindowState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentCount"];
    if (v6 && (v9.receiver = self, v9.super_class = BPSCountWindowState, (self = [(BPSWindowState *)&v9 initWithCoder:coderCopy]) != 0))
    {
      -[BPSCountWindowState setCapacity:](self, "setCapacity:", [v5 unsignedIntegerValue]);
      -[BPSCountWindowState setCurrentCount:](self, "setCurrentCount:", [v6 unsignedIntegerValue]);
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end