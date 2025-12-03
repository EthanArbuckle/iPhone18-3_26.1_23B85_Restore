@interface NSMutableData(KAESGCM)
- (uint64_t)replaceTrailingWith7LSB:()KAESGCM;
@end

@implementation NSMutableData(KAESGCM)

- (uint64_t)replaceTrailingWith7LSB:()KAESGCM
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = bswap64(a3);
  result = [self replaceBytesInRange:objc_msgSend(self withBytes:{"length", v5, v6) - 7, 7, &v5 + 1}];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end