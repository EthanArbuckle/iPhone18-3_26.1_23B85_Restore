@interface CPSAppClipRecord
- (CPSAppClipRecord)initWithBundleID:(id)d;
- (CPSAppClipRecord)initWithSQLiteRow:(id)row bundleID:(id)d;
@end

@implementation CPSAppClipRecord

- (CPSAppClipRecord)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = CPSAppClipRecord;
  v5 = [(CPSAppClipRecord *)&v10 init];
  if (v5)
  {
    v6 = [dCopy copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = v5;
  }

  return v5;
}

- (CPSAppClipRecord)initWithSQLiteRow:(id)row bundleID:(id)d
{
  rowCopy = row;
  v7 = [(CPSAppClipRecord *)self initWithBundleID:d];
  if (v7)
  {
    v8 = [rowCopy objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_userNotificationGranted, v8);
    }

    v9 = [rowCopy objectAtIndex:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_locationConfirmationGranted, v9);
    }

    v7->_locationConfirmationState = [rowCopy intAtIndex:2];
    [rowCopy doubleAtIndex:3];
    v7->_lastProxCardLaunchTime = v10;
    [rowCopy doubleAtIndex:4];
    v7->_lastVersionCheckTime = v11;
    [rowCopy doubleAtIndex:5];
    v7->_lastInstallTime = v12;
    v13 = [rowCopy stringAtIndex:6];
    fullApplicationName = v7->_fullApplicationName;
    v7->_fullApplicationName = v13;

    v15 = [rowCopy stringAtIndex:7];
    fullApplicationCaption = v7->_fullApplicationCaption;
    v7->_fullApplicationCaption = v15;

    v17 = [rowCopy stringAtIndex:8];
    if (v17)
    {
      v18 = [MEMORY[0x277CBEBC0] URLWithString:v17];
      fullApplicationStoreURL = v7->_fullApplicationStoreURL;
      v7->_fullApplicationStoreURL = v18;
    }

    v20 = v7;
  }

  return v7;
}

@end