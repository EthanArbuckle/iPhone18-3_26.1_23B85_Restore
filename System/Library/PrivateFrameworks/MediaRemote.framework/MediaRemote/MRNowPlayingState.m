@interface MRNowPlayingState
- (BOOL)containsArtwork;
- (MRNowPlayingState)initWithData:(id)a3;
- (MRNowPlayingState)initWithPlayerPath:(id)a3;
- (MRNowPlayingState)initWithProtobuf:(id)a3;
- (NSData)data;
- (NSDictionary)nowPlayingInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithoutArtwork;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobufWithEncoding:(int64_t)a3;
- (void)setNowPlayingInfo:(id)a3;
@end

@implementation MRNowPlayingState

- (MRNowPlayingState)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MRNowPlayingState;
  v5 = [(MRNowPlayingState *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    playerPath = v5->_playerPath;
    v5->_playerPath = v6;
  }

  return v5;
}

- (MRNowPlayingState)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MRPlayerPath alloc];
    v6 = [v4 playerPath];
    v7 = [(MRPlayerPath *)v5 initWithProtobuf:v6];

    v8 = [(MRNowPlayingState *)self initWithPlayerPath:v7];
    if (v8)
    {
      v9 = [v4 displayID];
      v10 = [v9 copy];
      displayID = v8->_displayID;
      v8->_displayID = v10;

      v12 = [v4 displayName];
      v13 = [v12 copy];
      displayName = v8->_displayName;
      v8->_displayName = v13;

      v15 = [v4 playbackQueueCapabilities];
      v8->_playbackQueueCapabilities = _MRPlaybackQueueCapabilitiesFromProto(v15);

      v16 = [MRPlaybackQueue alloc];
      v17 = [v4 playbackQueue];
      v18 = [(MRPlaybackQueue *)v16 initWithProtobuf:v17];
      playbackQueue = v8->_playbackQueue;
      v8->_playbackQueue = v18;

      v20 = [MRPlaybackQueueRequest alloc];
      v21 = [v4 request];
      v22 = [(MRPlaybackQueueRequest *)v20 initWithProtobuf:v21];
      request = v8->_request;
      v8->_request = v22;

      v24 = [v4 supportedCommands];
      v25 = [v24 supportedCommands];
      v26 = [v25 mr_map:&__block_literal_global_30];
      supportedCommands = v8->_supportedCommands;
      v8->_supportedCommands = v26;

      v8->_hasPlaybackState = [v4 hasPlaybackState];
      v28 = [v4 playbackState];
      if (v28 - 1 >= 5)
      {
        v29 = 0;
      }

      else
      {
        v29 = v28;
      }

      v8->_playbackState = v29;
      v8->_hasPlaybackStateTimestamp = [v4 hasPlaybackStateTimestamp];
      [v4 playbackStateTimestamp];
      v8->_playbackStateTimestamp = v30;
    }

    self = v8;

    v31 = self;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

MRCommandInfo *__38__MRNowPlayingState_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRCommandInfo alloc] initWithProtobuf:v2];

  return v3;
}

