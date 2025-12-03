@interface MovingAverageEntry
- (MovingAverageEntry)initWithValue:(id)value;
@end

@implementation MovingAverageEntry

- (MovingAverageEntry)initWithValue:(id)value
{
  valueCopy = value;
  v10.receiver = self;
  v10.super_class = MovingAverageEntry;
  v6 = [(MovingAverageEntry *)&v10 init];
  if (v6)
  {
    date = [MEMORY[0x277CBEAA8] date];
    date = v6->_date;
    v6->_date = date;

    objc_storeStrong(&v6->_value, value);
  }

  return v6;
}

@end