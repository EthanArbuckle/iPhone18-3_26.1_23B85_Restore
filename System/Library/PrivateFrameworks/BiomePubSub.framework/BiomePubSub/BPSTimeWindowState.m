@interface BPSTimeWindowState
- (BPSTimeWindowState)initWithCoder:(id)a3;
- (id)metadata;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BPSTimeWindowState

- (id)metadata
{
  v2 = [[BPSTimeWindowMetadata alloc] initWithDateInterval:self->_dateInterval];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BPSTimeWindowState;
  v4 = a3;
  [(BPSWindowState *)&v6 encodeWithCoder:v4];
  v5 = [(BPSTimeWindowState *)self dateInterval:v6.receiver];
  [v4 encodeObject:v5 forKey:@"dateInterval"];
}

- (BPSTimeWindowState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  if (v5 && (v9.receiver = self, v9.super_class = BPSTimeWindowState, v6 = [(BPSWindowState *)&v9 initWithCoder:v4], (self = v6) != 0))
  {
    [(BPSTimeWindowState *)v6 setDateInterval:v5];
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end