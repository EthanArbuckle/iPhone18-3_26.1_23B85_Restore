@interface HDDateIntervalIterator
- (HDDateIntervalIterator)initWithDateIntervals:(id)a3;
- (NSDateInterval)currentDateInterval;
- (id)nextDateIntervalPassingTest:(id)a3;
@end

@implementation HDDateIntervalIterator

- (HDDateIntervalIterator)initWithDateIntervals:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDDateIntervalIterator;
  v5 = [(HDDateIntervalIterator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (id)nextDateIntervalPassingTest:(id)a3
{
  v4 = a3;
  currentIndex = self->_currentIndex;
  if (currentIndex >= [(NSArray *)self->_dateIntervals count])
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v6 = [(HDDateIntervalIterator *)self currentDateInterval];
      if (v4[2](v4, v6))
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

  return v6;
}

@end