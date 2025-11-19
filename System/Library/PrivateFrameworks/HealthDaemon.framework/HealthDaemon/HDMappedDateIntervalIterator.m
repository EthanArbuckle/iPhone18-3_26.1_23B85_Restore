@interface HDMappedDateIntervalIterator
- (HDMappedDateIntervalIterator)initWithDateIntervalMap:(id)a3;
- (NSCopying)currentItem;
- (id)nextItem;
- (id)nextItemWithDateIntervalPassingTest:(id)a3;
@end

@implementation HDMappedDateIntervalIterator

- (HDMappedDateIntervalIterator)initWithDateIntervalMap:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_144];

  v11.receiver = self;
  v11.super_class = HDMappedDateIntervalIterator;
  v7 = [(HDDateIntervalIterator *)&v11 initWithDateIntervals:v6];
  if (v7)
  {
    v8 = [v4 copy];
    dateIntervalMap = v7->_dateIntervalMap;
    v7->_dateIntervalMap = v8;
  }

  return v7;
}

uint64_t __56__HDMappedDateIntervalIterator_initWithDateIntervalMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 endDate];
  v6 = [v4 endDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (NSCopying)currentItem
{
  v3 = [(HDDateIntervalIterator *)self currentDateInterval];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_dateIntervalMap objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nextItem
{
  v3 = [(HDDateIntervalIterator *)self nextDateInterval];
  if (v3)
  {
    v4 = [(NSDictionary *)self->_dateIntervalMap objectForKeyedSubscript:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nextItemWithDateIntervalPassingTest:(id)a3
{
  v4 = [(HDDateIntervalIterator *)self nextDateIntervalPassingTest:a3];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_dateIntervalMap objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end