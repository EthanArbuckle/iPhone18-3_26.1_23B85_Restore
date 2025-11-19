@interface MRNowPlayingControllerDestination
- (MRNowPlayingControllerDestination)initWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setEndpoint:(id)a3;
@end

@implementation MRNowPlayingControllerDestination

- (id)description
{
  v8.receiver = self;
  v8.super_class = MRNowPlayingControllerDestination;
  v3 = [(MRDestination *)&v8 description];
  v4 = [(MRDestination *)self endpoint];
  if (v4 || ![(MRNowPlayingControllerDestination *)self isEndpointSet])
  {
    v6 = v3;
  }

  else
  {
    v5 = [v3 stringByReplacingOccurrencesOfString:@">" withString:&stru_1F1513E38 options:0 range:{objc_msgSend(v3, "length") - 1, 1}];
    v6 = [v5 stringByAppendingString:@" endpoint=NONE>"];
  }

  return v6;
}

- (void)setEndpoint:(id)a3
{
  v5.receiver = self;
  v5.super_class = MRNowPlayingControllerDestination;
  [(MRDestination *)&v5 setEndpoint:?];
  if (!a3)
  {
    self->_isEndpointSet = 0;
  }
}

- (MRNowPlayingControllerDestination)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRNowPlayingControllerDestination;
  v5 = [(MRDestination *)&v11 _init];
  if (v5)
  {
    v6 = [v4 destination];
    v7 = [v6 outputDeviceUID];
    [(MRDestination *)v5 setOutputDeviceUID:v7];

    v8 = [v4 destination];
    v9 = [v8 endpoint];
    [(MRNowPlayingControllerDestination *)v5 setEndpoint:v9];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MRNowPlayingControllerDestination;
  v4 = [(MRDestination *)&v7 copyWithZone:a3];
  v5 = [(MRNowPlayingControllerDestination *)self unresolvedPlayerPath];
  [v4 setUnresolvedPlayerPath:v5];

  [v4 setIsEndpointSet:{-[MRNowPlayingControllerDestination isEndpointSet](self, "isEndpointSet")}];
  return v4;
}

@end