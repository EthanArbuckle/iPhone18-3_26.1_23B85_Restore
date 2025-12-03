@interface _MPCPlayerFeedbackCommand
- (_MPCPlayerFeedbackCommand)initWithResponse:(id)response mediaRemoteCommand:(unsigned int)command;
- (id)changeValue:(BOOL)value;
@end

@implementation _MPCPlayerFeedbackCommand

- (id)changeValue:(BOOL)value
{
  valueCopy = value;
  favoritableModelObject = [(_MPCPlayerFeedbackCommand *)self favoritableModelObject];

  if (favoritableModelObject)
  {
    response = [(_MPCPlayerCommand *)self response];
    isDislikingFavoritableModelObject = [(_MPCPlayerFeedbackCommand *)self isDislikingFavoritableModelObject];
    v8 = off_1E822D800;
    if (!isDislikingFavoritableModelObject)
    {
      v8 = off_1E822D7B0;
    }

    v9 = objc_alloc(*v8);
    favoritableModelObject2 = [(_MPCPlayerFeedbackCommand *)self favoritableModelObject];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v14 = [v9 initWithModelObject:favoritableModelObject2 value:valueCopy controller:controller label:label];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    response = v15;
    if (!valueCopy)
    {
      [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B1140]];
    }

    contentItemID = [(_MPCPlayerItemCommand *)self contentItemID];
    v17 = [contentItemID length];

    if (v17)
    {
      contentItemID2 = [(_MPCPlayerItemCommand *)self contentItemID];
      [response setObject:contentItemID2 forKeyedSubscript:*MEMORY[0x1E69B10C8]];
    }

    favoritableModelObject2 = [(_MPCPlayerCommand *)self response];
    v19 = [MPCPlayerCommandRequest alloc];
    command = [(_MPCPlayerFeedbackCommand *)self command];
    controller = [favoritableModelObject2 controller];
    request = [favoritableModelObject2 request];
    label = [request label];
    v14 = [(MPCPlayerCommandRequest *)v19 initWithMediaRemoteCommand:command options:response controller:controller label:label];
  }

  v21 = v14;

  return v21;
}

- (_MPCPlayerFeedbackCommand)initWithResponse:(id)response mediaRemoteCommand:(unsigned int)command
{
  v6.receiver = self;
  v6.super_class = _MPCPlayerFeedbackCommand;
  result = [(_MPCPlayerCommand *)&v6 initWithResponse:response];
  if (result)
  {
    result->_command = command;
  }

  return result;
}

@end