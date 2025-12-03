@interface MRNowPlayingState
- (BOOL)containsArtwork;
- (MRNowPlayingState)initWithData:(id)data;
- (MRNowPlayingState)initWithPlayerPath:(id)path;
- (MRNowPlayingState)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (NSDictionary)nowPlayingInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithoutArtwork;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobufWithEncoding:(int64_t)encoding;
- (void)setNowPlayingInfo:(id)info;
@end

@implementation MRNowPlayingState

- (MRNowPlayingState)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MRNowPlayingState;
  v5 = [(MRNowPlayingState *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    playerPath = v5->_playerPath;
    v5->_playerPath = v6;
  }

  return v5;
}

- (MRNowPlayingState)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v5 = [MRPlayerPath alloc];
    playerPath = [protobufCopy playerPath];
    v7 = [(MRPlayerPath *)v5 initWithProtobuf:playerPath];

    v8 = [(MRNowPlayingState *)self initWithPlayerPath:v7];
    if (v8)
    {
      displayID = [protobufCopy displayID];
      v10 = [displayID copy];
      displayID = v8->_displayID;
      v8->_displayID = v10;

      displayName = [protobufCopy displayName];
      v13 = [displayName copy];
      displayName = v8->_displayName;
      v8->_displayName = v13;

      playbackQueueCapabilities = [protobufCopy playbackQueueCapabilities];
      v8->_playbackQueueCapabilities = _MRPlaybackQueueCapabilitiesFromProto(playbackQueueCapabilities);

      v16 = [MRPlaybackQueue alloc];
      playbackQueue = [protobufCopy playbackQueue];
      v18 = [(MRPlaybackQueue *)v16 initWithProtobuf:playbackQueue];
      playbackQueue = v8->_playbackQueue;
      v8->_playbackQueue = v18;

      v20 = [MRPlaybackQueueRequest alloc];
      request = [protobufCopy request];
      v22 = [(MRPlaybackQueueRequest *)v20 initWithProtobuf:request];
      request = v8->_request;
      v8->_request = v22;

      supportedCommands = [protobufCopy supportedCommands];
      v24SupportedCommands = [supportedCommands supportedCommands];
      v26 = [v24SupportedCommands mr_map:&__block_literal_global_30];
      supportedCommands = v8->_supportedCommands;
      v8->_supportedCommands = v26;

      v8->_hasPlaybackState = [protobufCopy hasPlaybackState];
      playbackState = [protobufCopy playbackState];
      if (playbackState - 1 >= 5)
      {
        v29 = 0;
      }

      else
      {
        v29 = playbackState;
      }

      v8->_playbackState = v29;
      v8->_hasPlaybackStateTimestamp = [protobufCopy hasPlaybackStateTimestamp];
      [protobufCopy playbackStateTimestamp];
      v8->_playbackStateTimestamp = v30;
    }

    self = v8;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

MRCommandInfo *__38__MRNowPlayingState_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRCommandInfo alloc] initWithProtobuf:v2];

  return v3;
}

