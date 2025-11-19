@interface MRDNowPlayingServerResult
- (BOOL)isActivity;
- (BOOL)isLocalOrigin;
- (MRDNowPlayingServerResult)initWithUnresolvedPlayerPath:(id)a3;
- (id)description;
@end

@implementation MRDNowPlayingServerResult

- (MRDNowPlayingServerResult)initWithUnresolvedPlayerPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRDNowPlayingServerResult;
  v5 = [(MRDNowPlayingServerResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    unresolvedPlayerPath = v5->_unresolvedPlayerPath;
    v5->_unresolvedPlayerPath = v6;
  }

  return v5;
}

- (BOOL)isLocalOrigin
{
  v2 = [(MRDNowPlayingServerResult *)self playerPath];
  v3 = [v2 origin];
  v4 = [v3 isLocal];

  return v4;
}

- (BOOL)isActivity
{
  v3 = [(MRDNowPlayingServerResult *)self originClient];
  v4 = [v3 activity];
  if (v4)
  {
    v5 = [(MRDNowPlayingServerResult *)self originClient];
    v6 = [v5 activity];
    v7 = [v6 creatorProcessID];
    v8 = [(MRDNowPlayingServerResult *)self nowPlayingClient];
    v9 = [v8 client];
    v10 = v7 == [v9 processIdentifier];
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