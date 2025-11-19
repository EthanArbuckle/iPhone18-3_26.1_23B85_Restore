@interface MAIgnoreProgressReporter
- (MAIgnoreProgressReporter)init;
@end

@implementation MAIgnoreProgressReporter

- (MAIgnoreProgressReporter)init
{
  v3.receiver = self;
  v3.super_class = MAIgnoreProgressReporter;
  return [(MAProgressReporter *)&v3 initForSubclasses];
}

@end