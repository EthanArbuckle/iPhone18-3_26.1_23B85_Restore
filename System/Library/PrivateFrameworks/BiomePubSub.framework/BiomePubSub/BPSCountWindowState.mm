@interface BPSCountWindowState
- (BPSCountWindowState)initWithCoder:(id)a3;
- (id)metadata;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BPSCountWindowState

- (id)metadata
{
  v2 = [[BPSCountWindowMetadata alloc] initWithCurrentCount:[(BPSCountWindowState *)self currentCount]];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = BPSCountWindowState;
  v4 = a3;
  [(BPSWindowState *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BPSCountWindowState capacity](self, "capacity", v7.receiver, v7.super_class)}];
  [v4 encodeObject:v5 forKey:@"capacity"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BPSCountWindowState currentCount](self, "currentCount")}];
  [v4 encodeObject:v6 forKey:@"currentCount"];
}

- (BPSCountWindowState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentCount"];
    if (v6 && (v9.receiver = self, v9.super_class = BPSCountWindowState, (self = [(BPSWindowState *)&v9 initWithCoder:v4]) != 0))
    {
      -[BPSCountWindowState setCapacity:](self, "setCapacity:", [v5 unsignedIntegerValue]);
      -[BPSCountWindowState setCurrentCount:](self, "setCurrentCount:", [v6 unsignedIntegerValue]);
      self = self;
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end