@interface CPLIgnoredRecord
- (CPLIgnoredRecord)initWithRecord:(id)record ignoredDate:(id)date;
@end

@implementation CPLIgnoredRecord

- (CPLIgnoredRecord)initWithRecord:(id)record ignoredDate:(id)date
{
  recordCopy = record;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = CPLIgnoredRecord;
  v9 = [(CPLIgnoredRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    objc_storeStrong(&v10->_ignoredDate, date);
  }

  return v10;
}

@end