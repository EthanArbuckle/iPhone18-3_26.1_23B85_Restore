@interface HDHRBloodPressureJournalNotificationMeasurementInfo
- (BOOL)isEqual:(id)equal;
- (HDHRBloodPressureJournalNotificationMeasurementInfo)initWithMeasurementIndex:(int64_t)index measurementCount:(int64_t)count measurementWindowType:(int64_t)type;
@end

@implementation HDHRBloodPressureJournalNotificationMeasurementInfo

- (HDHRBloodPressureJournalNotificationMeasurementInfo)initWithMeasurementIndex:(int64_t)index measurementCount:(int64_t)count measurementWindowType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = HDHRBloodPressureJournalNotificationMeasurementInfo;
  result = [(HDHRBloodPressureJournalNotificationMeasurementInfo *)&v9 init];
  if (result)
  {
    result->_measurementIndex = index;
    result->_measurementCount = count;
    result->_measurementWindowType = type;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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