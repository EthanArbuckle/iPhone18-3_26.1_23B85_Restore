@interface CIImage(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation CIImage(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v4 = a3;
  v5 = [self hash];
  [v4 addString:@"CIImage<"];
  [v4 addBytes:&v5 length:8];
  [v4 addString:@">"];
}

@end