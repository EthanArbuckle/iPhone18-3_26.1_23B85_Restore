@interface MRDNowPlayingServerResult
- (BOOL)isActivity;
- (BOOL)isLocalOrigin;
- (MRDNowPlayingServerResult)initWithUnresolvedPlayerPath:(id)path;
- (id)description;
@end

@implementation MRDNowPlayingServerResult

- (MRDNowPlayingServerResult)initWithUnresolvedPlayerPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MRDNowPlayingServerResult;
  v5 = [(MRDNowPlayingServerResult *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    unresolvedPlayerPath = v5->_unresolvedPlayerPath;
    v5->_unresolvedPlayerPath = v6;
  }

  return v5;
}

- (BOOL)isLocalOrigin
{
  playerPath = [(MRDNowPlayingServerResult *)self playerPath];
  origin = [playerPath origin];
  isLocal = [origin isLocal];

  return isLocal;
}

- (BOOL)isActivity
{
  originClient = [(MRDNowPlayingServerResult *)self originClient];
  activity = [originClient activity];
  if (activity)
  {
    originClient2 = [(MRDNowPlayingServerResult *)self originClient];
    activity2 = [originClient2 activity];
    creatorProcessID = [activity2 creatorProcessID];
    nowPlayingClient = [(MRDNowPlayingServerResult *)self nowPlayingClient];
    client = [nowPlayingClient client];
    v10 = creatorProcessID == [client processIdentifier];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MRDNowPlayingServerResult;
  v3 = [(MRDNowPlayingServerResult *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" %@", self->_playerPath];

  return v4;
}

@end