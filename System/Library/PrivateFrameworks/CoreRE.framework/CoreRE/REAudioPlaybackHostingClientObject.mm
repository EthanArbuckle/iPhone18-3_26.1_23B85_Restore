@interface REAudioPlaybackHostingClientObject
- (REAudioPlaybackHostingClientObject)initWithConnection:(id)connection connectionIdentifier:(unint64_t)identifier;
@end

@implementation REAudioPlaybackHostingClientObject

- (REAudioPlaybackHostingClientObject)initWithConnection:(id)connection connectionIdentifier:(unint64_t)identifier
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = REAudioPlaybackHostingClientObject;
  v8 = [(REAudioPlaybackHostingClientObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    v9->_connectionIdentifier = identifier;
  }

  return v9;
}

@end