@interface CAFSeatOccupancyCharacteristic
+ (void)load;
- (id)formattedValue;
@end

@implementation CAFSeatOccupancyCharacteristic

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFSeatOccupancyCharacteristic;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)formattedValue
{
  v2 = [(CAFSeatOccupancyCharacteristic *)self seatOccupancyValue];

  return NSStringFromSeatOccupancy(v2);
}

@end