@interface _HDEventsCollectionAssertion
- (void)setEventCollectors:(uint64_t)collectors;
@end

@implementation _HDEventsCollectionAssertion

- (void)setEventCollectors:(uint64_t)collectors
{
  if (collectors)
  {
    objc_storeStrong((collectors + 88), a2);
  }
}

@end