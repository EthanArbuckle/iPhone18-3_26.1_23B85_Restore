@interface HDDateIntervalIterator
- (HDDateIntervalIterator)initWithDateIntervals:(id)intervals;
- (NSDateInterval)currentDateInterval;
- (id)nextDateIntervalPassingTest:(id)test;
@end

@implementation HDDateIntervalIterator

- (HDDateIntervalIterator)initWithDateIntervals:(id)intervals
{
  intervalsCopy = intervals;
  v9.receiver = self;
  v9.super_class = HDDateIntervalIterator;
  v5 = [(HDDateIntervalIterator *)&v9 init];
  if (v5)
  {
    v6 = [intervalsCopy copy];
    dateIntervals = v5->_dateIntervals;
    v5->_dateIntervals = v6;

    v5->_currentIndex = 0;
  }

  return v5;
}

- (NSDateInterval)currentDateInterval
{
  v3 = [(NSArray *)self->_dateIntervals count];
  if (v3)
  {
    currentIndex = self->_currentIndex;
    if (currentIndex >= [(NSArray *)self->_dateIntervals count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [(NSArray *)self->_dateIntervals objectAtIndexedSubscript:self->_currentIndex];
    }
  }

  return v3;
}

- (id)nextDateIntervalPassingTest:(id)test
{
  testCopy = test;
  currentIndex = self->_currentIndex;
  if (currentIndex >= [(NSArray *)self->_dateIntervals count])
  {
LABEL_4:
    currentDateInterval = 0;
  }

  else
  {
    while (1)
    {
      currentDateInterval = [(HDDateIntervalIterator *)self currentDateInterval];
      if (testCopy[2](testCopy, currentDateInterval))
      {
        break;
      }

      ++self->_currentIndex;

      v7 = self->_currentIndex;
      if (v7 >= [(NSArray *)self->_dateIntervals count])
      {
        goto LABEL_4;
      }
    }
  }

  return currentDateInterval;
}

@end