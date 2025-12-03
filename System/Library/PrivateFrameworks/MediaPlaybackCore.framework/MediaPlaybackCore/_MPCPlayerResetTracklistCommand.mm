@interface _MPCPlayerResetTracklistCommand
- (id)clear;
- (id)clearUpNextItems;
- (id)clearUpcomingItems;
- (id)replaceWithPlaybackIntent:(id)intent replaceIntent:(int64_t)replaceIntent;
@end

@implementation _MPCPlayerResetTracklistCommand

- (id)replaceWithPlaybackIntent:(id)intent replaceIntent:(int64_t)replaceIntent
{
  v24[2] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  response = [(_MPCPlayerCommand *)self response];
  if (response && ![(_MPCPlayerResetTracklistCommand *)self supportsSetQueueCommand])
  {
    v20 = 0;
    goto LABEL_11;
  }

  v8 = +[MPCPlaybackIntent tracklistDataSourceClassForSource:](MPCPlaybackIntent, [intentCopy tracklistSource]);
  playerPath = [(_MPCPlayerCommand *)self playerPath];
  resolvedPlaybackIntentDestination = [playerPath resolvedPlaybackIntentDestination];
  supportedQueueTypes = [(_MPCPlayerResetTracklistCommand *)self supportedQueueTypes];
  supportedCustomDataQueueIdentifiers = [(_MPCPlayerResetTracklistCommand *)self supportedCustomDataQueueIdentifiers];
  v13 = [v8 isValidReplaceIntent:intentCopy forDestination:resolvedPlaybackIntentDestination supportedQueueTypes:supportedQueueTypes supportedCustomDataQueueIdentifiers:supportedCustomDataQueueIdentifiers];

  v23[0] = @"MPCPlayerCommandRequestMediaRemoteOptionPlaybackIntent";
  v23[1] = @"MPCPlayerCommandRequestMediaRemoteOptionReplaceIntent";
  v24[0] = intentCopy;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:replaceIntent];
  v24[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  if (response)
  {
    if (!v13)
    {
      v20 = 0;
      goto LABEL_10;
    }

    v16 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v20 = [(MPCPlayerCommandRequest *)v16 initWithMediaRemoteCommand:122 options:v15 controller:controller label:label];
  }

  else
  {
    v21 = [MPCPlayerCommandRequest alloc];
    controller = [(_MPCPlayerCommand *)self playerPath];
    v20 = [(MPCPlayerCommandRequest *)v21 initWithMediaRemoteCommand:122 options:v15 playerPath:controller label:@"presumptuous command"];
  }

LABEL_10:
LABEL_11:

  return v20;
}

- (id)clearUpcomingItems
{
  response = [(_MPCPlayerCommand *)self response];
  builder = [response builder];
  chain = [response chain];
  v5 = [builder playerCommandEnabled:0 command:25021 chain:chain];

  if (v5)
  {
    v6 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:25021 options:MEMORY[0x1E695E0F8] controller:controller label:label];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)clearUpNextItems
{
  response = [(_MPCPlayerCommand *)self response];
  builder = [response builder];
  chain = [response chain];
  v5 = [builder playerCommandEnabled:0 command:144 chain:chain];

  if (v5)
  {
    v6 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v10 = [(MPCPlayerCommandRequest *)v6 initWithMediaRemoteCommand:144 options:MEMORY[0x1E695E0F8] controller:controller label:label];
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
  response = [(_MPCPlayerCommand *)self response];
  if (!response || ([(_MPCPlayerResetTracklistCommand *)self supportedQueueTypes]& 0x100) != 0)
  {
    MRSystemAppPlaybackQueueCreate();
    MRSystemAppPlaybackQueueSetReplaceIntent();
    ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
    v12 = *MEMORY[0x1E69B1268];
    v13[0] = ExternalRepresentation;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v7 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v4 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:122 options:v6 controller:controller label:label];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end