@interface CPLCloudKitOperationContext
- (CKOperation)operation;
- (double)approximativeBlockedInterval;
- (id)startDateDescriptionWithNow:(id)now;
- (void)setProgress:(double)progress;
@end

@implementation CPLCloudKitOperationContext

- (id)startDateDescriptionWithNow:(id)now
{
  nowCopy = now;
  v5 = nowCopy;
  startDate = self->_startDate;
  if (startDate)
  {
    if (!nowCopy)
    {
      v5 = +[NSDate date];
      startDate = self->_startDate;
    }

    [v5 timeIntervalSinceDate:startDate];
    v7 = self->_startDate;
    if (v8 <= 600.0)
    {
      [CPLDateFormatter stringForTimeIntervalAgo:v7 now:v5];
    }

    else
    {
      [CPLDateFormatter stringFromDateAgo:v7 now:v5];
    }
    v9 = ;
    firstProgressDate = self->_firstProgressDate;
    if (firstProgressDate)
    {
      [(NSDate *)firstProgressDate timeIntervalSinceDate:self->_startDate];
      v12 = v11;
      if (v11 > 1.0)
      {
        v13 = [NSString alloc];
        v14 = [CPLDateFormatter stringForTimeInterval:v12];
        v15 = [v13 initWithFormat:@"%@ (blocked %@)", v9, v14];

        v9 = v15;
      }
    }

    if (self->_lastBatchDate)
    {
      v16 = [NSString alloc];
      v17 = [CPLDateFormatter stringForTimeIntervalAgo:self->_lastBatchDate now:v5];
      v18 = [v16 initWithFormat:@"%@ / last batch %@", v9, v17];

      v9 = v18;
    }
  }

  else
  {
    v9 = @"not started";
  }

  return v9;
}

- (void)setProgress:(double)progress
{
  v5 = +[NSDate date];
  lastProgressDate = self->_lastProgressDate;
  self->_lastProgressDate = v5;

  if (!self->_firstProgressDate)
  {
    objc_storeStrong(&self->_firstProgressDate, self->_lastProgressDate);
  }

  progressCopy = 2.22507386e-308;
  if (progress != 0.0)
  {
    progressCopy = progress;
  }

  self->_progress = progressCopy;
}

- (double)approximativeBlockedInterval
{
  v3 = self->_startDate;
  lastProgressDate = self->_lastProgressDate;
  if (lastProgressDate)
  {
    v5 = lastProgressDate;

    v3 = v5;
  }

  if (self->_lastBatchDate)
  {
    v6 = [(NSDate *)v3 laterDate:?];

    v3 = v6;
  }

  [(NSDate *)v3 timeIntervalSinceNow];
  v8 = -v7;

  return v8;
}

- (CKOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end