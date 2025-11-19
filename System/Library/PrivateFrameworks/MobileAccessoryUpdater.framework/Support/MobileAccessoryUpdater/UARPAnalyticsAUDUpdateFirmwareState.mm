@interface UARPAnalyticsAUDUpdateFirmwareState
- (UARPAnalyticsAUDUpdateFirmwareState)initWithAccessoryID:(id)a3 assetID:(id)a4;
- (UARPAnalyticsAUDUpdateFirmwareState)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)downloadConsentDuration;
- (void)dealloc;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)setAssetAvailableForDownload;
- (void)setDownloadComplete:(int64_t)a3;
- (void)setDownloadConsentReceived:(BOOL)a3;
- (void)setDownloadConsentRequested;
@end

@implementation UARPAnalyticsAUDUpdateFirmwareState

- (UARPAnalyticsAUDUpdateFirmwareState)initWithAccessoryID:(id)a3 assetID:(id)a4
{
  v8.receiver = self;
  v8.super_class = UARPAnalyticsAUDUpdateFirmwareState;
  v6 = [(UARPAnalyticsAUDUpdateFirmwareState *)&v8 init];
  if (v6)
  {
    v6->_assetID = [a4 copy];
    v6->_accessoryID = [a3 copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UARPAnalyticsAUDUpdateFirmwareState;
  [(UARPAnalyticsAUDUpdateFirmwareState *)&v3 dealloc];
}

- (void)reset
{
  self->_downloadConsentDurationStart = 0;
  self->_downloadUserIntent = 0;

  self->_downloadConsentDurationEnd = 0;
  self->_downloadStatus = 0;
}

- (void)setAssetAvailableForDownload
{
  objc_sync_enter(self);
  [(UARPAnalyticsAUDUpdateFirmwareState *)self reset];

  objc_sync_exit(self);
}

- (void)setDownloadConsentRequested
{
  objc_sync_enter(self);
  [(UARPAnalyticsAUDUpdateFirmwareState *)self setDownloadConsentDurationStart];

  objc_sync_exit(self);
}

- (void)setDownloadConsentReceived:(BOOL)a3
{
  objc_sync_enter(self);
  if (self->_downloadConsentDurationStart)
  {
    [(UARPAnalyticsAUDUpdateFirmwareState *)self setDownloadConsentDurationEnd];
  }

  self->_downloadUserIntent = a3;

  objc_sync_exit(self);
}

- (void)setDownloadComplete:(int64_t)a3
{
  objc_sync_enter(self);
  self->_downloadStatus = a3;

  objc_sync_exit(self);
}

- (unint64_t)downloadConsentDuration
{
  objc_sync_enter(self);
  if (self->_downloadConsentDurationStart && (downloadConsentDurationEnd = self->_downloadConsentDurationEnd) != 0)
  {
    [(NSDate *)downloadConsentDurationEnd timeIntervalSinceDate:?];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(self);
  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  return [NSString stringWithFormat:@"<%@: MF=%@ MN=%@ SN=%@ %@ -> %@ (%s)>", v4, [(UARPAccessoryID *)self->_accessoryID manufacturer], [(UARPAccessoryID *)self->_accessoryID modelName], [(UARPAccessoryID *)self->_accessoryID serialNumber], [(UARPAccessoryID *)self->_accessoryID firmwareVersion], [(UARPAssetID *)self->_assetID assetVersion], sub_100019FF4(self->_downloadStatus)];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_assetID forKey:@"assetID"];
  [a3 encodeBool:self->_downloadUserIntent forKey:@"downloadUserIntent"];
  [a3 encodeInteger:self->_downloadStatus forKey:@"downloadStatus"];
  [a3 encodeObject:self->_downloadConsentDurationStart forKey:@"downloadConsentDurationStart"];
  [a3 encodeObject:self->_downloadConsentDurationEnd forKey:@"downloadConsentDurationEnd"];
  accessoryID = self->_accessoryID;

  [a3 encodeObject:accessoryID forKey:@"accessoryID"];
}

- (UARPAnalyticsAUDUpdateFirmwareState)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UARPAnalyticsAUDUpdateFirmwareState;
  v4 = [(UARPAnalyticsAUDUpdateFirmwareState *)&v6 init];
  if (v4)
  {
    v4->_assetID = [a3 decodeObjectForKey:@"assetID"];
    v4->_downloadUserIntent = [a3 decodeBoolForKey:@"downloadUserIntent"];
    v4->_downloadStatus = [a3 decodeIntegerForKey:@"downloadStatus"];
    v4->_downloadConsentDurationStart = [a3 decodeObjectForKey:@"downloadConsentDurationStart"];
    v4->_downloadConsentDurationEnd = [a3 decodeObjectForKey:@"downloadConsentDurationEnd"];
    v4->_accessoryID = [a3 decodeObjectForKey:@"accessoryID"];
  }

  return v4;
}

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  [a4 appendWithTabDepth:a3 format:{@"%@\n", self->_assetID}];
  [a4 appendWithTabDepth:a3 + 1 format:{@"Download Consent Duration: %lu s\n", -[UARPAnalyticsAUDUpdateFirmwareState downloadConsentDuration](self, "downloadConsentDuration")}];
  if (self->_downloadUserIntent)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  [a4 appendWithTabDepth:a3 + 1 format:{@"Download User Intent: %s\n", v7}];
  [a4 appendWithTabDepth:a3 + 1 format:{@"Download Status: %s\n", sub_100019FF4(self->_downloadStatus)}];
}

@end