@interface CLSManagedBusinessItem
- (int64_t)venueCapacity;
- (void)setVenueCapacity:(int64_t)a3;
@end

@implementation CLSManagedBusinessItem

- (void)setVenueCapacity:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
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
  v2 = [(CLSManagedBusinessItem *)self venueCapacityAsNumber];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

@end