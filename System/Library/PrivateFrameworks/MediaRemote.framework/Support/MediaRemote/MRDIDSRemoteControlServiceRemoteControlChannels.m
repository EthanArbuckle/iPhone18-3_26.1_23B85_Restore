@interface MRDIDSRemoteControlServiceRemoteControlChannels
- (id)channelForDestination:(id)a3 session:(id)a4;
- (id)debugDescription;
- (void)addChannel:(id)a3 forDestination:(id)a4 session:(id)a5;
- (void)removeChannelForDestination:(id)a3;
@end

@implementation MRDIDSRemoteControlServiceRemoteControlChannels

- (id)debugDescription
{
  v2 = [(NSMutableDictionary *)self->_channels allValues];
  v3 = [v2 msv_compactMap:&stru_1004BA378];

  v4 = MRCreateIndentedDebugDescriptionFromArray();

  return v4;
}

- (void)addChannel:(id)a3 forDestination:(id)a4 session:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_channels objectForKeyedSubscript:v8];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    channels = self->_channels;
    if (!channels)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = self->_channels;
      self->_channels = v12;

      channels = self->_channels;
    }

    [(NSMutableDictionary *)channels setObject:v10 forKeyedSubscript:v8];
  }

  [v10 setObject:v14 forKeyedSubscript:v9];
}

- (void)removeChannelForDestination:(id)a3
{
  v4 = a3;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_10003507C;
  v13[4] = sub_1000359F4;
  v14 = 0;
  v5 = [(NSMutableDictionary *)self->_channels objectForKeyedSubscript:v4];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000AE3A0;
  v10 = &unk_1004BA3A0;
  v12 = v13;
  v6 = v4;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_channels setObject:0 forKeyedSubscript:v6, v7, v8, v9, v10];

  _Block_object_dispose(v13, 8);
}

- (id)channelForDestination:(id)a3 session:(id)a4
{
  channels = self->_channels;
  v6 = a4;
  v7 = [(NSMutableDictionary *)channels objectForKeyedSubscript:a3];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

@end