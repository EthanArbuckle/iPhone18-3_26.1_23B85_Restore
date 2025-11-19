@interface NSData(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSData(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v4 = a3;
  [v4 addString:@"NSData<"];
  [v4 addBytes:objc_msgSend(a1 length:{"bytes"), objc_msgSend(a1, "length")}];
  [v4 addString:@">"];
}

@end