@interface UARPAnalyticsAUDUpdateFirmwareState
- (UARPAnalyticsAUDUpdateFirmwareState)initWithAccessoryID:(id)d assetID:(id)iD;
- (UARPAnalyticsAUDUpdateFirmwareState)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)downloadConsentDuration;
- (void)dealloc;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
- (void)setAssetAvailableForDownload;
- (void)setDownloadComplete:(int64_t)complete;
- (void)setDownloadConsentReceived:(BOOL)received;
- (void)setDownloadConsentRequested;
@end

@implementation UARPAnalyticsAUDUpdateFirmwareState

- (UARPAnalyticsAUDUpdateFirmwareState)initWithAccessoryID:(id)d assetID:(id)iD
{
  v8.receiver = self;
  v8.super_class = UARPAnalyticsAUDUpdateFirmwareState;
  v6 = [(UARPAnalyticsAUDUpdateFirmwareState *)&v8 init];
  if (v6)
  {
    v6->_assetID = [iD copy];
    v6->_accessoryID = [d copy];
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

- (void)setDownloadConsentReceived:(BOOL)received
{
  objc_sync_enter(self);
  if (self->_downloadConsentDurationStart)
  {
    [(UARPAnalyticsAUDUpdateFirmwareState *)self setDownloadConsentDurationEnd];
  }

  self->_downloadUserIntent = received;

  objc_sync_exit(self);
}

- (void)setDownloadComplete:(int64_t)complete
{
  objc_sync_enter(self);
  self->_downloadStatus = complete;

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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_assetID forKey:@"assetID"];
  [coder encodeBool:self->_downloadUserIntent forKey:@"downloadUserIntent"];
  [coder encodeInteger:self->_downloadStatus forKey:@"downloadStatus"];
  [coder encodeObject:self->_downloadConsentDurationStart forKey:@"downloadConsentDurationStart"];
  [coder encodeObject:self->_downloadConsentDurationEnd forKey:@"downloadConsentDurationEnd"];
  accessoryID = self->_accessoryID;

  [coder encodeObject:accessoryID forKey:@"accessoryID"];
}

- (UARPAnalyticsAUDUpdateFirmwareState)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UARPAnalyticsAUDUpdateFirmwareState;
  v4 = [(UARPAnalyticsAUDUpdateFirmwareState *)&v6 init];
  if (v4)
  {
    v4->_assetID = [coder decodeObjectForKey:@"assetID"];
    v4->_downloadUserIntent = [coder decodeBoolForKey:@"downloadUserIntent"];
    v4->_downloadStatus = [coder decodeIntegerForKey:@"downloadStatus"];
    v4->_downloadConsentDurationStart = [coder decodeObjectForKey:@"downloadConsentDurationStart"];
    v4->_downloadConsentDurationEnd = [coder decodeObjectForKey:@"downloadConsentDurationEnd"];
    v4->_accessoryID = [coder decodeObjectForKey:@"accessoryID"];
  }

  return v4;
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  [string appendWithTabDepth:depth format:{@"%@\n", self->_assetID}];
  [string appendWithTabDepth:depth + 1 format:{@"Download Consent Duration: %lu s\n", -[UARPAnalyticsAUDUpdateFirmwareState downloadConsentDuration](self, "downloadConsentDuration")}];
  if (self->_downloadUserIntent)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  [string appendWithTabDepth:depth + 1 format:{@"Download User Intent: %s\n", v7}];
  [string appendWithTabDepth:depth + 1 format:{@"Download Status: %s\n", sub_100019FF4(self->_downloadStatus)}];
}

@end