@interface PKSharingCapabilityVisibilitiesToStringArray
@end

@implementation PKSharingCapabilityVisibilitiesToStringArray

__CFString *__PKSharingCapabilityVisibilitiesToStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];
  v3 = @"none";
  if (v2 == 1)
  {
    v3 = @"propagate";
  }

  if (v2 == 2)
  {
    v4 = @"all";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end