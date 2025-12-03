@interface HDMappedDateIntervalIterator
- (HDMappedDateIntervalIterator)initWithDateIntervalMap:(id)map;
- (NSCopying)currentItem;
- (id)nextItem;
- (id)nextItemWithDateIntervalPassingTest:(id)test;
@end

@implementation HDMappedDateIntervalIterator

- (HDMappedDateIntervalIterator)initWithDateIntervalMap:(id)map
{
  mapCopy = map;
  allKeys = [mapCopy allKeys];
  v6 = [allKeys sortedArrayUsingComparator:&__block_literal_global_144];

  v11.receiver = self;
  v11.super_class = HDMappedDateIntervalIterator;
  v7 = [(HDDateIntervalIterator *)&v11 initWithDateIntervals:v6];
  if (v7)
  {
    v8 = [mapCopy copy];
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
  currentDateInterval = [(HDDateIntervalIterator *)self currentDateInterval];
  if (currentDateInterval)
  {
    v4 = [(NSDictionary *)self->_dateIntervalMap objectForKeyedSubscript:currentDateInterval];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nextItem
{
  nextDateInterval = [(HDDateIntervalIterator *)self nextDateInterval];
  if (nextDateInterval)
  {
    v4 = [(NSDictionary *)self->_dateIntervalMap objectForKeyedSubscript:nextDateInterval];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)nextItemWithDateIntervalPassingTest:(id)test
{
  v4 = [(HDDateIntervalIterator *)self nextDateIntervalPassingTest:test];
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