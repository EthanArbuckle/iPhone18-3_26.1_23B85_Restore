@interface LPKSignpostEvent
- (void)_calculateDurationIfNeeded;
- (void)setEndDate:(id)a3;
- (void)setStartDate:(id)a3;
@end

@implementation LPKSignpostEvent

- (void)setStartDate:(id)a3
{
  objc_storeStrong(&self->_startDate, a3);

  [(LPKSignpostEvent *)self _calculateDurationIfNeeded];
}

- (void)setEndDate:(id)a3
{
  objc_storeStrong(&self->_endDate, a3);

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