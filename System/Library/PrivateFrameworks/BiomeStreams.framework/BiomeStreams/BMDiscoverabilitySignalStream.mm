@interface BMDiscoverabilitySignalStream
- (id)source;
@end

@implementation BMDiscoverabilitySignalStream

- (id)source
{
  v3 = [BMCoreDuetDiscoverabilitySignalsSource alloc];
  v4 = [(BMDiscoverabilitySignalStream *)self identifier];
  v5 = [(BMSource *)v3 initWithIdentifier:v4];

  return v5;
}

@end