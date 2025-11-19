@interface HIDElement(Snapshot)
- (GCHIDElementSnapshot)gc_snapshot;
@end

@implementation HIDElement(Snapshot)

- (GCHIDElementSnapshot)gc_snapshot
{
  v1 = [[GCHIDElementSnapshot alloc] initWithHIDElement:a1];

  return v1;
}

@end