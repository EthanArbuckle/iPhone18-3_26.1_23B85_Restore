@interface CAFSeatOccupancyCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSeatOccupancyCharacteristic

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFSeatOccupancyCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  seatOccupancyValue = [(CAFSeatOccupancyCharacteristic *)self seatOccupancyValue];

  return NSStringFromSeatOccupancy(seatOccupancyValue);
}

@end