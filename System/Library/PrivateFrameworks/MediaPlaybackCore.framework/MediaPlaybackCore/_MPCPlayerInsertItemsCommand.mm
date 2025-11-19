@interface _MPCPlayerInsertItemsCommand
- (BOOL)_isSupportedPlaybackIntent:(id)a3 atInsertionPosition:(int)a4;
- (MPCPlayerResponseSection)section;
- (id)_createRadioStationCommandRequest;
- (id)_insertWithOptions:(id)a3;
- (id)insertAfterLastSection;
- (id)insertAfterPlayingItemWithPlaybackIntent:(id)a3;
- (id)insertAtEndOfTracklistWithPlaybackIntent:(id)a3;
- (id)insertAtEndOfUpNextWithPlaybackIntent:(id)a3;
- (id)insertPlaybackIntent:(id)a3 afterItem:(id)a4;
- (id)insertWithPlaybackIntent:(id)a3;
@end

@implementation _MPCPlayerInsertItemsCommand

- (BOOL)_isSupportedPlaybackIntent:(id)a3 atInsertionPosition:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (((1 << v4) & ~[(_MPCPlayerInsertItemsCommand *)self supportedInsertionPositions]) != 0 || v4 == 2 && ([(_MPCPlayerInsertItemsCommand *)self supportedInsertionPositions]& 2) != 0)
  {
    v12 = 0;
  }

  else
  {
    v7 = +[MPCPlaybackIntent tracklistDataSourceClassForSource:](MPCPlaybackIntent, [v6 tracklistSource]);
    v8 = [(_MPCPlayerCommand *)self playerPath];
    v9 = [v8 resolvedPlaybackIntentDestination];
    v10 = [(_MPCPlayerInsertItemsCommand *)self supportedQueueTypes];
    v11 = [(_MPCPlayerInsertItemsCommand *)self supportedCustomDataQueueIdentifiers];
    v12 = [v7 isValidInsertionIntent:v6 atPosition:v4 forDestination:v9 supportedQueueTypes:v10 supportedCustomDataQueueIdentifiers:v11];
  }

  return v12;
}

