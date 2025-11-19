@interface _MFLoadingContextEventResult
- (void)setCleanupInvocable:(uint64_t)a1;
- (void)setContentURL:(uint64_t)a1;
- (void)setMessageAndHTMLDataPair:(uint64_t)a1;
- (void)setPublicMessageURL:(uint64_t)a1;
- (void)setRelatedContentItems:(uint64_t)a1;
@end

@implementation _MFLoadingContextEventResult

- (void)setContentURL:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

- (void)setRelatedContentItems:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_2_3(a1, a2);
  }
}

- (void)setCleanupInvocable:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6(a1, a2);
  }
}

- (void)setPublicMessageURL:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setMessageAndHTMLDataPair:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

@end