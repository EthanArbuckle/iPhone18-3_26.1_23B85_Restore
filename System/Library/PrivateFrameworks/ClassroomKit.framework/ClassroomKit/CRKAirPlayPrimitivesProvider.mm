@interface CRKAirPlayPrimitivesProvider
- (id)makePrimitives;
@end

@implementation CRKAirPlayPrimitivesProvider

- (id)makePrimitives
{
  mEMORY[0x277CB8698] = [MEMORY[0x277CB8698] sharedSystemScreenContext];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  [mEMORY[0x277CB8698] setApplicationProcessID:{objc_msgSend(processInfo, "processIdentifier")}];

  v4 = [CRKConcreteAirPlayPrimitives alloc];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [(CRKConcreteAirPlayPrimitives *)v4 initWithOutputContext:mEMORY[0x277CB8698] notificationCenter:defaultCenter];

  return v6;
}

@end