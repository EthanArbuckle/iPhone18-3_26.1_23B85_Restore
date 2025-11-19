@interface _HDEventsCollectionAssertion
- (void)setEventCollectors:(uint64_t)a1;
@end

@implementation _HDEventsCollectionAssertion

- (void)setEventCollectors:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

@end