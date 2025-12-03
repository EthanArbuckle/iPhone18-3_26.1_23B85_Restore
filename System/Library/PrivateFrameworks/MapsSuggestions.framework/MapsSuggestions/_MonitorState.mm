@interface _MonitorState
- (BOOL)isMonitoring;
- (BOOL)shouldBeMonitoring;
- (_MonitorState)init;
- (void)setMonitoring:(BOOL)monitoring;
- (void)setShouldBeMonitoring:(BOOL)monitoring;
@end

@implementation _MonitorState

- (_MonitorState)init
{
  v3.receiver = self;
  v3.super_class = _MonitorState;
  result = [(_MonitorState *)&v3 init];
  if (result)
  {
    *&result->_isMonitoring = 0;
  }

  return result;
}

- (BOOL)isMonitoring
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isMonitoring = selfCopy->_isMonitoring;
  objc_sync_exit(selfCopy);

  return isMonitoring;
}

- (void)setMonitoring:(BOOL)monitoring
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isMonitoring = monitoring;
  objc_sync_exit(obj);
}

- (BOOL)shouldBeMonitoring
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shouldBeMonitoring = selfCopy->_shouldBeMonitoring;
  objc_sync_exit(selfCopy);

  return shouldBeMonitoring;
}

- (void)setShouldBeMonitoring:(BOOL)monitoring
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldBeMonitoring = monitoring;
  objc_sync_exit(obj);
}

@end