@interface _MPCPlayerShuffleCommand
- (id)advance;
- (id)setShuffleType:(int64_t)a3;
@end

@implementation _MPCPlayerShuffleCommand

- (id)advance
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([(_MPCPlayerShuffleCommand *)self supportsAdvanceShuffle])
  {
    v3 = [(_MPCPlayerCommand *)self response];
    v4 = [MPCPlayerCommandRequest alloc];
    v5 = [v3 controller];
    v6 = [v3 request];
    v7 = [v6 label];
    v8 = [(MPCPlayerCommandRequest *)v4 initWithMediaRemoteCommand:6 options:0 controller:v5 label:v7];

    v18 = *MEMORY[0x1E69B0CE8];
    v19[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [(MPCPlayerCommandRequest *)v8 setUserInitiatedOptions:v9];
  }

  else if ([(_MPCPlayerShuffleCommand *)self supportsChangeShuffle])
  {
    v10 = [(_MPCPlayerShuffleCommand *)self supportedShuffleTypes];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_MPCPlayerShuffleCommand currentShuffleType](self, "currentShuffleType")}];
    v12 = [v10 indexOfObject:v11];

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
    }

    else
    {
      v14 = [(_MPCPlayerShuffleCommand *)self supportedShuffleTypes];
      v13 = (v12 + 1) % [v14 count];
    }

    v15 = [(_MPCPlayerShuffleCommand *)self supportedShuffleTypes];
    v16 = [v15 objectAtIndexedSubscript:v13];

    v8 = -[_MPCPlayerShuffleCommand setShuffleType:](self, "setShuffleType:", [v16 integerValue]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)setShuffleType:(int64_t)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(_MPCPlayerShuffleCommand *)self supportsChangeShuffle])
  {
    v16 = *MEMORY[0x1E69B1230];
    v4 = [MEMORY[0x1E696AD98] numberWithInt:MPShuffleTypeToMediaRemoteShuffleMode()];
    v17[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

    v6 = [(_MPCPlayerCommand *)self response];
    v7 = [MPCPlayerCommandRequest alloc];
    v8 = [v6 controller];
    v9 = [v6 request];
    v10 = [v9 label];
    v11 = [(MPCPlayerCommandRequest *)v7 initWithMediaRemoteCommand:26 options:v5 controller:v8 label:v10];

    v14 = *MEMORY[0x1E69B0CE8];
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