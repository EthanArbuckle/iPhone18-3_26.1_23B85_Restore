@interface NSDate
+ (id)_durationDescription:(double)description;
- (BOOL)isDueForPasscodeChangedBackupWithLastBackupDate:(id)date;
- (BOOL)isWithinDefaultBackupPeriod;
- (id)iso8601String;
@end

@implementation NSDate

- (id)iso8601String
{
  v3 = +[NSDateFormatter ISO8601Formatter];
  v4 = [v3 stringFromDate:self];

  return v4;
}

+ (id)_durationDescription:(double)description
{
  v4 = objc_opt_new();
  [v4 setUnitsStyle:0];
  v5 = [v4 localizedStringFromTimeInterval:description];

  return v5;
}

- (BOOL)isWithinDefaultBackupPeriod
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self];
  v5 = v4;

  return v5 < 86400.0 && v5 > 0.0;
}

- (BOOL)isDueForPasscodeChangedBackupWithLastBackupDate:(id)date
{
  dateCopy = date;
  if ([(NSDate *)self isWithinDefaultBackupPeriod])
  {
    v5 = [(NSDate *)self compare:dateCopy]== 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end