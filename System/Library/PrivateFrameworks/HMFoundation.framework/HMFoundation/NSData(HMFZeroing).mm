@interface NSData(HMFZeroing)
- (id)hmf_zeroingCopy;
@end

@implementation NSData(HMFZeroing)

- (id)hmf_zeroingCopy
{
  v1 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(self length:{"bytes"), objc_msgSend(self, "length")}];

  return v1;
}

@end