@interface MovingAverageEntry
- (MovingAverageEntry)initWithValue:(id)a3;
@end

@implementation MovingAverageEntry

- (MovingAverageEntry)initWithValue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MovingAverageEntry;
  v6 = [(MovingAverageEntry *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    date = v6->_date;
    v6->_date = v7;

    objc_storeStrong(&v6->_value, a3);
  }

  return v6;
}

@end