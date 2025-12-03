@interface LPKSignpostEvent
- (void)_calculateDurationIfNeeded;
- (void)setEndDate:(id)date;
- (void)setStartDate:(id)date;
@end

@implementation LPKSignpostEvent

- (void)setStartDate:(id)date
{
  objc_storeStrong(&self->_startDate, date);

  [(LPKSignpostEvent *)self _calculateDurationIfNeeded];
}

- (void)setEndDate:(id)date
{
  objc_storeStrong(&self->_endDate, date);

  [(LPKSignpostEvent *)self _calculateDurationIfNeeded];
}

- (void)_calculateDurationIfNeeded
{
  if (self->_startDate)
  {
    endDate = self->_endDate;
    if (endDate)
    {
      [(NSDate *)endDate timeIntervalSinceDate:?];
      self->_duration = v4;
    }
  }
}

@end