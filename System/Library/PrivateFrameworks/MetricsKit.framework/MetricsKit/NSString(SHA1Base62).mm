@interface NSString(SHA1Base62)
- (id)mt_SHA1Base62String;
@end

@implementation NSString(SHA1Base62)

- (id)mt_SHA1Base62String
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [self dataUsingEncoding:4];
  CC_SHA1([v1 bytes], objc_msgSend(v1, "length"), md);
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:md];
  mt_base62String = [v2 mt_base62String];

  v4 = *MEMORY[0x277D85DE8];

  return mt_base62String;
}

@end