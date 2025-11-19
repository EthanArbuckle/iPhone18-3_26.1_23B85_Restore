@interface CPSClipEntryPointRecord
- (CPSClipEntryPointRecord)initWithSQLiteRow:(id)a3;
@end

@implementation CPSClipEntryPointRecord

- (CPSClipEntryPointRecord)initWithSQLiteRow:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSClipEntryPointRecord;
  v5 = [(CPSClipEntryPointRecord *)&v13 init];
  if (v5)
  {
    v6 = [v4 stringAtIndex:0];
    appClipBundleID = v5->_appClipBundleID;
    v5->_appClipBundleID = v6;

    v8 = [v4 stringAtIndex:1];
    webClipIdentifier = v5->_webClipIdentifier;
    v5->_webClipIdentifier = v8;

    [v4 doubleAtIndex:2];
    v5->_lastABRFetchTime = v10;
    v11 = v5;
  }

  return v5;
}

@end