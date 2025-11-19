@interface PKCloudStoreContainerDiagnostics
+ (id)turnedOff;
- (PKCloudStoreContainerDiagnostics)initWithCoder:(id)a3;
- (PKCloudStoreContainerDiagnostics)initWithIsEnabled:(BOOL)a3 isSetup:(BOOL)a4 status:(id)a5 isSyncEnabled:(BOOL)a6 syncToken:(id)a7 lastSyncDate:(id)a8 didFinishInitialSync:(BOOL)a9 isAccountManateeCapable:(BOOL)a10 isDeviceManateeCapable:(BOOL)a11 isManateeEnabled:(BOOL)a12;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreContainerDiagnostics

+ (id)turnedOff
{
  LODWORD(v4) = 0;
  v2 = [PKCloudStoreContainerDiagnostics initWithIsEnabled:"initWithIsEnabled:isSetup:status:isSyncEnabled:syncToken:lastSyncDate:didFinishInitialSync:isAccountManateeCapable:isDeviceManateeCapable:isManateeEnabled:" isSetup:0 status:0 isSyncEnabled:@"N/A" syncToken:0 lastSyncDate:@"N/A" didFinishInitialSync:@"N/A" isAccountManateeCapable:v4 isDeviceManateeCapable:? isManateeEnabled:?];

  return v2;
}

- (PKCloudStoreContainerDiagnostics)initWithIsEnabled:(BOOL)a3 isSetup:(BOOL)a4 status:(id)a5 isSyncEnabled:(BOOL)a6 syncToken:(id)a7 lastSyncDate:(id)a8 didFinishInitialSync:(BOOL)a9 isAccountManateeCapable:(BOOL)a10 isDeviceManateeCapable:(BOOL)a11 isManateeEnabled:(BOOL)a12
{
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v25.receiver = self;
  v25.super_class = PKCloudStoreContainerDiagnostics;
  v22 = [(PKCloudStoreContainerDiagnostics *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_isEnabled = a3;
    v22->_isSetup = a4;
    objc_storeStrong(&v22->_status, a5);
    v23->_isSyncEnabled = a6;
    objc_storeStrong(&v23->_syncToken, a7);
    objc_storeStrong(&v23->_lastSyncDate, a8);
    v23->_didFinishInitialSync = a9;
    v23->_isAccountManateeCapable = a10;
    v23->_isDeviceManateeCapable = a11;
    v23->_isManateeEnabled = a12;
  }

  return v23;
}

- (PKCloudStoreContainerDiagnostics)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCloudStoreContainerDiagnostics;
  v5 = [(PKCloudStoreContainerDiagnostics *)&v13 init];
  if (v5)
  {
    v5->_isEnabled = [v4 decodeBoolForKey:@"isEnabled"];
    v5->_isSetup = [v4 decodeBoolForKey:@"isSetup"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v6;

    v5->_isSyncEnabled = [v4 decodeBoolForKey:@"isSyncEnabled"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"syncToken"];
    syncToken = v5->_syncToken;
    v5->_syncToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
    lastSyncDate = v5->_lastSyncDate;
    v5->_lastSyncDate = v10;

    v5->_didFinishInitialSync = [v4 decodeBoolForKey:@"didFinishInitialSync"];
    v5->_isAccountManateeCapable = [v4 decodeBoolForKey:@"isAccountManateeCapable"];
    v5->_isDeviceManateeCapable = [v4 decodeBoolForKey:@"isDeviceManateeCapable"];
    v5->_isManateeEnabled = [v4 decodeBoolForKey:@"isManateeEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isEnabled = self->_isEnabled;
  v5 = a3;
  [v5 encodeBool:isEnabled forKey:@"isEnabled"];
  [v5 encodeBool:self->_isSetup forKey:@"isSetup"];
  [v5 encodeObject:self->_status forKey:@"status"];
  [v5 encodeBool:self->_isSyncEnabled forKey:@"isSyncEnabled"];
  [v5 encodeObject:self->_syncToken forKey:@"syncToken"];
  [v5 encodeObject:self->_lastSyncDate forKey:@"lastSyncDate"];
  [v5 encodeBool:self->_didFinishInitialSync forKey:@"didFinishInitialSync"];
  [v5 encodeBool:self->_isAccountManateeCapable forKey:@"isAccountManateeCapable"];
  [v5 encodeBool:self->_isDeviceManateeCapable forKey:@"isDeviceManateeCapable"];
  [v5 encodeBool:self->_isManateeEnabled forKey:@"isManateeEnabled"];
}

@end