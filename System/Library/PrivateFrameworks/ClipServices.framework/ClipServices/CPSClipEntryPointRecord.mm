@interface CPSClipEntryPointRecord
- (CPSClipEntryPointRecord)initWithSQLiteRow:(id)row;
@end

@implementation CPSClipEntryPointRecord

- (CPSClipEntryPointRecord)initWithSQLiteRow:(id)row
{
  rowCopy = row;
  v13.receiver = self;
  v13.super_class = CPSClipEntryPointRecord;
  v5 = [(CPSClipEntryPointRecord *)&v13 init];
  if (v5)
  {
    v6 = [rowCopy stringAtIndex:0];
    appClipBundleID = v5->_appClipBundleID;
    v5->_appClipBundleID = v6;

    v8 = [rowCopy stringAtIndex:1];
    webClipIdentifier = v5->_webClipIdentifier;
    v5->_webClipIdentifier = v8;

    [rowCopy doubleAtIndex:2];
    v5->_lastABRFetchTime = v10;
    v11 = v5;
  }

  return v5;
}

@end