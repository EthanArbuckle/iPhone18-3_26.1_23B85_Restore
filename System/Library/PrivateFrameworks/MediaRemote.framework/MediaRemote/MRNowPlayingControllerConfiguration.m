@interface MRNowPlayingControllerConfiguration
- (BOOL)isArtworkOnly;
- (MRNowPlayingControllerConfiguration)initWithDestination:(id)a3;
- (MRNowPlayingControllerConfiguration)initWithEndpoint:(id)a3;
- (MRNowPlayingControllerConfiguration)initWithOrigin:(id)a3;
- (MRNowPlayingControllerConfiguration)initWithOutputDeviceUID:(id)a3;
- (MRPlaybackQueueRequest)playbackQueueRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation MRNowPlayingControllerConfiguration

- (MRPlaybackQueueRequest)playbackQueueRequest
{
  playbackQueueRequest = self->_playbackQueueRequest;
  if (playbackQueueRequest)
  {
    v3 = playbackQueueRequest;
  }

  else if ([(MRNowPlayingControllerConfiguration *)self requestPlaybackQueue])
  {
    v3 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p - %@", objc_opt_class(), v2, v2->_destination];
  v4 = v3;
  if (v2->_label)
  {
    [v3 appendFormat:@"label: %@/", v2->_label];
  }

  v5 = [(MRNowPlayingControllerConfiguration *)v2 playbackQueueRequest];

  if (v5)
  {
    v6 = [(MRNowPlayingControllerConfiguration *)v2 playbackQueueRequest];
    [v4 appendFormat:@"PBR=%@", v6];
  }

  if (v2->_requestSupportedCommands)
  {
    [v4 appendFormat:@"/sc:%u", 1];
  }

  if (v2->_requestPlaybackState)
  {
    [v4 appendFormat:@"/ps:%u", 1];
  }

  if (v2->_requestLastPlayingDate)
  {
    [v4 appendFormat:@"/lpd:%u", 1];
  }

  if (v2->_requestClientProperties)
  {
    [v4 appendFormat:@"/cp:%u", 1];
  }

  if (v2->_discoveryPredicate)
  {
    v7 = MEMORY[0x1A58E3570]();
    [v4 appendFormat:@"/discoveryPredicate:%@", v7];
  }

  if ([(MRNowPlayingControllerConfiguration *)v2 isSingleShot])
  {
    [v4 appendString:@"/ss"];
  }

  if ([(MRNowPlayingControllerConfiguration *)v2 wantsChangeCallbacksDuringInitialLoad])
  {
    [v4 appendString:@"/wccdi"];
  }

  [v4 appendFormat:@">"];
  objc_sync_exit(v2);

  return v4;
}

- (MRNowPlayingControllerConfiguration)initWithOutputDeviceUID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[MRAVOutputDevice localDeviceUID];
  }

  v5 = [[MRDestination alloc] initWithOutputDeviceUID:v4];
  v6 = [(MRNowPlayingControllerConfiguration *)self initWithDestination:v5];

  return v6;
}

- (MRNowPlayingControllerConfiguration)initWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [[MRDestination alloc] initWithEndpoint:v4];

  v6 = [(MRNowPlayingControllerConfiguration *)self initWithDestination:v5];
  return v6;
}

- (MRNowPlayingControllerConfiguration)initWithOrigin:(id)a3
{
  v4 = a3;
  v5 = [[MRDestination alloc] initWithOrigin:v4];

  v6 = [(MRNowPlayingControllerConfiguration *)self initWithDestination:v5];
  return v6;
}

- (MRNowPlayingControllerConfiguration)initWithDestination:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MRNowPlayingControllerConfiguration;
  v5 = [(MRNowPlayingControllerConfiguration *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = +[MRDestination localDestination];
    }

    destination = v5->_destination;
    v5->_destination = v6;

    customDescriptionForResponse = v5->_customDescriptionForResponse;
    v5->_customDescriptionForResponse = &__block_literal_global_582;
  }

  return v5;
}

