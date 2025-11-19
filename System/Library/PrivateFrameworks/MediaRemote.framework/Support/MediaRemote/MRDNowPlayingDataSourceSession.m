@interface MRDNowPlayingDataSourceSession
- (MRDNowPlayingDataSourceSession)initWithBundleID:(id)a3 audioSessionID:(id)a4 isPlaying:(BOOL)a5;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MRDNowPlayingDataSourceSession

- (MRDNowPlayingDataSourceSession)initWithBundleID:(id)a3 audioSessionID:(id)a4 isPlaying:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MRDNowPlayingDataSourceSession;
  v11 = [(MRDNowPlayingDataSourceSession *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, a3);
    objc_storeStrong(&v12->_audioSessionID, a4);
    v12->_playing = a5;
  }

  return v12;
}

- (id)description
{
  v2 = [(MRDNowPlayingDataSourceSession *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(MRDNowPlayingDataSourceSession *)self bundleID];
  [v3 setObject:v4 forKeyedSubscript:@"bundleID"];

  v5 = [(MRDNowPlayingDataSourceSession *)self audioSessionID];
  [v3 setObject:v5 forKeyedSubscript:@"audioSessionID"];

  v6 = [NSNumber numberWithBool:[(MRDNowPlayingDataSourceSession *)self isPlaying]];
  [v3 setObject:v6 forKeyedSubscript:@"isPlaying"];

  return v3;
}

@end