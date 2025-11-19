@interface MRAVOutputContext
- (NSArray)mr_allAirPlayDevices;
@end

@implementation MRAVOutputContext

- (NSArray)mr_allAirPlayDevices
{
  v2 = [(MRAVOutputContext *)self outputDevices];
  v3 = [v2 msv_flatMap:&stru_1004C19F0];

  return v3;
}

@end