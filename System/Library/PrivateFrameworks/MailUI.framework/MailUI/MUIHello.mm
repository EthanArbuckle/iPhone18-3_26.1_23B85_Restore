@interface MUIHello
- (NSString)world;
@end

@implementation MUIHello

- (NSString)world
{
  v2 = objc_alloc_init(MUIHelloSwift);
  world = [(MUIHelloSwift *)v2 world];

  return world;
}

@end