- (MRNowPlayingState)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRSetStateMessageProtobuf alloc] initWithData:v4];

    self = [(MRNowPlayingState *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)protobufWithEncoding:(int64_t)a3
{
  v5 = objc_alloc_init(_MRSetStateMessageProtobuf);
  v6 = [(MRNowPlayingState *)self displayID];
  v7 = [v6 copy];
  [(_MRSetStateMessageProtobuf *)v5 setDisplayID:v7];

  v8 = [(MRNowPlayingState *)self displayName];
  v9 = [v8 copy];
  [(_MRSetStateMessageProtobuf *)v5 setDisplayName:v9];

  v10 = _MRPlaybackQueueCapabilitiesCreateProtobuf([(MRNowPlayingState *)self playbackQueueCapabilities]);
  [(_MRSetStateMessageProtobuf *)v5 setPlaybackQueueCapabilities:v10];

  v11 = [(MRNowPlayingState *)self playbackQueue];
  v12 = [v11 protobufWithEncoding:a3];
  [(_MRSetStateMessageProtobuf *)v5 setPlaybackQueue:v12];

  v13 = [(MRNowPlayingState *)self playerPath];
  v14 = [v13 protobuf];
  [(_MRSetStateMessageProtobuf *)v5 setPlayerPath:v14];

  v15 = [(MRNowPlayingState *)self request];
  v16 = [v15 protobuf];
  [(_MRSetStateMessageProtobuf *)v5 setRequest:v16];

  v17 = [(MRNowPlayingState *)self supportedCommands];
  v18 = [v17 count];

  if (v18)
  {
    v19 = objc_alloc_init(_MRSupportedCommandsProtobuf);
    v20 = [(MRNowPlayingState *)self supportedCommands];
    v21 = [v20 mr_map:&__block_literal_global_8_0];
    v22 = [v21 mutableCopy];
    [(_MRSupportedCommandsProtobuf *)v19 setSupportedCommands:v22];

    [(_MRSetStateMessageProtobuf *)v5 setSupportedCommands:v19];
  }

  v23 = [(MRNowPlayingState *)self playbackState];
  if (v23 - 1 >= 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
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
  v3 = [v2 data];

  return v3;
}

- (BOOL)containsArtwork
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [(MRNowPlayingState *)self playbackQueue];
  v3 = [v2 contentItems];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 artwork];
        if (v9)
        {

LABEL_13:
          v12 = 1;
          goto LABEL_14;
        }

        v10 = [v8 artworks];
        v11 = [v10 count];

        if (v11)
        {
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [v2 playbackQueue];
  v4 = [v3 contentItems];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 setArtwork:0];
        [v9 setArtworks:0];
        [v9 setRemoteArtworks:0];
        [v9 setAnimatedArtworks:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

- (NSDictionary)nowPlayingInfo
{
  v3 = [(MRNowPlayingState *)self playbackQueue];
  v4 = [v3 hasLocation];

  if (v4)
  {
    v5 = [(MRNowPlayingState *)self playbackQueue];
    v6 = [v5 nowPlayingInfo];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRNowPlayingState *)self nowPlayingInfo];
  [v3 setObject:v4 forKeyedSubscript:@"nowPlayingInfo"];

  v5 = [(MRNowPlayingState *)self supportedCommands];
  v6 = [v5 mr_map:&__block_literal_global_12_0];
  [v3 setObject:v6 forKeyedSubscript:@"supportedCommands"];

  v7 = [(MRNowPlayingState *)self playbackQueue];
  v8 = [v7 dictionaryRepresentation];
  [v3 setObject:v8 forKeyedSubscript:@"playbackQueue"];

  v9 = [(MRNowPlayingState *)self displayID];
  [v3 setObject:v9 forKeyedSubscript:@"displayID"];

  v10 = [(MRNowPlayingState *)self displayName];
  [v3 setObject:v10 forKeyedSubscript:@"displayName"];

  v11 = [(MRNowPlayingState *)self playerPath];
  v12 = [v11 description];
  [v3 setObject:v12 forKeyedSubscript:@"playerPath"];

  v13 = [(MRNowPlayingState *)self request];
  v14 = [v13 description];
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

- (void)setNowPlayingInfo:(id)a3
{
  v4 = a3;
  v6 = [[MRContentItem alloc] initWithNowPlayingInfo:v4];

  v5 = [[MRPlaybackQueue alloc] initWithContentItem:v6];
  [(MRNowPlayingState *)self setPlaybackQueue:v5];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(MRNowPlayingState *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MRNowPlayingState *)self displayID];
  v7 = [v6 copyWithZone:a3];
  [v5 setDisplayID:v7];

  v8 = [(MRNowPlayingState *)self displayName];
  v9 = [v8 copyWithZone:a3];
  [v5 setDisplayName:v9];

  v10 = [(MRNowPlayingState *)self nowPlayingInfo];
  v11 = [v10 copyWithZone:a3];
  [v5 setNowPlayingInfo:v11];

  [v5 setPlaybackQueueCapabilities:{-[MRNowPlayingState playbackQueueCapabilities](self, "playbackQueueCapabilities")}];
  v12 = [(MRNowPlayingState *)self playbackQueue];
  v13 = [v12 copyWithZone:a3];
  [v5 setPlaybackQueue:v13];

  v14 = [(MRNowPlayingState *)self playerPath];
  v15 = [v14 copyWithZone:a3];
  [v5 setPlayerPath:v15];

  v16 = [(MRNowPlayingState *)self request];
  v17 = [v16 copyWithZone:a3];
  [v5 setRequest:v17];

  v18 = [(MRNowPlayingState *)self supportedCommands];
  v19 = [v18 copyWithZone:a3];
  [v5 setSupportedCommands:v19];

  [v5 setPlaybackState:{-[MRNowPlayingState playbackState](self, "playbackState")}];
  [v5 setHasPlaybackState:{-[MRNowPlayingState hasPlaybackState](self, "hasPlaybackState")}];
  [(MRNowPlayingState *)self playbackStateTimestamp];
  [v5 setPlaybackStateTimestamp:?];
  [v5 setHasPlaybackStateTimestamp:{-[MRNowPlayingState hasPlaybackStateTimestamp](self, "hasPlaybackStateTimestamp")}];
  return v5;
}

@end