@interface _MPCPlayerInsertItemsCommand
- (BOOL)_isSupportedPlaybackIntent:(id)intent atInsertionPosition:(int)position;
- (MPCPlayerResponseSection)section;
- (id)_createRadioStationCommandRequest;
- (id)_insertWithOptions:(id)options;
- (id)insertAfterLastSection;
- (id)insertAfterPlayingItemWithPlaybackIntent:(id)intent;
- (id)insertAtEndOfTracklistWithPlaybackIntent:(id)intent;
- (id)insertAtEndOfUpNextWithPlaybackIntent:(id)intent;
- (id)insertPlaybackIntent:(id)intent afterItem:(id)item;
- (id)insertWithPlaybackIntent:(id)intent;
@end

@implementation _MPCPlayerInsertItemsCommand

- (BOOL)_isSupportedPlaybackIntent:(id)intent atInsertionPosition:(int)position
{
  v4 = *&position;
  intentCopy = intent;
  if (((1 << v4) & ~[(_MPCPlayerInsertItemsCommand *)self supportedInsertionPositions]) != 0 || v4 == 2 && ([(_MPCPlayerInsertItemsCommand *)self supportedInsertionPositions]& 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v7 = +[MPCPlaybackIntent tracklistDataSourceClassForSource:](MPCPlaybackIntent, [intentCopy tracklistSource]);
    playerPath = [(_MPCPlayerCommand *)self playerPath];
    resolvedPlaybackIntentDestination = [playerPath resolvedPlaybackIntentDestination];
    supportedQueueTypes = [(_MPCPlayerInsertItemsCommand *)self supportedQueueTypes];
    supportedCustomDataQueueIdentifiers = [(_MPCPlayerInsertItemsCommand *)self supportedCustomDataQueueIdentifiers];
    v12 = [v7 isValidInsertionIntent:intentCopy atPosition:v4 forDestination:resolvedPlaybackIntentDestination supportedQueueTypes:supportedQueueTypes supportedCustomDataQueueIdentifiers:supportedCustomDataQueueIdentifiers];
  }

  return v12;
}

- (id)_createRadioStationCommandRequest
{
  if ([(_MPCPlayerInsertItemsCommand *)self supportsCreateStation])
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    tracklist = [response tracklist];
    playingItem = [tracklist playingItem];
    contentItemIdentifier = [playingItem contentItemIdentifier];

    if (contentItemIdentifier)
    {
      [v4 setObject:contentItemIdentifier forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v8 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v12 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:121 options:v4 controller:controller label:label];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_insertWithOptions:(id)options
{
  optionsCopy = options;
  response = [(_MPCPlayerCommand *)self response];
  if (response)
  {
    playerPath = [optionsCopy objectForKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent"];
    v7 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69B1178]];
    integerValue = [v7 integerValue];

    if ([(_MPCPlayerInsertItemsCommand *)self _isSupportedPlaybackIntent:playerPath atInsertionPosition:integerValue])
    {
      v9 = [MPCPlayerCommandRequest alloc];
      controller = [response controller];
      request = [response request];
      label = [request label];
      v13 = [(MPCPlayerCommandRequest *)v9 initWithMediaRemoteCommand:125 options:optionsCopy controller:controller label:label];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [MPCPlayerCommandRequest alloc];
    playerPath = [(_MPCPlayerCommand *)self playerPath];
    v13 = [(MPCPlayerCommandRequest *)v14 initWithMediaRemoteCommand:125 options:optionsCopy playerPath:playerPath label:@"presumptuous command"];
  }

  return v13;
}

- (id)insertWithPlaybackIntent:(id)intent
{
  v22[2] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  lastSection = [(_MPCPlayerInsertItemsCommand *)self lastSection];

  if (!lastSection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:936 description:@"Invalid attempt to access insertWithPlaybackIntent [insertAfterLastSection command is nil]"];
  }

  if ([intentCopy prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "route"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isDeviceRoute"), v8, v7, !v9))
  {
    v18 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E695DF90];
    v11 = *MEMORY[0x1E69B1178];
    v21[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v21[1] = v11;
    v22[0] = intentCopy;
    v22[1] = &unk_1F4599718;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v13 = [v10 dictionaryWithDictionary:v12];

    response = [(_MPCPlayerCommand *)self response];
    tracklist = [response tracklist];
    playingItem = [tracklist playingItem];
    contentItemIdentifier = [playingItem contentItemIdentifier];

    if (contentItemIdentifier)
    {
      [v13 setObject:contentItemIdentifier forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v18 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v13];
  }

  return v18;
}

- (MPCPlayerResponseSection)section
{
  lastSection = [(_MPCPlayerInsertItemsCommand *)self lastSection];

  if (!lastSection)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:931 description:@"Invalid attempt to access section [insertAfterLastSection command is nil]"];
  }

  return [(_MPCPlayerInsertItemsCommand *)self lastSection];
}

- (id)insertAfterLastSection
{
  if (([(_MPCPlayerInsertItemsCommand *)self supportedInsertionPositions]& 2) != 0 && ([(_MPCPlayerInsertItemsCommand *)self lastSection], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)insertAtEndOfUpNextWithPlaybackIntent:(id)intent
{
  v20[2] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  if ((-[_MPCPlayerInsertItemsCommand supportedInsertionPositions](self, "supportedInsertionPositions") & 2) == 0 || (-[_MPCPlayerInsertItemsCommand lastSection](self, "lastSection"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || [intentCopy prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "route"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDeviceRoute"), v9, v8, !v10))
  {
    v6 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E695DF90];
    v12 = *MEMORY[0x1E69B1178];
    v19[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v19[1] = v12;
    v20[0] = intentCopy;
    v20[1] = &unk_1F4599718;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v11 dictionaryWithDictionary:v13];

    response = [(_MPCPlayerCommand *)self response];
    tracklist = [response tracklist];
    playingItem = [tracklist playingItem];
    contentItemIdentifier = [playingItem contentItemIdentifier];

    if (contentItemIdentifier)
    {
      [v14 setObject:contentItemIdentifier forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v6 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v14];
  }

  return v6;
}

- (id)insertAtEndOfTracklistWithPlaybackIntent:(id)intent
{
  v13[2] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  if ([intentCopy prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "route"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isDeviceRoute"), v6, v5, !v7))
  {
    v10 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E69B1178];
    v12[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v12[1] = v8;
    v13[0] = intentCopy;
    v13[1] = &unk_1F4599700;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v9];
  }

  return v10;
}

- (id)insertPlaybackIntent:(id)intent afterItem:(id)item
{
  v19[3] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  itemCopy = item;
  if ([intentCopy prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "route"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDeviceRoute"), v9, v8, !v10))
  {
    v16 = 0;
  }

  else
  {
    metadataObject = [itemCopy metadataObject];
    identifiers = [metadataObject identifiers];
    contentItemID = [identifiers contentItemID];

    if ([contentItemID length])
    {
      v14 = *MEMORY[0x1E69B1178];
      v18[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
      v18[1] = v14;
      v19[0] = intentCopy;
      v19[1] = &unk_1F45996E8;
      v18[2] = *MEMORY[0x1E69B1130];
      v19[2] = contentItemID;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v16 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)insertAfterPlayingItemWithPlaybackIntent:(id)intent
{
  v27[2] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  if ([intentCopy prefersEnqueuingUsingAirPlay])
  {
    playerPath = [(_MPCPlayerCommand *)self playerPath];
    route = [playerPath route];
    isDeviceRoute = [route isDeviceRoute];

    if (!isDeviceRoute)
    {
      _createRadioStationCommandRequest = 0;
      goto LABEL_14;
    }
  }

  tracklistToken = [intentCopy tracklistToken];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  response = [(_MPCPlayerCommand *)self response];
  tracklist = [response tracklist];
  playingItem = [tracklist playingItem];
  metadataObject = [playingItem metadataObject];
  identifiers = [metadataObject identifiers];

  if (!identifiers)
  {
LABEL_9:

LABEL_10:
    v19 = MEMORY[0x1E695DF90];
    v20 = *MEMORY[0x1E69B1178];
    v26[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v26[1] = v20;
    v27[0] = intentCopy;
    v27[1] = &unk_1F45996D0;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    identifiers = [v19 dictionaryWithDictionary:v21];

    response2 = [(_MPCPlayerCommand *)self response];
    tracklist2 = [response2 tracklist];
    playingItem2 = [tracklist2 playingItem];
    contentItemIdentifier = [playingItem2 contentItemIdentifier];

    if (contentItemIdentifier)
    {
      [identifiers setObject:contentItemIdentifier forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    _createRadioStationCommandRequest = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:identifiers];
    goto LABEL_13;
  }

  contentItemIdentifier = [intentCopy tracklistToken];
  seedContentReference = [contentItemIdentifier seedContentReference];
  referenceModelObjectIdentifiers = [seedContentReference referenceModelObjectIdentifiers];

  if (([referenceModelObjectIdentifiers intersectsSet:identifiers] & 1) == 0)
  {

    goto LABEL_9;
  }

  _createRadioStationCommandRequest = [(_MPCPlayerInsertItemsCommand *)self _createRadioStationCommandRequest];

LABEL_13:
LABEL_14:

  return _createRadioStationCommandRequest;
}

@end