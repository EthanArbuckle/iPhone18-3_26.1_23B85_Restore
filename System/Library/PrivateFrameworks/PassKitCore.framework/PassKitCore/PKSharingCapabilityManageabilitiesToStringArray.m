@interface PKSharingCapabilityManageabilitiesToStringArray
@end

@implementation PKSharingCapabilityManageabilitiesToStringArray

__CFString *__PKSharingCapabilityManageabilitiesToStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];
  if ((v2 + 1) > 3)
  {
    return @"none";
  }

  else
  {
    return off_1E79D2258[v2 + 1];
  }
}

@end