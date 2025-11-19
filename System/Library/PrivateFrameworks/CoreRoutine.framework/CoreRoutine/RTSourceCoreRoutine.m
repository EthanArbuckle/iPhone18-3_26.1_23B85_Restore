@interface RTSourceCoreRoutine
- (RTSourceCoreRoutine)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTSourceCoreRoutine

- (RTSourceCoreRoutine)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = RTSourceCoreRoutine;
  return [(RTSource *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = RTSourceCoreRoutine;
  [(RTSource *)&v3 encodeWithCoder:a3];
}

@end