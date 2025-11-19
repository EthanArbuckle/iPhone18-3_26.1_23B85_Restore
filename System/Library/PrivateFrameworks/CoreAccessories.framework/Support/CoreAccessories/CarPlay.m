@interface CarPlay
@end

@implementation CarPlay

void __platform_CarPlay_availability_block_invoke(uint64_t a1)
{
  accFeatureHandlers_invokeHandler(*(a1 + 32), 58, *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __platform_CarPlay_availableDigitalCarKeys_block_invoke(uint64_t a1, const void *a2)
{
  if (a2)
  {
    platform_CarPlay_matchedDigitalCarKeys(*(a1 + 32), a2);
  }
}

CFTypeRef __platform_CarPlay_matchedDigitalCarKeys_block_invoke(uint64_t a1)
{
  accFeatureHandlers_invokeHandler(*(a1 + 32), 59, *(a1 + 40));
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  return CFRetain(v2);
}

@end