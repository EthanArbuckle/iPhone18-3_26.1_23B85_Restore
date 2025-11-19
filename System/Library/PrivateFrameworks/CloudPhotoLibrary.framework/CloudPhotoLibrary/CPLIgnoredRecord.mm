@interface CPLIgnoredRecord
- (CPLIgnoredRecord)initWithRecord:(id)a3 ignoredDate:(id)a4;
@end

@implementation CPLIgnoredRecord

- (CPLIgnoredRecord)initWithRecord:(id)a3 ignoredDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLIgnoredRecord;
  v9 = [(CPLIgnoredRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    objc_storeStrong(&v10->_ignoredDate, a4);
  }

  return v10;
}

@end