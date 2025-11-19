@interface _ACCBLEPairingProviderInfo
- (_ACCBLEPairingProviderInfo)init;
- (void)dealloc;
@end

@implementation _ACCBLEPairingProviderInfo

- (_ACCBLEPairingProviderInfo)init
{
  v12.receiver = self;
  v12.super_class = _ACCBLEPairingProviderInfo;
  v2 = [(_ACCBLEPairingProviderInfo *)&v12 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    remoteObject = v3->_remoteObject;
    v3->_remoteObject = 0;

    serverRemote = v3->_serverRemote;
    v3->_serverRemote = 0;

    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    providerUID = v3->_providerUID;
    v3->_providerUID = v8;

    supportedPairingTypes = v3->_supportedPairingTypes;
    v3->_supportedPairingTypes = 0;
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

  supportedPairingTypes = self->_supportedPairingTypes;
  self->_supportedPairingTypes = 0;

  v8.receiver = self;
  v8.super_class = _ACCBLEPairingProviderInfo;
  [(_ACCBLEPairingProviderInfo *)&v8 dealloc];
}

@end