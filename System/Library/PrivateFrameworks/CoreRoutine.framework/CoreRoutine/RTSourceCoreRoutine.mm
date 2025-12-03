@interface RTSourceCoreRoutine
- (RTSourceCoreRoutine)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RTSourceCoreRoutine

- (RTSourceCoreRoutine)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = RTSourceCoreRoutine;
  return [(RTSource *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = RTSourceCoreRoutine;
  [(RTSource *)&v3 encodeWithCoder:coder];
}

@end