@interface NUColorSpace(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NUColorSpace(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v5 = a3;
  [(NUColorSpace *)self CGColorSpace];
  MD5Digest = CGColorSpaceGetMD5Digest();
  [v5 addString:@"CGColorSpace<"];
  [v5 addBytes:MD5Digest length:16];
  [v5 addString:@">"];
}

@end