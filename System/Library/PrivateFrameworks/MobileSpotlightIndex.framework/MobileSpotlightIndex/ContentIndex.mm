@interface ContentIndex
@end

@implementation ContentIndex

uint64_t __ContentIndex_catch_mach_exception_raise_identity_protected_block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (a2)
  {
    v3 = *(v2 + 256);
    if (!v3)
    {
      return result;
    }
  }

  else
  {
    if (!*(v2 + 264))
    {
      return result;
    }

    v4 = result;
    Current = CFAbsoluteTimeGetCurrent();
    v2 = *(v4 + 32);
    *(v2 + 192) = Current;
    v3 = *(v2 + 264);
  }

  v6 = *(v2 + 288);

  return v3(v6);
}

@end