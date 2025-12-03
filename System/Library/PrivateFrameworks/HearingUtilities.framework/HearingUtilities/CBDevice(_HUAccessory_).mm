@interface CBDevice(_HUAccessory_)
- (uint64_t)productCode;
@end

@implementation CBDevice(_HUAccessory_)

- (uint64_t)productCode
{
  vendorID = [self vendorID];
  if (!vendorID)
  {
    if ([self deviceFlags] >= 2)
    {
      vendorID = 0;
    }

    else
    {
      vendorID = 76;
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%d, %d", vendorID, objc_msgSend(self, "productID")];
}

@end