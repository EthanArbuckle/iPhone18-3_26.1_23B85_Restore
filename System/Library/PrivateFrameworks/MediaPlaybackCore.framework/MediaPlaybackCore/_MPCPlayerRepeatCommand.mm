@interface _MPCPlayerRepeatCommand
- (id)advance;
- (id)setRepeatType:(int64_t)type;
@end

@implementation _MPCPlayerRepeatCommand

- (id)advance
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(_MPCPlayerRepeatCommand *)self supportsAdvanceRepeat])
  {
    response = [(_MPCPlayerCommand *)self response];
    v4 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v8 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:7 options:0 controller:controller label:label];

    v18 = *MEMORY[0x1E69B0CE0];
    v19[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [(MPCPlayerCommandRequest *)v8 setUserInitiatedOptions:v9];
  }

  else if ([(_MPCPlayerRepeatCommand *)self supportsChangeRepeat])
  {
    supportedRepeatTypes = [(_MPCPlayerRepeatCommand *)self supportedRepeatTypes];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MPCPlayerRepeatCommand currentRepeatType](self, "currentRepeatType")}];
    v12 = [supportedRepeatTypes indexOfObject:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      supportedRepeatTypes2 = [(_MPCPlayerRepeatCommand *)self supportedRepeatTypes];
      v13 = (v12 + 1) % [supportedRepeatTypes2 count];
    }

    supportedRepeatTypes3 = [(_MPCPlayerRepeatCommand *)self supportedRepeatTypes];
    v16 = [supportedRepeatTypes3 objectAtIndexedSubscript:v13];

    v8 = -[_MPCPlayerRepeatCommand setRepeatType:](self, "setRepeatType:", [v16 integerValue]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)setRepeatType:(int64_t)type
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(_MPCPlayerRepeatCommand *)self supportsChangeRepeat])
  {
    v16 = *MEMORY[0x1E69B1208];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:MPRepeatTypeToMediaRemoteRepeatMode()];
    v17[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    response = [(_MPCPlayerCommand *)self response];
    v7 = [MPCPlayerCommandRequest alloc];
    controller = [response controller];
    request = [response request];
    label = [request label];
    v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:25 options:v5 controller:controller label:label];

    v14 = *MEMORY[0x1E69B0CE0];
    v15 = MEMORY[0x1E695E118];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(MPCPlayerCommandRequest *)v11 setUserInitiatedOptions:v12];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end