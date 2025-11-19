@interface NSEnumerator(BPSSequence)
- (BPSSequence)bpsPublisher;
@end

@implementation NSEnumerator(BPSSequence)

- (BPSSequence)bpsPublisher
{
  v1 = [[BPSSequence alloc] initWithEnumerator:a1];

  return v1;
}

@end