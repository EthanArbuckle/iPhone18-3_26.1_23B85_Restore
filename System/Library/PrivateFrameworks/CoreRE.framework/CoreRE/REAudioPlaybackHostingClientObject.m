@interface REAudioPlaybackHostingClientObject
- (REAudioPlaybackHostingClientObject)initWithConnection:(id)a3 connectionIdentifier:(unint64_t)a4;
@end

@implementation REAudioPlaybackHostingClientObject

- (REAudioPlaybackHostingClientObject)initWithConnection:(id)a3 connectionIdentifier:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REAudioPlaybackHostingClientObject;
  v8 = [(REAudioPlaybackHostingClientObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a3);
    v9->_connectionIdentifier = a4;
  }

  return v9;
}

@end