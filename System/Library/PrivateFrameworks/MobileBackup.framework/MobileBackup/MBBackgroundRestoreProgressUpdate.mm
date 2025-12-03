@interface MBBackgroundRestoreProgressUpdate
- (MBBackgroundRestoreProgressUpdate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MBBackgroundRestoreProgressUpdate

- (MBBackgroundRestoreProgressUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MBBackgroundRestoreProgressUpdate;
  v5 = [(MBBackgroundRestoreProgressUpdate *)&v7 init];
  if (v5)
  {
    v5->_isThermallyThrottled = [coderCopy decodeBoolForKey:@"isThermallyThrottled"];
    v5->_hasCellularPolicy = [coderCopy decodeBoolForKey:@"hasCellularPolicy"];
    v5->_estimatedSize = [coderCopy decodeInt64ForKey:@"estimatedSize"];
    v5->_isOnWiFi = [coderCopy decodeBoolForKey:@"isOnWiFi"];
    v5->_isOnInexpensiveCellular = [coderCopy decodeBoolForKey:@"isOnInExpensiveCellular"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isThermallyThrottled = self->_isThermallyThrottled;
  coderCopy = coder;
  [coderCopy encodeBool:isThermallyThrottled forKey:@"isThermallyThrottled"];
  [coderCopy encodeBool:self->_hasCellularPolicy forKey:@"hasCellularPolicy"];
  [coderCopy encodeInt64:self->_estimatedSize forKey:@"estimatedSize"];
  [coderCopy encodeBool:self->_isOnWiFi forKey:@"isOnWiFi"];
  [coderCopy encodeBool:self->_isOnInexpensiveCellular forKey:@"isOnInExpensiveCellular"];
}

@end