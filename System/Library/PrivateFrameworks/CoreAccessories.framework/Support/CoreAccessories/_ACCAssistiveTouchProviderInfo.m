@interface _ACCAssistiveTouchProviderInfo
- (_ACCAssistiveTouchProviderInfo)init;
- (void)dealloc;
@end

@implementation _ACCAssistiveTouchProviderInfo

- (_ACCAssistiveTouchProviderInfo)init
{
  v9.receiver = self;
  v9.super_class = _ACCAssistiveTouchProviderInfo;
  v2 = [(_ACCAssistiveTouchProviderInfo *)&v9 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    remoteObject = v3->_remoteObject;
    v3->_remoteObject = 0;

    serverRemote = v3->_serverRemote;
    v3->_serverRemote = 0;

    providerUID = v3->_providerUID;
    v3->_providerUID = 0;
  }

  return v3;
}

- (void)dealloc
{
  connection = self->_connection;
  self->_connection = 0;

  remoteObject = self->_remoteObject;
  self->_remoteObject = 0;

  serverRemote = self->_serverRemote;
  self->_serverRemote = 0;

  providerUID = self->_providerUID;
  self->_providerUID = 0;

  v7.receiver = self;
  v7.super_class = _ACCAssistiveTouchProviderInfo;
  [(_ACCAssistiveTouchProviderInfo *)&v7 dealloc];
}

@end