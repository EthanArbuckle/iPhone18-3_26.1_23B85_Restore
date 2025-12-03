@interface CLSManagedBusinessItem
- (int64_t)venueCapacity;
- (void)setVenueCapacity:(int64_t)capacity;
@end

@implementation CLSManagedBusinessItem

- (void)setVenueCapacity:(int64_t)capacity
{
  if (capacity == 0x7FFFFFFFFFFFFFFFLL)
  {

    [(CLSManagedBusinessItem *)self setVenueCapacityAsNumber:0];
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [(CLSManagedBusinessItem *)self setVenueCapacityAsNumber:v4];
  }
}

- (int64_t)venueCapacity
{
  venueCapacityAsNumber = [(CLSManagedBusinessItem *)self venueCapacityAsNumber];
  v3 = venueCapacityAsNumber;
  if (venueCapacityAsNumber)
  {
    integerValue = [venueCapacityAsNumber integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

@end