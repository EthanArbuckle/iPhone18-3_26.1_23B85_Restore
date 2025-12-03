@interface NSString
- (id)mt_SHA1Base62String;
@end

@implementation NSString

- (id)mt_SHA1Base62String
{
  v2 = [(NSString *)self dataUsingEncoding:4];
  CC_SHA1([v2 bytes], objc_msgSend(v2, "length"), md);
  v3 = [[NSUUID alloc] initWithUUIDBytes:md];
  mt_base62String = [v3 mt_base62String];

  return mt_base62String;
}

@end