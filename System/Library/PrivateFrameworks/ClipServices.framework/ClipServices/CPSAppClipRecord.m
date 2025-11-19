@interface CPSAppClipRecord
- (CPSAppClipRecord)initWithBundleID:(id)a3;
- (CPSAppClipRecord)initWithSQLiteRow:(id)a3 bundleID:(id)a4;
@end

@implementation CPSAppClipRecord

- (CPSAppClipRecord)initWithBundleID:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPSAppClipRecord;
  v5 = [(CPSAppClipRecord *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = v5;
  }

  return v5;
}

- (CPSAppClipRecord)initWithSQLiteRow:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = [(CPSAppClipRecord *)self initWithBundleID:a4];
  if (v7)
  {
    v8 = [v6 objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_userNotificationGranted, v8);
    }

    v9 = [v6 objectAtIndex:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v7->_locationConfirmationGranted, v9);
    }

    v7->_locationConfirmationState = [v6 intAtIndex:2];
    [v6 doubleAtIndex:3];
    v7->_lastProxCardLaunchTime = v10;
    [v6 doubleAtIndex:4];
    v7->_lastVersionCheckTime = v11;
    [v6 doubleAtIndex:5];
    v7->_lastInstallTime = v12;
    v13 = [v6 stringAtIndex:6];
    fullApplicationName = v7->_fullApplicationName;
    v7->_fullApplicationName = v13;

    v15 = [v6 stringAtIndex:7];
    fullApplicationCaption = v7->_fullApplicationCaption;
    v7->_fullApplicationCaption = v15;

    v17 = [v6 stringAtIndex:8];
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