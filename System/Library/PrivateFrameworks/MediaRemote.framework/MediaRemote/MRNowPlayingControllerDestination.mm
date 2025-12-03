@interface MRNowPlayingControllerDestination
- (MRNowPlayingControllerDestination)initWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setEndpoint:(id)endpoint;
@end

@implementation MRNowPlayingControllerDestination

- (id)description
{
  v8.receiver = self;
  v8.super_class = MRNowPlayingControllerDestination;
  v3 = [(MRDestination *)&v8 description];
  endpoint = [(MRDestination *)self endpoint];
  if (endpoint || ![(MRNowPlayingControllerDestination *)self isEndpointSet])
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

- (void)setEndpoint:(id)endpoint
{
  v5.receiver = self;
  v5.super_class = MRNowPlayingControllerDestination;
  [(MRDestination *)&v5 setEndpoint:?];
  if (!endpoint)
  {
    self->_isEndpointSet = 0;
  }
}

- (MRNowPlayingControllerDestination)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = MRNowPlayingControllerDestination;
  _init = [(MRDestination *)&v11 _init];
  if (_init)
  {
    destination = [configurationCopy destination];
    outputDeviceUID = [destination outputDeviceUID];
    [(MRDestination *)_init setOutputDeviceUID:outputDeviceUID];

    destination2 = [configurationCopy destination];
    endpoint = [destination2 endpoint];
    [(MRNowPlayingControllerDestination *)_init setEndpoint:endpoint];
  }

  return _init;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MRNowPlayingControllerDestination;
  v4 = [(MRDestination *)&v7 copyWithZone:zone];
  unresolvedPlayerPath = [(MRNowPlayingControllerDestination *)self unresolvedPlayerPath];
  [v4 setUnresolvedPlayerPath:unresolvedPlayerPath];

  [v4 setIsEndpointSet:{-[MRNowPlayingControllerDestination isEndpointSet](self, "isEndpointSet")}];
  return v4;
}

@end