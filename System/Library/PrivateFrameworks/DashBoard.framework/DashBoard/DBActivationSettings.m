@interface DBActivationSettings
- (DBActivationSettings)init;
@end

@implementation DBActivationSettings

- (DBActivationSettings)init
{
  v8.receiver = self;
  v8.super_class = DBActivationSettings;
  v2 = [(DBActivationSettings *)&v8 init];
  v3 = v2;
  if (v2)
  {
    url = v2->_url;
    v2->_url = 0;

    *&v3->_animated = 257;
    actions = v3->_actions;
    v3->_launchSource = 0;
    v3->_actions = 0;

    *&v3->_waitForCommit = 0;
    clientProcess = v3->_clientProcess;
    v3->_failInterval = 0.0;
    v3->_clientProcess = 0;
    v3->_suspended = 0;
  }

  return v3;
}

@end