- (id)_createRadioStationCommandRequest
{
  if ([(_MPCPlayerInsertItemsCommand *)self supportsCreateStation])
  {
    v3 = [(_MPCPlayerCommand *)self response];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    v5 = [v3 tracklist];
    v6 = [v5 playingItem];
    v7 = [v6 contentItemIdentifier];

    if (v7)
    {
      [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v8 = [MPCPlayerCommandRequest alloc];
    v9 = [v3 controller];
    v10 = [v3 request];
    v11 = [v10 label];
    v12 = [(MPCPlayerCommandRequest *)v8 initWithMediaRemoteCommand:121 options:v4 controller:v9 label:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_insertWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(_MPCPlayerCommand *)self response];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent"];
    v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69B1178]];
    v8 = [v7 integerValue];

    if ([(_MPCPlayerInsertItemsCommand *)self _isSupportedPlaybackIntent:v6 atInsertionPosition:v8])
    {
      v9 = [MPCPlayerCommandRequest alloc];
      v10 = [v5 controller];
      v11 = [v5 request];
      v12 = [v11 label];
      v13 = [(MPCPlayerCommandRequest *)v9 initWithMediaRemoteCommand:125 options:v4 controller:v10 label:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = [MPCPlayerCommandRequest alloc];
    v6 = [(_MPCPlayerCommand *)self playerPath];
    v13 = [(MPCPlayerCommandRequest *)v14 initWithMediaRemoteCommand:125 options:v4 playerPath:v6 label:@"presumptuous command"];
  }

  return v13;
}

- (id)insertWithPlaybackIntent:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(_MPCPlayerInsertItemsCommand *)self lastSection];

  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:936 description:@"Invalid attempt to access insertWithPlaybackIntent [insertAfterLastSection command is nil]"];
  }

  if ([v5 prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "route"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isDeviceRoute"), v8, v7, !v9))
  {
    v18 = 0;
  }

  else
  {
    v10 = MEMORY[0x1E695DF90];
    v11 = *MEMORY[0x1E69B1178];
    v21[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v21[1] = v11;
    v22[0] = v5;
    v22[1] = &unk_1F4599718;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v13 = [v10 dictionaryWithDictionary:v12];

    v14 = [(_MPCPlayerCommand *)self response];
    v15 = [v14 tracklist];
    v16 = [v15 playingItem];
    v17 = [v16 contentItemIdentifier];

    if (v17)
    {
      [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v18 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v13];
  }

  return v18;
}

- (MPCPlayerResponseSection)section
{
  v4 = [(_MPCPlayerInsertItemsCommand *)self lastSection];

  if (!v4)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPCPlayerResponseTracklist.m" lineNumber:931 description:@"Invalid attempt to access section [insertAfterLastSection command is nil]"];
  }

  return [(_MPCPlayerInsertItemsCommand *)self lastSection];
}

- (id)insertAfterLastSection
{
  if (([(_MPCPlayerInsertItemsCommand *)self supportedInsertionPositions]& 2) != 0 && ([(_MPCPlayerInsertItemsCommand *)self lastSection], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)insertAtEndOfUpNextWithPlaybackIntent:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((-[_MPCPlayerInsertItemsCommand supportedInsertionPositions](self, "supportedInsertionPositions") & 2) == 0 || (-[_MPCPlayerInsertItemsCommand lastSection](self, "lastSection"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5) || [v4 prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "route"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDeviceRoute"), v9, v8, !v10))
  {
    v6 = 0;
  }

  else
  {
    v11 = MEMORY[0x1E695DF90];
    v12 = *MEMORY[0x1E69B1178];
    v19[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v19[1] = v12;
    v20[0] = v4;
    v20[1] = &unk_1F4599718;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v11 dictionaryWithDictionary:v13];

    v15 = [(_MPCPlayerCommand *)self response];
    v16 = [v15 tracklist];
    v17 = [v16 playingItem];
    v18 = [v17 contentItemIdentifier];

    if (v18)
    {
      [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v6 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v14];
  }

  return v6;
}

- (id)insertAtEndOfTracklistWithPlaybackIntent:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "route"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isDeviceRoute"), v6, v5, !v7))
  {
    v10 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E69B1178];
    v12[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v12[1] = v8;
    v13[0] = v4;
    v13[1] = &unk_1F4599700;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v9];
  }

  return v10;
}

- (id)insertPlaybackIntent:(id)a3 afterItem:(id)a4
{
  v19[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 prefersEnqueuingUsingAirPlay] && (-[_MPCPlayerCommand playerPath](self, "playerPath"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "route"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDeviceRoute"), v9, v8, !v10))
  {
    v16 = 0;
  }

  else
  {
    v11 = [v7 metadataObject];
    v12 = [v11 identifiers];
    v13 = [v12 contentItemID];

    if ([v13 length])
    {
      v14 = *MEMORY[0x1E69B1178];
      v18[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
      v18[1] = v14;
      v19[0] = v6;
      v19[1] = &unk_1F45996E8;
      v18[2] = *MEMORY[0x1E69B1130];
      v19[2] = v13;
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

- (id)insertAfterPlayingItemWithPlaybackIntent:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 prefersEnqueuingUsingAirPlay])
  {
    v5 = [(_MPCPlayerCommand *)self playerPath];
    v6 = [v5 route];
    v7 = [v6 isDeviceRoute];

    if (!v7)
    {
      v18 = 0;
      goto LABEL_14;
    }
  }

  v8 = [v4 tracklistToken];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = [(_MPCPlayerCommand *)self response];
  v11 = [v10 tracklist];
  v12 = [v11 playingItem];
  v13 = [v12 metadataObject];
  v14 = [v13 identifiers];

  if (!v14)
  {
LABEL_9:

LABEL_10:
    v19 = MEMORY[0x1E695DF90];
    v20 = *MEMORY[0x1E69B1178];
    v26[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
    v26[1] = v20;
    v27[0] = v4;
    v27[1] = &unk_1F45996D0;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v14 = [v19 dictionaryWithDictionary:v21];

    v22 = [(_MPCPlayerCommand *)self response];
    v23 = [v22 tracklist];
    v24 = [v23 playingItem];
    v15 = [v24 contentItemIdentifier];

    if (v15)
    {
      [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B1150]];
    }

    v18 = [(_MPCPlayerInsertItemsCommand *)self _insertWithOptions:v14];
    goto LABEL_13;
  }

  v15 = [v4 tracklistToken];
  v16 = [v15 seedContentReference];
  v17 = [v16 referenceModelObjectIdentifiers];

  if (([v17 intersectsSet:v14] & 1) == 0)
  {

    goto LABEL_9;
  }

  v18 = [(_MPCPlayerInsertItemsCommand *)self _createRadioStationCommandRequest];

LABEL_13:
LABEL_14:

  return v18;
}

@end