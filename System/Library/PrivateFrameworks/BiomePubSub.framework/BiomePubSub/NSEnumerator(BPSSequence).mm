@interface NSEnumerator(BPSSequence)
- (BPSSequence)bpsPublisher;
@end

@implementation NSEnumerator(BPSSequence)

- (BPSSequence)bpsPublisher
{
  v1 = [[BPSSequence alloc] initWithEnumerator:self];

  return v1;
}

@end