@interface _MPCPlayerFeedbackCommand
- (_MPCPlayerFeedbackCommand)initWithResponse:(id)a3 mediaRemoteCommand:(unsigned int)a4;
- (id)changeValue:(BOOL)a3;
@end

@implementation _MPCPlayerFeedbackCommand

- (id)changeValue:(BOOL)a3
{
  v3 = a3;
  v5 = [(_MPCPlayerFeedbackCommand *)self favoritableModelObject];

  if (v5)
  {
    v6 = [(_MPCPlayerCommand *)self response];
    v7 = [(_MPCPlayerFeedbackCommand *)self isDislikingFavoritableModelObject];
    v8 = off_1E822D800;
    if (!v7)
    {
      v8 = off_1E822D7B0;
    }

    v9 = objc_alloc(*v8);
    v10 = [(_MPCPlayerFeedbackCommand *)self favoritableModelObject];
    v11 = [v6 controller];
    v12 = [v6 request];
    v13 = [v12 label];
    v14 = [v9 initWithModelObject:v10 value:v3 controller:v11 label:v13];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v6 = v15;
    if (!v3)
    {
      [v15 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69B1140]];
    }

    v16 = [(_MPCPlayerItemCommand *)self contentItemID];
    v17 = [v16 length];

    if (v17)
    {
      v18 = [(_MPCPlayerItemCommand *)self contentItemID];
      [v6 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69B10C8]];
    }

    v10 = [(_MPCPlayerCommand *)self response];
    v19 = [MPCPlayerCommandRequest alloc];
    v20 = [(_MPCPlayerFeedbackCommand *)self command];
    v11 = [v10 controller];
    v12 = [v10 request];
    v13 = [v12 label];
    v14 = [(MPCPlayerCommandRequest *)v19 initWithMediaRemoteCommand:v20 options:v6 controller:v11 label:v13];
  }

  v21 = v14;

  return v21;
}

- (_MPCPlayerFeedbackCommand)initWithResponse:(id)a3 mediaRemoteCommand:(unsigned int)a4
{
  v6.receiver = self;
  v6.super_class = _MPCPlayerFeedbackCommand;
  result = [(_MPCPlayerCommand *)&v6 initWithResponse:a3];
  if (result)
  {
    result->_command = a4;
  }

  return result;
}

@end