@interface RWIProtocolDOMRGBAColor(IKJSInspector)
- (uint64_t)ik_color;
@end

@implementation RWIProtocolDOMRGBAColor(IKJSInspector)

- (uint64_t)ik_color
{
  v2 = MEMORY[0x277D75348];
  v3 = [a1 r] / 255.0;
  v4 = [a1 g] / 255.0;
  v5 = [a1 b] / 255.0;
  [a1 a];

  return [v2 colorWithRed:v3 green:v4 blue:v5 alpha:v6];
}

@end