@interface NSArray(BPSSequence)
- (BPSSequence)bpsPublisher;
@end

@implementation NSArray(BPSSequence)

- (BPSSequence)bpsPublisher
{
  v1 = [[BPSSequence alloc] initWithSequence:self];

  return v1;
}

@end