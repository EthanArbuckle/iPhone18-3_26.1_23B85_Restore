@interface CBDevice(_HUAccessory_)
- (uint64_t)productCode;
@end

@implementation CBDevice(_HUAccessory_)

- (uint64_t)productCode
{
  v2 = [a1 vendorID];
  if (!v2)
  {
    if ([a1 deviceFlags] >= 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = 76;
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%d, %d", v2, objc_msgSend(a1, "productID")];
}

@end