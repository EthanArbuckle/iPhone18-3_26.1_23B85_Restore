@interface PKCloudStoreContainerDiagnostics
+ (id)turnedOff;
- (PKCloudStoreContainerDiagnostics)initWithCoder:(id)coder;
- (PKCloudStoreContainerDiagnostics)initWithIsEnabled:(BOOL)enabled isSetup:(BOOL)setup status:(id)status isSyncEnabled:(BOOL)syncEnabled syncToken:(id)token lastSyncDate:(id)date didFinishInitialSync:(BOOL)sync isAccountManateeCapable:(BOOL)self0 isDeviceManateeCapable:(BOOL)self1 isManateeEnabled:(BOOL)self2;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreContainerDiagnostics

+ (id)turnedOff
{
  LODWORD(v4) = 0;
  v2 = [PKCloudStoreContainerDiagnostics initWithIsEnabled:"initWithIsEnabled:isSetup:status:isSyncEnabled:syncToken:lastSyncDate:didFinishInitialSync:isAccountManateeCapable:isDeviceManateeCapable:isManateeEnabled:" isSetup:0 status:0 isSyncEnabled:@"N/A" syncToken:0 lastSyncDate:@"N/A" didFinishInitialSync:@"N/A" isAccountManateeCapable:v4 isDeviceManateeCapable:? isManateeEnabled:?];

  return v2;
}

- (PKCloudStoreContainerDiagnostics)initWithIsEnabled:(BOOL)enabled isSetup:(BOOL)setup status:(id)status isSyncEnabled:(BOOL)syncEnabled syncToken:(id)token lastSyncDate:(id)date didFinishInitialSync:(BOOL)sync isAccountManateeCapable:(BOOL)self0 isDeviceManateeCapable:(BOOL)self1 isManateeEnabled:(BOOL)self2
{
  statusCopy = status;
  tokenCopy = token;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = PKCloudStoreContainerDiagnostics;
  v22 = [(PKCloudStoreContainerDiagnostics *)&v25 init];
  v23 = v22;
  if (v22)
  {
    v22->_isEnabled = enabled;
    v22->_isSetup = setup;
    objc_storeStrong(&v22->_status, status);
    v23->_isSyncEnabled = syncEnabled;
    objc_storeStrong(&v23->_syncToken, token);
    objc_storeStrong(&v23->_lastSyncDate, date);
    v23->_didFinishInitialSync = sync;
    v23->_isAccountManateeCapable = capable;
    v23->_isDeviceManateeCapable = manateeCapable;
    v23->_isManateeEnabled = manateeEnabled;
  }

  return v23;
}

- (PKCloudStoreContainerDiagnostics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCloudStoreContainerDiagnostics;
  v5 = [(PKCloudStoreContainerDiagnostics *)&v13 init];
  if (v5)
  {
    v5->_isEnabled = [coderCopy decodeBoolForKey:@"isEnabled"];
    v5->_isSetup = [coderCopy decodeBoolForKey:@"isSetup"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    status = v5->_status;
    v5->_status = v6;

    v5->_isSyncEnabled = [coderCopy decodeBoolForKey:@"isSyncEnabled"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"syncToken"];
    syncToken = v5->_syncToken;
    v5->_syncToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSyncDate"];
    lastSyncDate = v5->_lastSyncDate;
    v5->_lastSyncDate = v10;

    v5->_didFinishInitialSync = [coderCopy decodeBoolForKey:@"didFinishInitialSync"];
    v5->_isAccountManateeCapable = [coderCopy decodeBoolForKey:@"isAccountManateeCapable"];
    v5->_isDeviceManateeCapable = [coderCopy decodeBoolForKey:@"isDeviceManateeCapable"];
    v5->_isManateeEnabled = [coderCopy decodeBoolForKey:@"isManateeEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isEnabled = self->_isEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:isEnabled forKey:@"isEnabled"];
  [coderCopy encodeBool:self->_isSetup forKey:@"isSetup"];
  [coderCopy encodeObject:self->_status forKey:@"status"];
  [coderCopy encodeBool:self->_isSyncEnabled forKey:@"isSyncEnabled"];
  [coderCopy encodeObject:self->_syncToken forKey:@"syncToken"];
  [coderCopy encodeObject:self->_lastSyncDate forKey:@"lastSyncDate"];
  [coderCopy encodeBool:self->_didFinishInitialSync forKey:@"didFinishInitialSync"];
  [coderCopy encodeBool:self->_isAccountManateeCapable forKey:@"isAccountManateeCapable"];
  [coderCopy encodeBool:self->_isDeviceManateeCapable forKey:@"isDeviceManateeCapable"];
  [coderCopy encodeBool:self->_isManateeEnabled forKey:@"isManateeEnabled"];
}

@end