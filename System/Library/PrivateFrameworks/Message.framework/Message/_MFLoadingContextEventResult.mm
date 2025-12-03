@interface _MFLoadingContextEventResult
- (void)setCleanupInvocable:(uint64_t)invocable;
- (void)setContentURL:(uint64_t)l;
- (void)setMessageAndHTMLDataPair:(uint64_t)pair;
- (void)setPublicMessageURL:(uint64_t)l;
- (void)setRelatedContentItems:(uint64_t)items;
@end

@implementation _MFLoadingContextEventResult

- (void)setContentURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 8), a2);
  }
}

- (void)setRelatedContentItems:(uint64_t)items
{
  if (items)
  {
    OUTLINED_FUNCTION_2_3(items, a2);
  }
}

- (void)setCleanupInvocable:(uint64_t)invocable
{
  if (invocable)
  {
    OUTLINED_FUNCTION_1_6(invocable, a2);
  }
}

- (void)setPublicMessageURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 32), a2);
  }
}

- (void)setMessageAndHTMLDataPair:(uint64_t)pair
{
  if (pair)
  {
    objc_storeStrong((pair + 40), a2);
  }
}

@end