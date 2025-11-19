@interface _MPCPlayerResetTracklistCommand
- (id)clear;
- (id)clearUpNextItems;
- (id)clearUpcomingItems;
- (id)replaceWithPlaybackIntent:(id)a3 replaceIntent:(int64_t)a4;
@end

@implementation _MPCPlayerResetTracklistCommand

- (id)replaceWithPlaybackIntent:(id)a3 replaceIntent:(int64_t)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(_MPCPlayerCommand *)self response];
  if (v7 && ![(_MPCPlayerResetTracklistCommand *)self supportsSetQueueCommand])
  {
    v20 = 0;
    goto LABEL_11;
  }

  v8 = +[MPCPlaybackIntent tracklistDataSourceClassForSource:](MPCPlaybackIntent, [v6 tracklistSource]);
  v9 = [(_MPCPlayerCommand *)self playerPath];
  v10 = [v9 resolvedPlaybackIntentDestination];
  v11 = [(_MPCPlayerResetTracklistCommand *)self supportedQueueTypes];
  v12 = [(_MPCPlayerResetTracklistCommand *)self supportedCustomDataQueueIdentifiers];
  v13 = [v8 isValidReplaceIntent:v6 forDestination:v10 supportedQueueTypes:v11 supportedCustomDataQueueIdentifiers:v12];

  v23[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
  v23[1] = @"MPCPlayerCommandRequestMediaRemoteOptionReplaceIntent";
  v24[0] = v6;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v24[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  if (v7)
  {
    if (!v13)
    {
      v20 = 0;
      goto LABEL_10;
    }

    v16 = [MPCPlayerCommandRequest alloc];
    v17 = [v7 controller];
    v18 = [v7 request];
    v19 = [v18 label];
    v20 = [(MPCPlayerCommandRequest *)v16 initWithMediaRemoteCommand:122 options:v15 controller:v17 label:v19];
  }

  else
  {
    v21 = [MPCPlayerCommandRequest alloc];
    v17 = [(_MPCPlayerCommand *)self playerPath];
    v20 = [(MPCPlayerCommandRequest *)v21 initWithMediaRemoteCommand:122 options:v15 playerPath:v17 label:@"presumptuous command"];
  }

LABEL_10:
LABEL_11:

  return v20;
}

- (id)clearUpcomingItems
{
  v2 = [(_MPCPlayerCommand *)self response];
  v3 = [v2 builder];
  v4 = [v2 chain];
  v5 = [v3 playerCommandEnabled:0 command:25021 chain:v4];

  if (v5)
  {
    v6 = [MPCPlayerCommandRequest alloc];
    v7 = [v2 controller];
    v8 = [v2 request];
    v9 = [v8 label];
    v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:25021 options:MEMORY[0x1E695E0F8] controller:v7 label:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)clearUpNextItems
{
  v2 = [(_MPCPlayerCommand *)self response];
  v3 = [v2 builder];
  v4 = [v2 chain];
  v5 = [v3 playerCommandEnabled:0 command:144 chain:v4];

  if (v5)
  {
    v6 = [MPCPlayerCommandRequest alloc];
    v7 = [v2 controller];
    v8 = [v2 request];
    v9 = [v8 label];
    v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:144 options:MEMORY[0x1E695E0F8] controller:v7 label:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)clear
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [(_MPCPlayerCommand *)self response];
  if (!v3 || ([(_MPCPlayerResetTracklistCommand *)self supportedQueueTypes]& 0x100) != 0)
  {
    MRSystemAppPlaybackQueueCreate();
    MRSystemAppPlaybackQueueSetReplaceIntent();
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    v12 = *MEMORY[0x1E69B1268];
    v13[0] = ExternalRepresentation;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [MPCPlayerCommandRequest alloc];
    v8 = [v3 controller];
    v9 = [v3 request];
    v10 = [v9 label];
    v4 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:122 options:v6 controller:v8 label:v10];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end