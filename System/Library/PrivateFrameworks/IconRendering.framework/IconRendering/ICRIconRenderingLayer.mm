@interface ICRIconRenderingLayer
- (void)display;
- (void)drawInDisplayList:(id)list;
@end

@implementation ICRIconRenderingLayer

- (void)drawInDisplayList:(id)list
{
  listCopy = list;
  selfCopy = self;
  sub_1B15C6590(listCopy);
}

- (void)display
{
  selfCopy = self;
  sub_1B15C5790();
}

@end