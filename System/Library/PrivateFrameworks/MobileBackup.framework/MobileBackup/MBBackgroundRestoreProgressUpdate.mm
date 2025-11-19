@interface MBBackgroundRestoreProgressUpdate
- (MBBackgroundRestoreProgressUpdate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MBBackgroundRestoreProgressUpdate

- (MBBackgroundRestoreProgressUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MBBackgroundRestoreProgressUpdate;
  v5 = [(MBBackgroundRestoreProgressUpdate *)&v7 init];
  if (v5)
  {
    v5->_isThermallyThrottled = [v4 decodeBoolForKey:@"isThermallyThrottled"];
    v5->_hasCellularPolicy = [v4 decodeBoolForKey:@"hasCellularPolicy"];
    v5->_estimatedSize = [v4 decodeInt64ForKey:@"estimatedSize"];
    v5->_isOnWiFi = [v4 decodeBoolForKey:@"isOnWiFi"];
    v5->_isOnInexpensiveCellular = [v4 decodeBoolForKey:@"isOnInExpensiveCellular"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isThermallyThrottled = self->_isThermallyThrottled;
  v5 = a3;
  [v5 encodeBool:isThermallyThrottled forKey:@"isThermallyThrottled"];
  [v5 encodeBool:self->_hasCellularPolicy forKey:@"hasCellularPolicy"];
  [v5 encodeInt64:self->_estimatedSize forKey:@"estimatedSize"];
  [v5 encodeBool:self->_isOnWiFi forKey:@"isOnWiFi"];
  [v5 encodeBool:self->_isOnInexpensiveCellular forKey:@"isOnInExpensiveCellular"];
}

@end