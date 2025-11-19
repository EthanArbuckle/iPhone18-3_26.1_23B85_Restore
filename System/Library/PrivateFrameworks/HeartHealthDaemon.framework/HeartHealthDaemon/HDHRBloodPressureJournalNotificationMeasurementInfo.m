@interface HDHRBloodPressureJournalNotificationMeasurementInfo
- (BOOL)isEqual:(id)a3;
- (HDHRBloodPressureJournalNotificationMeasurementInfo)initWithMeasurementIndex:(int64_t)a3 measurementCount:(int64_t)a4 measurementWindowType:(int64_t)a5;
@end

@implementation HDHRBloodPressureJournalNotificationMeasurementInfo

- (HDHRBloodPressureJournalNotificationMeasurementInfo)initWithMeasurementIndex:(int64_t)a3 measurementCount:(int64_t)a4 measurementWindowType:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = HDHRBloodPressureJournalNotificationMeasurementInfo;
  result = [(HDHRBloodPressureJournalNotificationMeasurementInfo *)&v9 init];
  if (result)
  {
    result->_measurementIndex = a3;
    result->_measurementCount = a4;
    result->_measurementWindowType = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5->_measurementIndex == self->_measurementIndex && v5->_measurementCount == self->_measurementCount && v5->_measurementWindowType == self->_measurementWindowType;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end