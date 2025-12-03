@interface SimulatedGlassChicletLayer
- (void)drawInDisplayList:(id)list;
@end

@implementation SimulatedGlassChicletLayer

- (void)drawInDisplayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1B160CFB8(listCopy);
}

@end