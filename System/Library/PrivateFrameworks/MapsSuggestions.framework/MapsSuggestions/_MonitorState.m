@interface _MonitorState
- (BOOL)isMonitoring;
- (BOOL)shouldBeMonitoring;
- (_MonitorState)init;
- (void)setMonitoring:(BOOL)a3;
- (void)setShouldBeMonitoring:(BOOL)a3;
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
  v2 = self;
  objc_sync_enter(v2);
  isMonitoring = v2->_isMonitoring;
  objc_sync_exit(v2);

  return isMonitoring;
}

- (void)setMonitoring:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_isMonitoring = a3;
  objc_sync_exit(obj);
}

- (BOOL)shouldBeMonitoring
{
  v2 = self;
  objc_sync_enter(v2);
  shouldBeMonitoring = v2->_shouldBeMonitoring;
  objc_sync_exit(v2);

  return shouldBeMonitoring;
}

- (void)setShouldBeMonitoring:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldBeMonitoring = a3;
  objc_sync_exit(obj);
}

@end