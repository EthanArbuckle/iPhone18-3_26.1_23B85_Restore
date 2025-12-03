@interface MRDIDSRemoteControlServiceRemoteControlChannels
- (id)channelForDestination:(id)destination session:(id)session;
- (id)debugDescription;
- (void)addChannel:(id)channel forDestination:(id)destination session:(id)session;
- (void)removeChannelForDestination:(id)destination;
@end

@implementation MRDIDSRemoteControlServiceRemoteControlChannels

- (id)debugDescription
{
  allValues = [(NSMutableDictionary *)self->_channels allValues];
  v3 = [allValues msv_compactMap:&stru_1004BA378];

  v4 = MRCreateIndentedDebugDescriptionFromArray();

  return v4;
}

- (void)addChannel:(id)channel forDestination:(id)destination session:(id)session
{
  channelCopy = channel;
  destinationCopy = destination;
  sessionCopy = session;
  v10 = [(NSMutableDictionary *)self->_channels objectForKeyedSubscript:destinationCopy];
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

    [(NSMutableDictionary *)channels setObject:v10 forKeyedSubscript:destinationCopy];
  }

  [v10 setObject:channelCopy forKeyedSubscript:sessionCopy];
}

- (void)removeChannelForDestination:(id)destination
{
  destinationCopy = destination;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_10003507C;
  v13[4] = sub_1000359F4;
  v14 = 0;
  v5 = [(NSMutableDictionary *)self->_channels objectForKeyedSubscript:destinationCopy];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_1000AE3A0;
  v10 = &unk_1004BA3A0;
  v12 = v13;
  v6 = destinationCopy;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v7];
  [(NSMutableDictionary *)self->_channels setObject:0 forKeyedSubscript:v6, v7, v8, v9, v10];

  _Block_object_dispose(v13, 8);
}

- (id)channelForDestination:(id)destination session:(id)session
{
  channels = self->_channels;
  sessionCopy = session;
  v7 = [(NSMutableDictionary *)channels objectForKeyedSubscript:destination];
  v8 = [v7 objectForKeyedSubscript:sessionCopy];

  return v8;
}

@end