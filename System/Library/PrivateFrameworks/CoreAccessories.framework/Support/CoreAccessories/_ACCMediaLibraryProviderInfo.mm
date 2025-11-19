@interface _ACCMediaLibraryProviderInfo
- (_ACCMediaLibraryProviderInfo)init;
- (id)description;
- (void)dealloc;
@end

@implementation _ACCMediaLibraryProviderInfo

- (_ACCMediaLibraryProviderInfo)init
{
  v10.receiver = self;
  v10.super_class = _ACCMediaLibraryProviderInfo;
  v2 = [(_ACCMediaLibraryProviderInfo *)&v10 init];
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

    mediaLibraryList = v3->_mediaLibraryList;
    v3->_mediaLibraryList = 0;
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

  mediaLibraryList = self->_mediaLibraryList;
  self->_mediaLibraryList = 0;

  v8.receiver = self;
  v8.super_class = _ACCMediaLibraryProviderInfo;
  [(_ACCMediaLibraryProviderInfo *)&v8 dealloc];
}

- (id)description
{
  v3 = [(_ACCMediaLibraryProviderInfo *)self connection];
  v4 = [(_ACCMediaLibraryProviderInfo *)self remoteObject];
  v5 = [(_ACCMediaLibraryProviderInfo *)self serverRemote];
  v6 = [(_ACCMediaLibraryProviderInfo *)self providerUID];
  v7 = [(_ACCMediaLibraryProviderInfo *)self mediaLibraryList];
  v8 = [NSString stringWithFormat:@"<_ACCMediaLibraryProviderInfo>[\n    _connection=%@\n    _remoteObject=%@\n    _serverRemote=%@\n    _providerUID=%@\n    _mediaLibraryList=%@]", v3, v4, v5, v6, v7];

  return v8;
}

@end