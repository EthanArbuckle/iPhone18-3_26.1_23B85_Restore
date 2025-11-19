@interface MUIHelloSwift
- (NSString)world;
@end

@implementation MUIHelloSwift

- (NSString)world
{
  MEMORY[0x277D82BE0](self);
  HelloSwift.world.getter();
  MEMORY[0x277D82BD8](self);
  v4 = sub_214CCF544();

  return v4;
}

@end