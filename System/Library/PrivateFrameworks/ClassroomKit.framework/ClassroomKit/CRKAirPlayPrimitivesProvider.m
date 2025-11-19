@interface CRKAirPlayPrimitivesProvider
- (id)makePrimitives;
@end

@implementation CRKAirPlayPrimitivesProvider

- (id)makePrimitives
{
  v2 = [MEMORY[0x277CB8698] sharedSystemScreenContext];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v2 setApplicationProcessID:{objc_msgSend(v3, "processIdentifier")}];

  v4 = [CRKConcreteAirPlayPrimitives alloc];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [(CRKConcreteAirPlayPrimitives *)v4 initWithOutputContext:v2 notificationCenter:v5];

  return v6;
}

@end