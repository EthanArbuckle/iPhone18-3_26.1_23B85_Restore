@interface PKSharingCapabilityShareabilitiesToStringArray
@end

@implementation PKSharingCapabilityShareabilitiesToStringArray

__CFString *__PKSharingCapabilityShareabilitiesToStringArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedIntegerValue];
  v3 = @"none";
  v4 = @"max_depth_3";
  v5 = @"all";
  if (v2 != 999)
  {
    v5 = @"none";
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  if (v2 == 2)
  {
    v3 = @"propagate";
  }

  if (v2 == 1)
  {
    v3 = @"direct";
  }

  if (v2 <= 2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end