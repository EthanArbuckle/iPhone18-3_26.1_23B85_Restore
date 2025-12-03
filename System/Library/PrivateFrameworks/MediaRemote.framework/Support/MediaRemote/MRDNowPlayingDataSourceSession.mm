@interface MRDNowPlayingDataSourceSession
- (MRDNowPlayingDataSourceSession)initWithBundleID:(id)d audioSessionID:(id)iD isPlaying:(BOOL)playing;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation MRDNowPlayingDataSourceSession

- (MRDNowPlayingDataSourceSession)initWithBundleID:(id)d audioSessionID:(id)iD isPlaying:(BOOL)playing
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = MRDNowPlayingDataSourceSession;
  v11 = [(MRDNowPlayingDataSourceSession *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, d);
    objc_storeStrong(&v12->_audioSessionID, iD);
    v12->_playing = playing;
  }

  return v12;
}

- (id)description
{
  dictionaryRepresentation = [(MRDNowPlayingDataSourceSession *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  bundleID = [(MRDNowPlayingDataSourceSession *)self bundleID];
  [v3 setObject:bundleID forKeyedSubscript:@"bundleID"];

  audioSessionID = [(MRDNowPlayingDataSourceSession *)self audioSessionID];
  [v3 setObject:audioSessionID forKeyedSubscript:@"audioSessionID"];

  v6 = [NSNumber numberWithBool:[(MRDNowPlayingDataSourceSession *)self isPlaying]];
  [v3 setObject:v6 forKeyedSubscript:@"isPlaying"];

  return v3;
}

@end