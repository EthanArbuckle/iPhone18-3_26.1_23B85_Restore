@interface MRNowPlayingControllerConfiguration
- (BOOL)isArtworkOnly;
- (MRNowPlayingControllerConfiguration)initWithDestination:(id)destination;
- (MRNowPlayingControllerConfiguration)initWithEndpoint:(id)endpoint;
- (MRNowPlayingControllerConfiguration)initWithOrigin:(id)origin;
- (MRNowPlayingControllerConfiguration)initWithOutputDeviceUID:(id)d;
- (MRPlaybackQueueRequest)playbackQueueRequest;
- (id)copyWithZone:(_NSZone *)zone;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p - %@", objc_opt_class(), selfCopy, selfCopy->_destination];
  v4 = v3;
  if (selfCopy->_label)
  {
    [v3 appendFormat:@"label: %@/", selfCopy->_label];
  }

  playbackQueueRequest = [(MRNowPlayingControllerConfiguration *)selfCopy playbackQueueRequest];

  if (playbackQueueRequest)
  {
    playbackQueueRequest2 = [(MRNowPlayingControllerConfiguration *)selfCopy playbackQueueRequest];
    [v4 appendFormat:@"PBR=%@", playbackQueueRequest2];
  }

  if (selfCopy->_requestSupportedCommands)
  {
    [v4 appendFormat:@"/sc:%u", 1];
  }

  if (selfCopy->_requestPlaybackState)
  {
    [v4 appendFormat:@"/ps:%u", 1];
  }

  if (selfCopy->_requestLastPlayingDate)
  {
    [v4 appendFormat:@"/lpd:%u", 1];
  }

  if (selfCopy->_requestClientProperties)
  {
    [v4 appendFormat:@"/cp:%u", 1];
  }

  if (selfCopy->_discoveryPredicate)
  {
    v7 = MEMORY[0x1A58E3570]();
    [v4 appendFormat:@"/discoveryPredicate:%@", v7];
  }

  if ([(MRNowPlayingControllerConfiguration *)selfCopy isSingleShot])
  {
    [v4 appendString:@"/ss"];
  }

  if ([(MRNowPlayingControllerConfiguration *)selfCopy wantsChangeCallbacksDuringInitialLoad])
  {
    [v4 appendString:@"/wccdi"];
  }

  [v4 appendFormat:@">"];
  objc_sync_exit(selfCopy);

  return v4;
}

- (MRNowPlayingControllerConfiguration)initWithOutputDeviceUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    dCopy = +[MRAVOutputDevice localDeviceUID];
  }

  v5 = [[MRDestination alloc] initWithOutputDeviceUID:dCopy];
  v6 = [(MRNowPlayingControllerConfiguration *)self initWithDestination:v5];

  return v6;
}

- (MRNowPlayingControllerConfiguration)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[MRDestination alloc] initWithEndpoint:endpointCopy];

  v6 = [(MRNowPlayingControllerConfiguration *)self initWithDestination:v5];
  return v6;
}

- (MRNowPlayingControllerConfiguration)initWithOrigin:(id)origin
{
  originCopy = origin;
  v5 = [[MRDestination alloc] initWithOrigin:originCopy];

  v6 = [(MRNowPlayingControllerConfiguration *)self initWithDestination:v5];
  return v6;
}

- (MRNowPlayingControllerConfiguration)initWithDestination:(id)destination
{
  destinationCopy = destination;
  v10.receiver = self;
  v10.super_class = MRNowPlayingControllerConfiguration;
  v5 = [(MRNowPlayingControllerConfiguration *)&v10 init];
  if (v5)
  {
    if (destinationCopy)
    {
      v6 = [destinationCopy copy];
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

  playbackQueueRequest = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  includeMetadata = [playbackQueueRequest includeMetadata];

  if (includeMetadata)
  {
    return 0;
  }

  playbackQueueRequest2 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  includeLyrics = [playbackQueueRequest2 includeLyrics];

  if (includeLyrics)
  {
    return 0;
  }

  playbackQueueRequest3 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  includeSections = [playbackQueueRequest3 includeSections];

  if (includeSections)
  {
    return 0;
  }

  playbackQueueRequest4 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  includeInfo = [playbackQueueRequest4 includeInfo];

  if (includeInfo)
  {
    return 0;
  }

  playbackQueueRequest5 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  includeAlignments = [playbackQueueRequest5 includeAlignments];

  if (includeAlignments)
  {
    return 0;
  }

  playbackQueueRequest6 = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  includeLanguageOptions = [playbackQueueRequest6 includeLanguageOptions];

  return includeLanguageOptions ^ 1;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = objc_opt_class();
  label = selfCopy->_label;
  v3 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_destination);
  if (selfCopy->_requestSupportedCommands)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (selfCopy->_requestPlaybackState)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (selfCopy->_requestLastPlayingDate)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (selfCopy->_requestClientProperties)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (selfCopy->_wantsChangeCallbacksDuringInitialLoad)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (selfCopy->_singleShot)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  playbackQueueRequest = selfCopy->_playbackQueueRequest;
  v11 = MEMORY[0x1A58E3570](selfCopy->_discoveryPredicate);
  v12 = [v16 initWithFormat:@"<%@: %p {\n   label = %@\n   destination = %@\n   playbackQueueRequest = %@\n   requestSupportedCommands = %@\n   requestPlaybackState = %@\n   requestLastPlayingdate = %@\n   requestClientProperties = %@\n   wantsChangeCallbacksDuringInitialLoad = %@\n   isSingleShot = %@\n   discoveryPredicate = %@\n}>\n", v15, selfCopy, label, v3, playbackQueueRequest, v4, v5, v6, v7, v8, v9, v11];

  objc_sync_exit(selfCopy);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  destination = [(MRNowPlayingControllerConfiguration *)self destination];
  v7 = [destination copyWithZone:zone];
  v8 = *(v5 + 16);
  *(v5 + 16) = v7;

  playbackQueueRequest = [(MRNowPlayingControllerConfiguration *)self playbackQueueRequest];
  v10 = [playbackQueueRequest copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  *(v5 + 8) = [(MRNowPlayingControllerConfiguration *)self requestSupportedCommands];
  *(v5 + 9) = [(MRNowPlayingControllerConfiguration *)self requestPlaybackState];
  *(v5 + 10) = [(MRNowPlayingControllerConfiguration *)self requestLastPlayingDate];
  *(v5 + 12) = [(MRNowPlayingControllerConfiguration *)self requestPlaybackQueue];
  *(v5 + 11) = [(MRNowPlayingControllerConfiguration *)self requestClientProperties];
  *(v5 + 14) = [(MRNowPlayingControllerConfiguration *)self isSingleShot];
  label = [(MRNowPlayingControllerConfiguration *)self label];
  v13 = [label copyWithZone:zone];
  v14 = *(v5 + 24);
  *(v5 + 24) = v13;

  discoveryPredicate = [(MRNowPlayingControllerConfiguration *)self discoveryPredicate];
  v16 = [discoveryPredicate copy];
  v17 = *(v5 + 40);
  *(v5 + 40) = v16;

  *(v5 + 13) = [(MRNowPlayingControllerConfiguration *)self wantsChangeCallbacksDuringInitialLoad];
  customDescriptionForResponse = [(MRNowPlayingControllerConfiguration *)self customDescriptionForResponse];
  v19 = [customDescriptionForResponse copy];
  v20 = *(v5 + 32);
  *(v5 + 32) = v19;

  return v5;
}

@end