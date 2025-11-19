@interface MUIHello
- (NSString)world;
@end

@implementation MUIHello

- (NSString)world
{
  v2 = objc_alloc_init(MUIHelloSwift);
  v3 = [(MUIHelloSwift *)v2 world];

  return v3;
}

@end