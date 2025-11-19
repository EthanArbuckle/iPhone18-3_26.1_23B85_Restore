@interface NSData
@end

@implementation NSData

uint64_t __44__NSData_DMCProfilesUI__DMCProfileHexString__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v7 = result;
    do
    {
      if (a3)
      {
        [*(v7 + 32) appendString:@" "];
      }

      result = [*(v7 + 32) appendFormat:@"%02lx", *(a2 + a3++)];
      --v4;
    }

    while (v4);
  }

  return result;
}

@end