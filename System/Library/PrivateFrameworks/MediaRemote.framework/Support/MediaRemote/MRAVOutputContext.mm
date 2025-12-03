@interface MRAVOutputContext
- (NSArray)mr_allAirPlayDevices;
@end

@implementation MRAVOutputContext

- (NSArray)mr_allAirPlayDevices
{
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v3 = [outputDevices msv_flatMap:&stru_1004C19F0];

  return v3;
}

@end