- (MRNowPlayingState)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRSetStateMessageProtobuf alloc] initWithData:dataCopy];

    self = [(MRNowPlayingState *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)protobufWithEncoding:(int64_t)encoding
{
  v5 = objc_alloc_init(_MRSetStateMessageProtobuf);
  displayID = [(MRNowPlayingState *)self displayID];
  v7 = [displayID copy];
  [(_MRSetStateMessageProtobuf *)v5 setDisplayID:v7];

  displayName = [(MRNowPlayingState *)self displayName];
  v9 = [displayName copy];
  [(_MRSetStateMessageProtobuf *)v5 setDisplayName:v9];

  v10 = _MRPlaybackQueueCapabilitiesCreateProtobuf([(MRNowPlayingState *)self playbackQueueCapabilities]);
  [(_MRSetStateMessageProtobuf *)v5 setPlaybackQueueCapabilities:v10];

  playbackQueue = [(MRNowPlayingState *)self playbackQueue];
  v12 = [playbackQueue protobufWithEncoding:encoding];
  [(_MRSetStateMessageProtobuf *)v5 setPlaybackQueue:v12];

  playerPath = [(MRNowPlayingState *)self playerPath];
  protobuf = [playerPath protobuf];
  [(_MRSetStateMessageProtobuf *)v5 setPlayerPath:protobuf];

  request = [(MRNowPlayingState *)self request];
  protobuf2 = [request protobuf];
  [(_MRSetStateMessageProtobuf *)v5 setRequest:protobuf2];

  supportedCommands = [(MRNowPlayingState *)self supportedCommands];
  v18 = [supportedCommands count];

  if (v18)
  {
    v19 = objc_alloc_init(_MRSupportedCommandsProtobuf);
    supportedCommands2 = [(MRNowPlayingState *)self supportedCommands];
    v21 = [supportedCommands2 mr_map:&__block_literal_global_8_0];
    v22 = [v21 mutableCopy];
    [(_MRSupportedCommandsProtobuf *)v19 setSupportedCommands:v22];

    [(_MRSetStateMessageProtobuf *)v5 setSupportedCommands:v19];
  }

  playbackState = [(MRNowPlayingState *)self playbackState];
  if (playbackState - 1 >= 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = playbackState;
  }

  [(_MRSetStateMessageProtobuf *)v5 setPlaybackState:v24];
  [(_MRSetStateMessageProtobuf *)v5 setHasPlaybackState:[(MRNowPlayingState *)self hasPlaybackState]];
  [(MRNowPlayingState *)self playbackStateTimestamp];
  [(_MRSetStateMessageProtobuf *)v5 setPlaybackStateTimestamp:?];
  [(_MRSetStateMessageProtobuf *)v5 setHasPlaybackStateTimestamp:[(MRNowPlayingState *)self hasPlaybackStateTimestamp]];

  return v5;
}

- (NSData)data
{
  v2 = [(MRNowPlayingState *)self protobufWithEncoding:0];
  data = [v2 data];

  return data;
}

- (BOOL)containsArtwork
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  playbackQueue = [(MRNowPlayingState *)self playbackQueue];
  contentItems = [playbackQueue contentItems];

  v4 = [contentItems countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(contentItems);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        artwork = [v8 artwork];
        if (artwork)
        {

LABEL_13:
          v12 = 1;
          goto LABEL_14;
        }

        artworks = [v8 artworks];
        v11 = [artworks count];

        if (v11)
        {
          goto LABEL_13;
        }
      }

      v5 = [contentItems countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)copyWithoutArtwork
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(MRNowPlayingState *)self copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  playbackQueue = [v2 playbackQueue];
  contentItems = [playbackQueue contentItems];

  v5 = [contentItems countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(contentItems);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 setArtwork:0];
        [v9 setArtworks:0];
        [v9 setRemoteArtworks:0];
        [v9 setAnimatedArtworks:0];
      }

      v6 = [contentItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSDictionary)nowPlayingInfo
{
  playbackQueue = [(MRNowPlayingState *)self playbackQueue];
  hasLocation = [playbackQueue hasLocation];

  if (hasLocation)
  {
    playbackQueue2 = [(MRNowPlayingState *)self playbackQueue];
    nowPlayingInfo = [playbackQueue2 nowPlayingInfo];
  }

  else
  {
    nowPlayingInfo = 0;
  }

  return nowPlayingInfo;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  nowPlayingInfo = [(MRNowPlayingState *)self nowPlayingInfo];
  [v3 setObject:nowPlayingInfo forKeyedSubscript:@"nowPlayingInfo"];

  supportedCommands = [(MRNowPlayingState *)self supportedCommands];
  v6 = [supportedCommands mr_map:&__block_literal_global_12_0];
  [v3 setObject:v6 forKeyedSubscript:@"supportedCommands"];

  playbackQueue = [(MRNowPlayingState *)self playbackQueue];
  dictionaryRepresentation = [playbackQueue dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"playbackQueue"];

  displayID = [(MRNowPlayingState *)self displayID];
  [v3 setObject:displayID forKeyedSubscript:@"displayID"];

  displayName = [(MRNowPlayingState *)self displayName];
  [v3 setObject:displayName forKeyedSubscript:@"displayName"];

  playerPath = [(MRNowPlayingState *)self playerPath];
  v12 = [playerPath description];
  [v3 setObject:v12 forKeyedSubscript:@"playerPath"];

  request = [(MRNowPlayingState *)self request];
  v14 = [request description];
  [v3 setObject:v14 forKeyedSubscript:@"request"];

  v15 = [(MRNowPlayingState *)self playbackState]- 1;
  if (v15 > 4)
  {
    v16 = @"Unknown";
  }

  else
  {
    v16 = off_1E769D0C0[v15];
  }

  [v3 setObject:v16 forKeyedSubscript:@"playbackState"];
  if ([(MRNowPlayingState *)self hasPlaybackStateTimestamp])
  {
    v17 = MEMORY[0x1E696AD98];
    [(MRNowPlayingState *)self playbackStateTimestamp];
    v18 = [v17 numberWithDouble:?];
    [v3 setObject:v18 forKeyedSubscript:@"playbackStateTimestamp"];
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"playbackStateTimestamp"];
  }

  return v3;
}

- (void)setNowPlayingInfo:(id)info
{
  infoCopy = info;
  v6 = [[MRContentItem alloc] initWithNowPlayingInfo:infoCopy];

  v5 = [[MRPlaybackQueue alloc] initWithContentItem:v6];
  [(MRNowPlayingState *)self setPlaybackQueue:v5];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRNowPlayingState *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  displayID = [(MRNowPlayingState *)self displayID];
  v7 = [displayID copyWithZone:zone];
  [v5 setDisplayID:v7];

  displayName = [(MRNowPlayingState *)self displayName];
  v9 = [displayName copyWithZone:zone];
  [v5 setDisplayName:v9];

  nowPlayingInfo = [(MRNowPlayingState *)self nowPlayingInfo];
  v11 = [nowPlayingInfo copyWithZone:zone];
  [v5 setNowPlayingInfo:v11];

  [v5 setPlaybackQueueCapabilities:{-[MRNowPlayingState playbackQueueCapabilities](self, "playbackQueueCapabilities")}];
  playbackQueue = [(MRNowPlayingState *)self playbackQueue];
  v13 = [playbackQueue copyWithZone:zone];
  [v5 setPlaybackQueue:v13];

  playerPath = [(MRNowPlayingState *)self playerPath];
  v15 = [playerPath copyWithZone:zone];
  [v5 setPlayerPath:v15];

  request = [(MRNowPlayingState *)self request];
  v17 = [request copyWithZone:zone];
  [v5 setRequest:v17];

  supportedCommands = [(MRNowPlayingState *)self supportedCommands];
  v19 = [supportedCommands copyWithZone:zone];
  [v5 setSupportedCommands:v19];

  [v5 setPlaybackState:{-[MRNowPlayingState playbackState](self, "playbackState")}];
  [v5 setHasPlaybackState:{-[MRNowPlayingState hasPlaybackState](self, "hasPlaybackState")}];
  [(MRNowPlayingState *)self playbackStateTimestamp];
  [v5 setPlaybackStateTimestamp:?];
  [v5 setHasPlaybackStateTimestamp:{-[MRNowPlayingState hasPlaybackStateTimestamp](self, "hasPlaybackStateTimestamp")}];
  return v5;
}

@end