- (BOOL)isArtworkOnly
{
  if ([(MRNowPlayingControllerConfiguration *)self requestSupportedCommands])
  {
    return 0;
  }

  if ([(MRNowPlayingControllerConfiguration *)self requestPlaybackState])
  {
    return 0;
  }

  if ([(MRNowPlayingControllerConfiguration *)self requestLastPlayingDate])
  {
    return 0;
  }

  if ([(MRNowPlayingControllerConfiguration *)self requestClientProperties])
  {
    return 0;
  }

  if ([(MRNowPlayingControllerConfiguration *)self requestPlaybackQueue])
  {
    return 0;
  }

  v3 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v4 = [v3 includeMetadata];

  if (v4)
  {
    return 0;
  }

  v5 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v6 = [v5 includeLyrics];

  if (v6)
  {
    return 0;
  }

  v7 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v8 = [v7 includeSections];

  if (v8)
  {
    return 0;
  }

  v9 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v10 = [v9 includeInfo];

  if (v10)
  {
    return 0;
  }

  v11 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v12 = [v11 includeAlignments];

  if (v12)
  {
    return 0;
  }

  v14 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v15 = [v14 includeLanguageOptions];

  return v15 ^ 1;
}

- (id)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = objc_opt_class();
  label = v2->_label;
  v3 = MRCreateIndentedDebugDescriptionFromObject(v2->_destination);
  if (v2->_requestSupportedCommands)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (v2->_requestPlaybackState)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (v2->_requestLastPlayingDate)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (v2->_requestClientProperties)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (v2->_wantsChangeCallbacksDuringInitialLoad)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (v2->_singleShot)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  playbackQueueRequest = v2->_playbackQueueRequest;
  v11 = MEMORY[0x1A58E3570](v2->_discoveryPredicate);
  v12 = [v16 initWithFormat:@"<%@: %p {\n   label = %@\n   destination = %@\n   playbackQueueRequest = %@\n   requestSupportedCommands = %@\n   requestPlaybackState = %@\n   requestLastPlayingdate = %@\n   requestClientProperties = %@\n   wantsChangeCallbacksDuringInitialLoad = %@\n   isSingleShot = %@\n   discoveryPredicate = %@\n}>\n", v15, v2, label, v3, playbackQueueRequest, v4, v5, v6, v7, v8, v9, v11];

  objc_sync_exit(v2);

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MRNowPlayingControllerConfiguration *)self destination];
  v7 = [v6 copyWithZone:a3];
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  v9 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v10 = [v9 copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 8) = [(MRNowPlayingControllerConfiguration *)self requestSupportedCommands];
  *(v5 + 9) = [(MRNowPlayingControllerConfiguration *)self requestPlaybackState];
  *(v5 + 10) = [(MRNowPlayingControllerConfiguration *)self requestLastPlayingDate];
  *(v5 + 12) = [(MRNowPlayingControllerConfiguration *)self requestPlaybackQueue];
  *(v5 + 11) = [(MRNowPlayingControllerConfiguration *)self requestClientProperties];
  *(v5 + 14) = [(MRNowPlayingControllerConfiguration *)self isSingleShot];
  v12 = [(MRNowPlayingControllerConfiguration *)self label];
  v13 = [v12 copyWithZone:a3];
  v14 = *(v5 + 24);
  *(v5 + 24) = v13;

  v15 = [(MRNowPlayingControllerConfiguration *)self discoveryPredicate];
  v16 = [v15 copy];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  *(v5 + 13) = [(MRNowPlayingControllerConfiguration *)self wantsChangeCallbacksDuringInitialLoad];
  v18 = [(MRNowPlayingControllerConfiguration *)self customDescriptionForResponse];
  v19 = [v18 copy];
  v20 = *(v5 + 32);
  *(v5 + 32) = v19;

  return v5;
}

@end