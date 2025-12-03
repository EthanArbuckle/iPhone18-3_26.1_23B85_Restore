@interface BMDiscoverabilitySignalStream
- (id)source;
@end

@implementation BMDiscoverabilitySignalStream

- (id)source
{
  v3 = [BMCoreDuetDiscoverabilitySignalsSource alloc];
  identifier = [(BMDiscoverabilitySignalStream *)self identifier];
  v5 = [(BMSource *)v3 initWithIdentifier:identifier];

  return v5;
}

@end