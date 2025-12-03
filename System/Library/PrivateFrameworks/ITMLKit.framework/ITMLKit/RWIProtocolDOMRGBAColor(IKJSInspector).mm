@interface RWIProtocolDOMRGBAColor(IKJSInspector)
- (uint64_t)ik_color;
@end

@implementation RWIProtocolDOMRGBAColor(IKJSInspector)

- (uint64_t)ik_color
{
  v2 = MEMORY[0x277D75348];
  v3 = [self r] / 255.0;
  v4 = [self g] / 255.0;
  v5 = [self b] / 255.0;
  [self a];

  return [v2 colorWithRed:v3 green:v4 blue:v5 alpha:v6];
}

@end