@interface NSString(NSUUID_NSString_Workaround)
- (id)_legacy_ck_asUUID;
@end

@implementation NSString(NSUUID_NSString_Workaround)

- (id)_legacy_ck_asUUID
{
  v1 = [a1 dataUsingEncoding:4 allowLossyConversion:0];
  if ([v1 length] < 0x10)
  {
    v3 = [MEMORY[0x1E695DF88] dataWithLength:16];
    [v3 replaceBytesInRange:0 withBytes:{objc_msgSend(v1, "length"), objc_msgSend(v1, "bytes")}];
  }

  else
  {
    v2 = [v1 subdataWithRange:{0, 16}];
    v3 = [v2 mutableCopy];
  }

  v4 = [v3 mutableBytes];
  *(v4 + 6) = *(v4 + 6) & 0xF | 0x40;
  *(v4 + 8) = *(v4 + 8) & 0x3F | 0x80;
  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];

  return v5;
}

@end